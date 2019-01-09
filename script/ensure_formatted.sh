#!/bin/sh

if command -v rubocop > /dev/null; then
    git status --porcelain \
    | grep -E '^A|^M' \
    | grep '.rb' \
    | awk '{print $2}' \
    | xargs rubocop
fi
