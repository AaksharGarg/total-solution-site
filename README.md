# Total Solution — landing site

Single-page, self-contained landing site for *Total Solution* (मेरे सपनों का भारत),
a free vision document by Swati Garg for a self-reliant, low-pollution city model.

- `site/index.html` — the whole live site (no build step, no framework)
- `site/total-solution.pdf` — the document itself (download + inline viewer)
- `site/cover.jpg`, `site/favicon.ico`, `site/favicon-192.png`,
  `site/apple-touch-icon.png` — assets cropped/generated from the PDF's own
  cover page
- `down/` — a minimal "temporarily offline" page, same brand, used to take
  the site down without deleting anything
- `scripts/takedown.sh` / `scripts/bringup.sh` — swap the live deployment
  between `down/` and `site/`

## Deploy

Static site, deployed as-is to Cloudflare Pages:

    npx wrangler pages deploy site --project-name=totalsolutionindia

## Taking the site down / back up

Cloudflare Pages has no built-in on/off switch — "down" here means the
production deployment is swapped for `down/`'s minimal offline page, and
"up" means it's swapped back to `site/`. Nothing is deleted either way;
every past deployment stays in the project's history and can be promoted
back from the Cloudflare dashboard too.

    ./scripts/takedown.sh   # site shows "temporarily offline"
    ./scripts/bringup.sh    # site is back, unchanged
