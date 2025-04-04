#!/bin/bash

# Crea un file di log con timestamp
echo "[INFO] Backup iniziato alle: $(date '+%Y-%m-%d %H:%M:%S')" >> ~/backup_timestamp.txt

# Trova il nome del container PostgreSQL
POSTGRES_CONTAINER=$(docker ps --format '{{.Names}}' | grep -i postgres | head -1)

if [ -z "$POSTGRES_CONTAINER" ]; then
  echo "[ERRORE] Nessun container PostgreSQL trovato!" >&2
  exit 1
else
  echo "[INFO] Container PostgreSQL trovato: $POSTGRES_CONTAINER"
  echo "$POSTGRES_CONTAINER" > ~/postgres_container_name.txt
fi
