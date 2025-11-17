using Npgsql;

namespace Escursioni.Web.Services
{
    public class DatabaseBootstrapService
    {
        private readonly ILogger<DatabaseBootstrapService> _logger;
        private readonly IConfiguration _config;
        private readonly IWebHostEnvironment _env;

        public DatabaseBootstrapService(
            ILogger<DatabaseBootstrapService> logger,
            IConfiguration config,
            IWebHostEnvironment env)
        {
            _logger = logger;
            _config = config;
            _env = env;
        }

        public async Task RunAsync()
        {
            var connString = _config.GetConnectionString("DefaultConnection");

            await using var conn = new NpgsqlConnection(connString);
            await conn.OpenAsync();
            var ensureSchemaSql = "CREATE SCHEMA IF NOT EXISTS escursioni;";
            await using (var cmd = new NpgsqlCommand(ensureSchemaSql, conn))
                await cmd.ExecuteNonQueryAsync();
            // 1. Crea tabella di tracking migrazioni
            var ensureTable = """
        CREATE TABLE IF NOT EXISTS escursioni.migration_history (
            id SERIAL PRIMARY KEY,
            filename TEXT UNIQUE NOT NULL,
            applied_at TIMESTAMP DEFAULT NOW()
        );
        """;
            await using (var cmd = new NpgsqlCommand(ensureTable, conn))
                await cmd.ExecuteNonQueryAsync();

            // 2. Cartella migrazioni
            var migrationsDir = Path.Combine(_env.ContentRootPath, "Database/MigrationsRaw");
            if (!Directory.Exists(migrationsDir))
            {
                _logger.LogWarning("Cartella migrazioni non trovata: {dir}", migrationsDir);
                return;
            }

            var files = Directory.GetFiles(migrationsDir, "*.sql")
                                 .OrderBy(f => f, StringComparer.OrdinalIgnoreCase)
                                 .ToList();

            foreach (var file in files)
            {
                var filename = Path.GetFileName(file);

                // già applicata?
                var check = "SELECT 1 FROM escursioni.migration_history WHERE filename=@f LIMIT 1";
                await using (var cmd = new NpgsqlCommand(check, conn))
                {
                    cmd.Parameters.AddWithValue("f", filename);
                    var exists = await cmd.ExecuteScalarAsync();

                    if (exists != null)
                    {
                        _logger.LogInformation("Migrazione già applicata: {file}", filename);
                        continue;
                    }
                }

                _logger.LogInformation("Applico migrazione: {file}", filename);

                var sql = await File.ReadAllTextAsync(file);

                await using (var cmd = new NpgsqlCommand(sql, conn))
                    await cmd.ExecuteNonQueryAsync();

                // registra
                var insert = "INSERT INTO escursioni.migration_history(filename) VALUES(@f)";
                await using (var cmd = new NpgsqlCommand(insert, conn))
                {
                    cmd.Parameters.AddWithValue("f", filename);
                    await cmd.ExecuteNonQueryAsync();
                }
            }
        }
    }

}
