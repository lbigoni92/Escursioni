using Escursioni.Web.Models;
using Microsoft.EntityFrameworkCore;

namespace Escursioni.Web.Data;

public class EscursioniDbContext : DbContext
{
    public EscursioniDbContext(DbContextOptions<EscursioniDbContext> options) : base(options)
    {
    }

    public DbSet<Hike> Hikes => Set<Hike>();
    public DbSet<HikeMedia> HikeMedia => Set<HikeMedia>();
    public DbSet<HikeTag> HikeTags => Set<HikeTag>();
    public DbSet<HikeRegistry> HikeRegistry => Set<HikeRegistry>();

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.HasDefaultSchema("escursioni");

        modelBuilder.Entity<Hike>(entity =>
        {
            entity.ToTable("hike");
            entity.HasKey(h => h.Id);
            entity.Property(h => h.Id).HasColumnName("id");
            entity.Property(h => h.WikilocId).HasColumnName("wikiloc_id");
            entity.Property(h => h.Titolo).HasColumnName("titolo");
            entity.Property(h => h.Descrizione).HasColumnName("descrizione");
            entity.Property(h => h.DescrizioneHtml).HasColumnName("descrizione_html");
            entity.Property(h => h.Attivita).HasColumnName("attivita");
            entity.Property(h => h.DistanzaKm).HasColumnName("distanza_km");
            entity.Property(h => h.DislivelloM).HasColumnName("dislivello_m");
            entity.Property(h => h.QuotaMinM).HasColumnName("quota_min_m");
            entity.Property(h => h.QuotaMaxM).HasColumnName("quota_max_m");
            entity.Property(h => h.TempoMin).HasColumnName("tempo_min");
            entity.Property(h => h.TempoHHMM).HasColumnName("tempo_hhmm");
            entity.Property(h => h.TempoMovMin).HasColumnName("tempo_mov_min");
            entity.Property(h => h.TempoMovHHMM).HasColumnName("tempo_mov_hhmm");
            entity.Property(h => h.CoordinateCount).HasColumnName("coordinate_count");
            entity.Property(h => h.Difficolta).HasColumnName("difficolta");
            entity.Property(h => h.TipoGiro).HasColumnName("tipo_giro");
            entity.Property(h => h.Superficie).HasColumnName("superficie");
            entity.Property(h => h.Regione).HasColumnName("regione");
            entity.Property(h => h.Provincia).HasColumnName("provincia");
            entity.Property(h => h.Comune).HasColumnName("comune");
            entity.Property(h => h.DataEscursione).HasColumnName("data_escursione");
            entity.Property(h => h.DataRegistrato).HasColumnName("data_registrato");
            entity.Property(h => h.DataCaricato).HasColumnName("data_caricato");
            entity.Property(h => h.DataPubblicazione).HasColumnName("data_pubblicazione");
            entity.Property(h => h.Url).HasColumnName("url");
            entity.Property(h => h.Bbox).HasColumnName("bbox");
            entity.Property(h => h.CentroidLat).HasColumnName("centroid_lat");
            entity.Property(h => h.CentroidLon).HasColumnName("centroid_lon");
            entity.Property(h => h.GeomWkt).HasColumnName("geom");
            entity.Property(h => h.Sha256Payload).HasColumnName("sha256_payload");
            entity.Property(h => h.MetaDescrizione).HasColumnName("meta_descrizione");
            entity.Property(h => h.TitoloSeo).HasColumnName("titolo_seo");
            entity.Property(h => h.Tag).HasColumnName("tag");
            entity.Property(h => h.CreatedAt).HasColumnName("created_at");
            entity.Property(h => h.UpdatedAt).HasColumnName("updated_at");

            entity.HasIndex(h => h.Provincia).HasDatabaseName("idx_hike_provincia");
            entity.HasIndex(h => h.Regione).HasDatabaseName("idx_hike_regione");
            entity.HasIndex(h => h.DataEscursione).HasDatabaseName("idx_hike_dataesc");
        });

        modelBuilder.Entity<HikeMedia>(entity =>
        {
            entity.ToTable("hike_media");
            entity.HasKey(m => m.Id);
            entity.Property(m => m.Id).HasColumnName("id");
            entity.Property(m => m.HikeId).HasColumnName("hike_id");
            entity.Property(m => m.Tipo).HasColumnName("tipo");
            entity.Property(m => m.PathRelativo).HasColumnName("path_relativo");
            entity.Property(m => m.Ordine).HasColumnName("ordine");
            entity.Property(m => m.Larghezza).HasColumnName("larghezza");
            entity.Property(m => m.Altezza).HasColumnName("altezza");
            entity.Property(m => m.Sha256).HasColumnName("sha256");
            entity.Property(m => m.FilesizeBytes).HasColumnName("filesize_bytes");

            entity.HasOne(m => m.Hike)
                  .WithMany(h => h.Media)
                  .HasForeignKey(m => m.HikeId);
        });

        modelBuilder.Entity<HikeTag>(entity =>
        {
            entity.ToTable("hike_tags");
            entity.HasKey(t => t.Id);
            entity.Property(t => t.Id).HasColumnName("id");
            entity.Property(t => t.HikeId).HasColumnName("hike_id");
            entity.Property(t => t.Tag).HasColumnName("tag");

            entity.HasOne(t => t.Hike)
                  .WithMany(h => h.Tags)
                  .HasForeignKey(t => t.HikeId);
        });

        modelBuilder.Entity<HikeRegistry>(entity =>
        {
            entity.ToTable("hike_registry");
            entity.HasKey(r => r.WikilocId);
            entity.Property(r => r.WikilocId).HasColumnName("wikiloc_id");
            entity.Property(r => r.Url).HasColumnName("url");
            entity.Property(r => r.LastSeenAt).HasColumnName("last_seen_at");
            entity.Property(r => r.HashContenuti).HasColumnName("hash_contenuti");
        });
    }
}
