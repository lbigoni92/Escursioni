using Escursioni.Web.Services;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.FileProviders;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging.Abstractions;
using SixLabors.ImageSharp;
using SixLabors.ImageSharp.PixelFormats;
using System;
using System.Collections.Generic;
using System.IO;
using System.Threading;
using System.Threading.Tasks;
using Xunit;

namespace Escursioni.Tests;

public class ImagePrewarmServiceTests
{
    [Fact]
    public async Task Prewarm_GeneratesVariants_OnStartup_WhenEnabled()
    {
        var root = CreateTempWebRoot();
        try
        {
            var source = CreateSourceImage(root);
            var config = BuildConfig(new Dictionary<string, string>
            {
                ["Images:Prewarm:Enabled"] = "true",
                ["Images:Prewarm:StartupDelaySeconds"] = "0",
                ["Images:Prewarm:MaxWorkers"] = "1"
            });

            var env = CreateEnvironment(root);
            var generator = new ImageVariantGenerator();
            var service = new ImagePrewarmService(env, generator, NullLogger<ImagePrewarmService>.Instance, config);

            await service.StartAsync(CancellationToken.None);

            var thumb = ImageHelper.ThumbPath(source);
            var gallery = ImageHelper.GalleryPath(source);
            var completed = await WaitUntilAsync(() => File.Exists(thumb) && File.Exists(gallery), TimeSpan.FromSeconds(6));

            await service.StopAsync(CancellationToken.None);

            Assert.True(completed, "Le varianti WebP non sono state generate all'avvio entro il timeout previsto.");
        }
        finally
        {
            SafeDelete(root);
        }
    }

    [Fact]
    public async Task Prewarm_DoesNotGenerateVariants_WhenDisabledByConfig()
    {
        var root = CreateTempWebRoot();
        try
        {
            var source = CreateSourceImage(root);
            var config = BuildConfig(new Dictionary<string, string>
            {
                ["Images:Prewarm:Enabled"] = "false",
                ["Images:Prewarm:StartupDelaySeconds"] = "0",
                ["Images:Prewarm:MaxWorkers"] = "1"
            });

            var env = CreateEnvironment(root);
            var generator = new ImageVariantGenerator();
            var service = new ImagePrewarmService(env, generator, NullLogger<ImagePrewarmService>.Instance, config);

            await service.StartAsync(CancellationToken.None);
            await Task.Delay(600);
            await service.StopAsync(CancellationToken.None);

            Assert.False(File.Exists(ImageHelper.ThumbPath(source)));
            Assert.False(File.Exists(ImageHelper.GalleryPath(source)));
        }
        finally
        {
            SafeDelete(root);
        }
    }

    private static IConfiguration BuildConfig(IDictionary<string, string> values)
    {
        return new ConfigurationBuilder().AddInMemoryCollection(values).Build();
    }

    private static IWebHostEnvironment CreateEnvironment(string webRoot)
    {
        return new TestWebHostEnvironment
        {
            ApplicationName = "Escursioni.Tests",
            EnvironmentName = Environments.Development,
            ContentRootPath = webRoot,
            ContentRootFileProvider = new PhysicalFileProvider(webRoot),
            WebRootPath = webRoot,
            WebRootFileProvider = new PhysicalFileProvider(webRoot)
        };
    }

    private static string CreateTempWebRoot()
    {
        var root = Path.Combine(Path.GetTempPath(), "escursioni-prewarm-tests", Guid.NewGuid().ToString("N"));
        Directory.CreateDirectory(root);
        return root;
    }

    private static string CreateSourceImage(string webRoot)
    {
        var imagesDir = Path.Combine(webRoot, "media", "images");
        Directory.CreateDirectory(imagesDir);

        var sourcePath = Path.Combine(imagesDir, "sample.jpg");
        using var image = new Image<Rgba32>(10, 10);
        image.SaveAsJpeg(sourcePath);

        return sourcePath;
    }

    private static async Task<bool> WaitUntilAsync(Func<bool> condition, TimeSpan timeout)
    {
        var start = DateTime.UtcNow;
        while (DateTime.UtcNow - start < timeout)
        {
            if (condition())
                return true;

            await Task.Delay(100);
        }

        return condition();
    }

    private static void SafeDelete(string path)
    {
        try
        {
            if (Directory.Exists(path))
                Directory.Delete(path, recursive: true);
        }
        catch
        {
            // Cleanup best-effort for temp folders used in tests.
        }
    }

    private sealed class TestWebHostEnvironment : IWebHostEnvironment
    {
        public string EnvironmentName { get; set; } = string.Empty;
        public string ApplicationName { get; set; } = string.Empty;
        public string ContentRootPath { get; set; } = string.Empty;
        public IFileProvider ContentRootFileProvider { get; set; } = new NullFileProvider();
        public string WebRootPath { get; set; } = string.Empty;
        public IFileProvider WebRootFileProvider { get; set; } = new NullFileProvider();
    }
}
