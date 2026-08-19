# Total Solution — landing site

Single-page, self-contained landing site for *Total Solution* (मेरे सपनों का भारत),
a free vision document by Swati Garg for a self-reliant, low-pollution city model.

- `index.html` — the whole site (no build step, no framework)
- `total-solution.pdf` — the document itself (download + inline viewer)
- `cover.jpg`, `favicon.ico`, `favicon-192.png`, `apple-touch-icon.png` — assets
  cropped/generated from the PDF's own cover page

## Deploy

Static site, deployed as-is to Cloudflare Pages:

    npx wrangler pages deploy . --project-name=totalsolutionindia
