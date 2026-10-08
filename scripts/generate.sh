#!/usr/bin/env bash
# Genera el personaje MK Oduya con Tripo CLI.
# Requisito previo: npx tripo-cli@latest login --region ov --yes
set -euo pipefail

PROMPT="$(cat "$(dirname "$0")/../prompts/text-to-3d.txt")"
OUT_DIR="$(cd "$(dirname "$0")/.." && pwd)/assets"
mkdir -p "$OUT_DIR"

# Modelo base con texturas PBR (v3.1, ~20 creditos, salida GLB)
npx tripo-cli@latest make "$PROMPT" \
  -p pbr=true -p texture_quality=standard \
  -o "$OUT_DIR" --json --yes

# --- Pasos opcionales (descomentar segun necesidad) ---
# Rig bípedo + animaciones de influencer (walk, greet, dance):
# npx tripo-cli@latest make @last --then rig-check,rig:model=rig-v1.0 --json --yes -o "$OUT_DIR"
# npx tripo-cli@latest anim retarget --animation preset:biped:walk preset:biped:greet_01 preset:biped:dance_01

# Conversion a FBX (Unity/Unreal):
# npx tripo-cli@latest make @last --then convert:fbx --json --yes -o "$OUT_DIR"

echo "Listo. Archivos en $OUT_DIR/tripo-out/"
