#!/bin/sh
# entrypoint.sh

echo "Executing script"
cd mosip_archive

# Print the environment variables for debugging
env

# Execute the deployment script with the properties file
./mosip_archive_db_deploy.sh "$DB_SERVERIP" "$DB_PORT" "$SU_USER" "$DEFAULT_DB_NAME" "$MOSIP_DB_NAME" "$SYSADMIN_USER" "$BASEPATH" "$LOG_PATH" "$COMMON_ROLE_FILENAME" "$APP_ROLE_FILENAME" "$DB_CREATION_FILENAME" "$ACCESS_GRANT_FILENAME" "$DDL_FILENAME" "$DML_FLAG" "$DML_FILENAME"
echo "Executed successfully"
