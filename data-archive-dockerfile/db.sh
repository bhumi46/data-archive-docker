#!/bin/sh
# entrypoint.sh

echo "Executing dbscript"
cd db_scripts/mosip_archive
chmod +x mosip_archive_db_deploy.sh
# Execute the deployment script with the properties file
./mosip_archive_db_deploy.sh mosip_archive_deploy.properties "$DB_SERVERIP" "$DB_PORT" "$SU_USER" "$DEFAULT_DB_NAME" "$MOSIP_DB_NAME" "$SYSADMIN_USER" "$BASEPATH" "$LOG_PATH" "$COMMON_ROLE_FILENAME" "$APP_ROLE_FILENAME" "$DB_CREATION_FILENAME" "$ACCESS_GRANT_FILENAME" "$DDL_FILENAME" "$DML_FLAG" "$DML_FILENAME"
echo "Executed successfully"

