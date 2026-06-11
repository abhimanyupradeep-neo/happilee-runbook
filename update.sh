#!/bin/bash
set -e
SRC="/Users/neo/Downloads/ProductTraining Sessions/_synthesis/trainer-runbook.html"
cd "$(dirname "$0")"
cp "$SRC" index.html
git add -A
git commit -m "Update runbook $(date +%Y-%m-%d_%H:%M)" || { echo "no changes"; exit 0; }
git push
echo "✅ pushed — live site updates in ~30s"
