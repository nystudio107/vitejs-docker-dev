#!/bin/sh
if [ ! -d "$VITE_DIR" ]; then
    git clone $VITE_REPO
fi
cd /app/$VITE_DIR/packages/vite
pnpm install
cd /app/$APP_DIR
pnpm install
