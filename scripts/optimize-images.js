#!/usr/bin/env node
/**
 * Genera thumbnail WebP per card e versioni ottimizzate per carousel.
 *
 * Utilizzo:
 *   node scripts/optimize-images.js            # genera solo i mancanti
 *   node scripts/optimize-images.js --force     # rigenera tutto
 *
 * Output per ogni immagine sorgente (es. cover.jpg):
 *   cover.thumb.webp   – 400px wide, qualità 80 (per card)
 *   cover.gallery.webp – 800px wide, qualità 82 (per carousel)
 */

const fs = require('fs');
const path = require('path');
const sharp = require('sharp');

const IMAGES_DIR = process.env.IMAGES_DIR
    || path.resolve(__dirname, '..', 'Escursioni.Web', 'wwwroot', 'media', 'images');
const FORCE = process.argv.includes('--force');

const VARIANTS = [
    { suffix: '.thumb.webp', width: 400, quality: 80 },
    { suffix: '.gallery.webp', width: 800, quality: 82 },
];

async function processImage(filePath) {
    const dir = path.dirname(filePath);
    const base = path.basename(filePath, path.extname(filePath));
    let generated = 0;

    for (const variant of VARIANTS) {
        const outPath = path.join(dir, base + variant.suffix);
        if (!FORCE && fs.existsSync(outPath)) continue;

        try {
            await sharp(filePath)
                .resize({ width: variant.width, withoutEnlargement: true })
                .webp({ quality: variant.quality })
                .toFile(outPath);
            generated++;
        } catch (err) {
            console.error(`  ERRORE ${path.relative(IMAGES_DIR, outPath)}: ${err.message}`);
        }
    }
    return generated;
}

async function main() {
    if (!fs.existsSync(IMAGES_DIR)) {
        console.error('Directory immagini non trovata:', IMAGES_DIR);
        process.exit(1);
    }

    const folders = fs.readdirSync(IMAGES_DIR, { withFileTypes: true })
        .filter(d => d.isDirectory())
        .map(d => d.name);

    console.log(`Trovate ${folders.length} cartelle escursioni.`);
    let totalGenerated = 0;
    let totalSkipped = 0;
    let processed = 0;

    for (const folder of folders) {
        const folderPath = path.join(IMAGES_DIR, folder);
        const images = fs.readdirSync(folderPath)
            .filter(f => /\.(jpe?g|png)$/i.test(f) && !/\.(thumb|gallery)\.webp$/i.test(f));

        for (const img of images) {
            const gen = await processImage(path.join(folderPath, img));
            totalGenerated += gen;
            totalSkipped += VARIANTS.length - gen;
        }

        processed++;
        if (processed % 50 === 0) {
            console.log(`  ${processed}/${folders.length} cartelle...`);
        }
    }

    console.log(`\nCompletato: ${totalGenerated} thumbnail generati, ${totalSkipped} già esistenti.`);
}

main().catch(err => {
    console.error(err);
    process.exit(1);
});
