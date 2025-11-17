using Escursioni.Web.Data;
using Escursioni.Web.Services;
using Microsoft.EntityFrameworkCore;

var builder = WebApplication.CreateBuilder(args);

// Razor Pages
builder.Services.AddRazorPages();

// DbContext PostgreSQL
builder.Services.AddDbContext<EscursioniDbContext>(options =>
    options.UseNpgsql(builder.Configuration.GetConnectionString("DefaultConnection")));

// Servizi / repository (accesso DB solo tramite interfacce)
builder.Services.AddScoped<IHikeRepository, HikeRepository>();
builder.Services.AddScoped<ISearchService, SearchService>();
builder.Services.AddScoped<SeoService>();
builder.Services.AddSingleton<DatabaseBootstrapService>();

var app = builder.Build();

if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Error");
    app.UseHsts();
}
using (var scope = app.Services.CreateScope())
{
    var bootstrap = scope.ServiceProvider.GetRequiredService<DatabaseBootstrapService>();
    await bootstrap.RunAsync();
}

app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();
app.UseAuthorization();

app.MapRazorPages();

app.Run();
