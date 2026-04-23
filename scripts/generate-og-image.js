const sharp = require('sharp');
const path = require('path');

const WIDTH = 1200;
const HEIGHT = 630;

// Create an OG image with a mountain-themed gradient and text overlay using SVG
async function generateOgImage() {
    const svg = `
    <svg width="${WIDTH}" height="${HEIGHT}" xmlns="http://www.w3.org/2000/svg">
        <defs>
            <linearGradient id="bg" x1="0%" y1="0%" x2="0%" y2="100%">
                <stop offset="0%" style="stop-color:#0f172a;stop-opacity:1" />
                <stop offset="100%" style="stop-color:#1e3a5f;stop-opacity:1" />
            </linearGradient>
            <linearGradient id="mountain1" x1="0%" y1="0%" x2="0%" y2="100%">
                <stop offset="0%" style="stop-color:#334155;stop-opacity:1" />
                <stop offset="100%" style="stop-color:#1e293b;stop-opacity:1" />
            </linearGradient>
            <linearGradient id="mountain2" x1="0%" y1="0%" x2="0%" y2="100%">
                <stop offset="0%" style="stop-color:#475569;stop-opacity:0.7" />
                <stop offset="100%" style="stop-color:#334155;stop-opacity:0.7" />
            </linearGradient>
        </defs>

        <!-- Background -->
        <rect width="${WIDTH}" height="${HEIGHT}" fill="url(#bg)" />

        <!-- Mountains background layer -->
        <polygon points="0,450 200,280 400,380 600,250 800,350 1000,220 1200,320 1200,630 0,630" fill="url(#mountain2)" />

        <!-- Mountains foreground layer -->
        <polygon points="0,500 150,350 350,430 500,300 700,400 900,280 1100,380 1200,350 1200,630 0,630" fill="url(#mountain1)" />

        <!-- Trail/path line -->
        <path d="M 100,520 Q 300,480 500,500 T 900,460 T 1150,490" stroke="#93c5fd" stroke-width="3" fill="none" opacity="0.5" stroke-dasharray="8,6" />

        <!-- Sun/moon circle -->
        <circle cx="950" cy="150" r="50" fill="#93c5fd" opacity="0.15" />
        <circle cx="950" cy="150" r="35" fill="#93c5fd" opacity="0.1" />

        <!-- Title text -->
        <text x="80" y="200" font-family="system-ui, -apple-system, 'Segoe UI', sans-serif" font-size="52" font-weight="700" fill="#e2e8f0" letter-spacing="-1">
            Escursioni Luca Bigoni
        </text>

        <!-- Subtitle -->
        <text x="80" y="260" font-family="system-ui, -apple-system, 'Segoe UI', sans-serif" font-size="28" fill="#93c5fd" font-weight="500">
            Trekking e sentieri in Toscana
        </text>

        <!-- Description line -->
        <text x="80" y="310" font-family="system-ui, -apple-system, 'Segoe UI', sans-serif" font-size="20" fill="#94a3b8">
            Alpi Apuane · Garfagnana · Versilia · Appennino
        </text>

        <!-- Bottom accent line -->
        <rect x="80" y="570" width="200" height="4" rx="2" fill="#93c5fd" opacity="0.6" />

        <!-- Website URL -->
        <text x="80" y="600" font-family="system-ui, -apple-system, 'Segoe UI', sans-serif" font-size="16" fill="#64748b">
            escursionilucabigoni.it
        </text>
    </svg>`;

    const outputDir = path.join(__dirname, '..', 'Escursioni.Web', 'wwwroot', 'images');
    const outputPath = path.join(outputDir, 'og-home.jpg');

    // Ensure directory exists
    const fs = require('fs');
    if (!fs.existsSync(outputDir)) {
        fs.mkdirSync(outputDir, { recursive: true });
    }

    await sharp(Buffer.from(svg))
        .jpeg({ quality: 90 })
        .toFile(outputPath);

    console.log(`OG image generated: ${outputPath} (${WIDTH}x${HEIGHT})`);
}

generateOgImage().catch(console.error);
