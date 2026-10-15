#!/usr/bin/env bash
# ==============================================================================
# Odoo LATAM Knowledge Hub — Linux Quick Launcher
# ==============================================================================
set -e

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$DIR"

echo "=========================================================="
echo "  🌟 Odoo LATAM & Mexico Knowledge Hub — Linux Launcher"
echo "=========================================================="
echo ""

# Try opening directly in default desktop browser
if command -v xdg-open >/dev/null 2>&1; then
    echo "Opening index.html in your default web browser (xdg-open)..."
    xdg-open "index.html" >/dev/null 2>&1 &
    exit 0
fi

# Fallback: Google Chrome
if command -v google-chrome >/dev/null 2>&1; then
    echo "Opening in Google Chrome..."
    google-chrome "index.html" >/dev/null 2>&1 &
    exit 0
fi

# Fallback: Firefox
if command -v firefox >/dev/null 2>&1; then
    echo "Opening in Firefox..."
    firefox "index.html" >/dev/null 2>&1 &
    exit 0
fi

# Fallback: Python HTTP server
if command -v python3 >/dev/null 2>&1; then
    PORT=8080
    echo "No desktop opener found. Starting local HTTP server on http://localhost:$PORT ..."
    echo "Press Ctrl+C to stop the server."
    python3 -m http.server "$PORT"
    exit 0
fi

echo "Please open '$DIR/index.html' in your preferred web browser."
