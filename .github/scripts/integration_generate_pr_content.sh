#!/bin/bash
TITLE="$1"; BODY="$2"; FILES="$3"; BASE_SHA="$4"; HEAD_SHA="$5"
echo "PR Title: $TITLE"; echo "PR Body: $BODY"; echo "Changed files: $FILES"
git diff "$BASE_SHA" "$HEAD_SHA" -- apps/ > /tmp/pr_diff.txt 2>/dev/null || true
echo "Content generated."
