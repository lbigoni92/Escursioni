namespace Escursioni.MigrationEditor.Services;

/// <summary>
/// Represents a parsed migration SQL file with its hike data.
/// </summary>
public class MigrationFile
{
    public string FileName { get; set; } = string.Empty;
    public string FullPath { get; set; } = string.Empty;

    // Hike fields extracted from the INSERT INTO escursioni.hike VALUES(...)
    public Dictionary<string, string?> HikeValues { get; set; } = new();

    // Media rows: each is a dict of column -> value
    public List<Dictionary<string, string?>> MediaRows { get; set; } = new();

    // Tags
    public List<string> Tags { get; set; } = new();

    // Raw SQL (for display / fallback)
    public string RawSql { get; set; } = string.Empty;
}
