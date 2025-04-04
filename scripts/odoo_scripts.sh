#!/bin/bash
set -euo pipefail

# Definisci il percorso della cartella
SCRIPT_DIR="$HOME/odoo_scripts"

# Verifica se la cartella esiste
if [ ! -d "$SCRIPT_DIR" ]; then
  # Crea la cartella con permessi 700
  mkdir -p "$SCRIPT_DIR"
  chmod 700 "$SCRIPT_DIR"
  echo "Cartella $SCRIPT_DIR creata con successo."
else
  echo "La cartella $SCRIPT_DIR esiste già."
fi
