#!/usr/bin/env bash
set -euo pipefail

missing=0
for key in IMAGE_API_KEY IMAGE_API_BASE_URL VIDEO_API_KEY VIDEO_API_BASE_URL PUBLIC_ASSET_BASE_URL; do
  if [ -z "${!key:-}" ]; then
    echo "MISSING: $key"
    missing=1
  else
    echo "OK: $key"
  fi
done

if [ "$missing" -ne 0 ]; then
  echo "Environment is incomplete for creative media generation."
  exit 1
fi

echo "Environment looks minimally ready."
