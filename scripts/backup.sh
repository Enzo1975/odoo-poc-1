!/bin/bash

set -e 

mkdir -p -p ~/odoo_backups

TIMESTAMP=$(date +%Y%m%d_%H%M%S)
BACKUP_FILE="odoo_backup_${TIMESTAMP}.sql.gz"

touch ~/odoo_backups/$BACKUP_FILE
echo "Creato: ~/odoo_backups/$BACKUP_FILE"