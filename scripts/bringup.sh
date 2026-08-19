#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
echo "[$(date)] Bringing totalsolutionindia.pages.dev back up..."
npx wrangler pages deploy site --project-name=totalsolutionindia --branch=main --commit-dirty=true
echo "[$(date)] Live deployment restored."
