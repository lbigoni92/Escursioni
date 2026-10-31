using Escursioni.Web.Services;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc.Testing;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Net.Http;
using Xunit;

namespace Escursioni.Tests;

/// <summary>
/// Il sito vero (dati reali di Data/hikes) in memoria, condiviso tra i test della collection "Site".
/// Stessa configurazione dell'export statico: ambiente Production, nessun prewarm delle immagini.
/// </summary>
public sealed class SiteFactory : WebApplicationFactory<Program>
{
    protected override void ConfigureWebHost(IWebHostBuilder builder)
    {
        builder.UseEnvironment("Production");
        builder.UseSetting("Images:Prewarm:Enabled", "false");
    }

    public HikeRepository Repository => Services.GetRequiredService<HikeRepository>();

    /// <summary>Client che non segue i redirect, per poterli verificare.</summary>
    public HttpClient CreateNoRedirectClient()
        => CreateClient(new WebApplicationFactoryClientOptions { AllowAutoRedirect = false, BaseAddress = new Uri("https://escursionilucabigoni.it") });
}

[CollectionDefinition("Site")]
public sealed class SiteCollection : ICollectionFixture<SiteFactory>;
