# Archive DB Initialization

## Overview
This repo contains scripts to create `mosip-archive` docker to initialize  the databases. Initialization includes creation of tables and populating essential default data.

## Build
1. Before building the docker create `repos` folder here.
    ```
    mkdir -p repos
    ```
1. Fetch all the repositories 
    ```
    ./get_db_data.sh <branch name>
    ```
1. To manually build docker
    1. Review/change `TAG` that you need to create in `docker_build.sh`.
    1. Run `docker_build.sh`

## Run SQL scripts from command line
1. Set the following environment variables (given with an example below): 
    * `MOSIP_DB_NAME`: This is the DB folder name from which scripts have to be executed. Eg. `mosip_archive`.
    * `DB_SERVERIP`: Host name/IP of archive postgres server.
    * `DB_PORT`: Default 5432.
    * `SU_USER`: Super user. Default `postgres`
    * `SU_USER_PWD`: Super user password.
    * `DEFAULT_DB_NAME`: Specify `postgres`.
    * `DBUSER_PWD`: This is passed to the SQL scripts to create DB user, like, `masteruser`.
    * `DML_FLAG`: Some databases may required default data to be populated using DMLs. Set this flag to `0` or `1`. 

1. Run the deploy script from inside `db_scripts` folder.
    ```
    cd repos/data-archive/data-archive/db_scripts
    cd ./mosip_archive_db_deploy.sh 
    ```

