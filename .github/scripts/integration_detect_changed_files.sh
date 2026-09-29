#!/bin/bash
BASE_SHA="$1"; HEAD_SHA="$2"
if [[ -z "$BASE_SHA" || -z "$HEAD_SHA" ]]; then echo "skip=true"; exit 0; fi
CHANGED=$(git diff --name-only "$BASE_SHA" "$HEAD_SHA" -- 'apps/' 2>/dev/null || echo "")
if [[ -z "$CHANGED" ]]; then echo "skip=true"; else echo "skip=false"; echo "changed_files<<EOF"; echo "$CHANGED"; echo "EOF"; fi
