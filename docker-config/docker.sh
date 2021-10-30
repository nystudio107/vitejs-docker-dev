#!/bin/sh
if [ ! -d "$VITE_DIR" ]; then
    git clone $VITE_REPO
fi
cd $VITE_DIR
pnpm install
pnpm run build
cd /app
pnpm install
