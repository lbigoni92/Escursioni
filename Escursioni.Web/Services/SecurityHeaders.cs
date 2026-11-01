namespace Escursioni.Web.Services;

/// <summary>
/// Header di sicurezza di ogni risposta: li manda il server (Program.cs) e finiscono
/// nel file _headers del sito statico (StaticSiteExporter), così restano uguali.
/// </summary>
public static class SecurityHeaders
{
    public static readonly IReadOnlyList<KeyValuePair<string, string>> All =
    [
        new("X-Content-Type-Options", "nosniff"),
        new("X-Frame-Options", "SAMEORIGIN"),
        new("Referrer-Policy", "strict-origin-when-cross-origin"),
        new("Permissions-Policy", "camera=(), microphone=(), geolocation=(), payment=()"),
    ];

    /// <summary>Strict-Transport-Security: sul server lo aggiunge UseHsts, solo alle richieste HTTPS.</summary>
    public static readonly TimeSpan HstsMaxAge = TimeSpan.FromDays(365);
}
