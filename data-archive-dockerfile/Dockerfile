FROM postgres

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y apt-utils && apt-get install -y curl
RUN apt-get install -y python3
RUN apt-get install -y python3-pip
RUN apt-get install -y python3-xlrd


WORKDIR /home/mosip

RUN mkdir -p madmin/database madmin/logs

WORKDIR /home/mosip/madmin/database

COPY ./repos/data-archive/data-archive/db_scripts .

COPY entrypoint.sh .

RUN chmod +x *.sh

ENV MOSIP_DB_NAME=
ENV DB_SERVERIP=
ENV DB_PORT=
ENV SU_USER=postgres
ENV SU_USER_PWD=
ENV DEFAULT_DB_NAME=postgres
ENV DBUSER_PWD=
ENV COMMON_ROLE_FILENAME=
ENV APP_ROLE_FILENAME=
ENV DB_CREATION_FILENAME=
ENV ACCESS_GRANT_FILENAME=
ENV DDL_FILENAME=
ENV DML_FLAG=
ENV DML_FILENAME=

ENTRYPOINT ["./entrypoint.sh"]
