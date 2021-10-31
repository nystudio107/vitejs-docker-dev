#!/bin/sh
if [ ! -d "$VITE_DIR" ]; then
    git clone $VITE_REPO
fi
cd $VITE_DIR/packages/vite
pnpm install
cd /app
pnpm install
