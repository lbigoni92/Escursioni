#!/usr/bin/env node
/**
 * Genera thumbnail WebP per card e versioni ottimizzate per carousel.
 *
 * Utilizzo:
 *   node scripts/optimize-images.js            # genera solo i mancanti
 *   node scripts/optimize-images.js --force     # rigenera tutto
 *   node scripts/optimize-images.js --staged    # processa solo i file JPG/PNG in git staging area
 *
 * Output per ogni immagine sorgente (es. cover.jpg):
 *   cover.thumb.webp   – 400px wide, qualità 75 (per card)
 *   cover.gallery.webp – 800px wide, qualità 75 (per carousel)
 */

const fs = require('fs');
const path = require('path');
const { execSync } = require('child_process');
const sharp = require('sharp');

const IMAGES_DIR = process.env.IMAGES_DIR
    || path.resolve(__dirname, '..', 'Escursioni.Web', 'wwwroot', 'media', 'images');
const FORCE = process.argv.includes('--force');
const STAGED_ONLY = process.argv.includes('--staged');

/**
 * Ritorna la lista assoluta dei file JPG/PNG presenti nella staging area di git
 * che si trovano sotto IMAGES_DIR. Se non ce ne sono, ritorna [].
 */
function getStagedImagePaths() {
    try {
        const output = execSync('git diff --cached --name-only --diff-filter=ACM', {
            encoding: 'utf8',
            cwd: path.resolve(__dirname, '..'),
        });
        return output
            .split('\n')
            .map(f => f.trim())
            .filter(f => /\.(jpe?g|png)$/i.test(f))
            .map(f => path.resolve(__dirname, '..', f))
            .filter(f => f.startsWith(IMAGES_DIR + path.sep) || f.startsWith(IMAGES_DIR + '/'));
    } catch {
        return [];
    }
}

const VARIANTS = [
    { suffix: '.thumb.webp', width: 400, quality: 75 },
    { suffix: '.gallery.webp', width: 800, quality: 75 },
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
                .webp({ quality: variant.quality, effort: 6 })
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

    if (STAGED_ONLY) {
        const stagedImages = getStagedImagePaths();
        if (stagedImages.length === 0) {
            console.log('Nessuna immagine JPG/PNG in staging. Skip.');
            return;
        }
        console.log(`Trovate ${stagedImages.length} immagine/i staged.`);
        let totalGenerated = 0;
        let totalSkipped = 0;
        for (const imgPath of stagedImages) {
            const gen = await processImage(imgPath);
            totalGenerated += gen;
            totalSkipped += VARIANTS.length - gen;
        }
        console.log(`\nCompletato: ${totalGenerated} thumbnail generati, ${totalSkipped} già esistenti.`);
        return;
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
