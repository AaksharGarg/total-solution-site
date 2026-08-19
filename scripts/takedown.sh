#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
echo "[$(date)] Taking totalsolutionindia.pages.dev down..."
npx wrangler pages deploy down --project-name=totalsolutionindia --branch=main --commit-dirty=true
echo "[$(date)] Down deployment complete."
