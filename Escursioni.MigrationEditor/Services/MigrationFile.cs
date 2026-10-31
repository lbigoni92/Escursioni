namespace Escursioni.MigrationEditor.Services;

/// <summary>
/// Un file Data/hikes/{wikiloc_id}.json con i dati di una escursione.
/// </summary>
public class MigrationFile
{
    public string FileName { get; set; } = string.Empty;
    public string FullPath { get; set; } = string.Empty;

    // Campi escursione (chiavi = nomi snake_case del JSON)
    public Dictionary<string, string?> HikeValues { get; set; } = new();

    // Media: ogni riga è un dizionario colonna -> valore
    public List<Dictionary<string, string?>> MediaRows { get; set; } = new();

    // JSON originale del file (per anteprima)
    public string RawJson { get; set; } = string.Empty;
}
