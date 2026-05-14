using Npgsql;
using System.Net.Security;
using System.Net.Sockets;
using System.Security.Cryptography.X509Certificates;

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
            _logger.LogInformation("[DB] === Inizio DatabaseBootstrapService ===");

            // 1. Lettura connection string
            var rawConnString = _config.GetConnectionString("DefaultConnection");
            _logger.LogInformation("[DB] Connection string raw (null={IsNull}, length={Len})",
                rawConnString == null, rawConnString?.Length ?? 0);

            var connString = rawConnString?.Trim('"', ' ');
            var csb = new NpgsqlConnectionStringBuilder(connString)
            {
                SslMode = SslMode.Require
            };

            _logger.LogInformation("[DB] Parametri connessione:");
            _logger.LogInformation("[DB]   Host: {Host}", csb.Host);
            _logger.LogInformation("[DB]   Port: {Port}", csb.Port);
            _logger.LogInformation("[DB]   Database: {Db}", csb.Database);
            _logger.LogInformation("[DB]   Username: {User}", csb.Username);
            _logger.LogInformation("[DB]   SslMode: {Ssl}", csb.SslMode);
            _logger.LogInformation("[DB]   Timeout: {Timeout}s", csb.Timeout);

            // 2. Test DNS
            try
            {
                _logger.LogInformation("[DB] Risoluzione DNS per {Host}...", csb.Host);
                var addresses = await System.Net.Dns.GetHostAddressesAsync(csb.Host!);
                _logger.LogInformation("[DB] DNS OK - IP: {Ips}", string.Join(", ", addresses.Select(a => a.ToString())));
            }
            catch (Exception dnsEx)
            {
                _logger.LogError(dnsEx, "[DB] DNS FALLITO per {Host}", csb.Host);
                throw;
            }

            // 3. Test TCP
            try
            {
                _logger.LogInformation("[DB] Test TCP verso {Host}:{Port}...", csb.Host, csb.Port);
                using var tcp = new TcpClient();
                await tcp.ConnectAsync(csb.Host!, csb.Port);
                _logger.LogInformation("[DB] TCP OK - connessione stabilita");
                tcp.Close();
            }
            catch (Exception tcpEx)
            {
                _logger.LogError(tcpEx, "[DB] TCP FALLITO verso {Host}:{Port}", csb.Host, csb.Port);
                throw;
            }

            // 4. Connessione Npgsql via DataSourceBuilder (Npgsql 10)
            try
            {
                var dsBuilder = new NpgsqlDataSourceBuilder(csb.ConnectionString);
                // Accetta qualsiasi certificato server (Render usa cert interni)
                dsBuilder.UseSslClientAuthenticationOptionsCallback(options =>
                {
                    options.RemoteCertificateValidationCallback = (sender, cert, chain, errors) =>
                    {
                        _logger.LogInformation("[DB] SSL callback - Errors: {Errors}, Cert: {Cert}",
                            errors, cert?.Subject ?? "(nessuno)");
                        return true;
                    };
                });

                await using var dataSource = dsBuilder.Build();
                _logger.LogInformation("[DB] DataSource creato, apertura connessione...");
                await using var conn = await dataSource.OpenConnectionAsync();
                _logger.LogInformation("[DB] Connessione Npgsql OK! ServerVersion={Ver}", conn.ServerVersion);
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
            catch (NpgsqlException ex)
            {
                _logger.LogError("[DB] === ERRORE NPGSQL ===");
                _logger.LogError("[DB] Messaggio: {Msg}", ex.Message);
                _logger.LogError("[DB] InnerException: {Inner}", ex.InnerException?.Message);
                _logger.LogError("[DB] InnerInner: {InnerInner}", ex.InnerException?.InnerException?.Message);
                _logger.LogError("[DB] SqlState: {State}", ex.SqlState);
                _logger.LogError("[DB] IsTransient: {Trans}", ex.IsTransient);
                _logger.LogError(ex, "[DB] StackTrace completo");
                throw;
            }
            catch (Exception ex)
            {
                _logger.LogError("[DB] === ERRORE GENERICO ===");
                _logger.LogError("[DB] Tipo: {Type}", ex.GetType().FullName);
                _logger.LogError("[DB] Messaggio: {Msg}", ex.Message);
                _logger.LogError(ex, "[DB] StackTrace completo");
                throw;
            }
        }
    }

}
