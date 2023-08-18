FROM postgres

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y apt-utils && apt-get install -y curl
RUN apt-get install -y python3
RUN apt-get install -y python3-pip
RUN apt-get install -y python3-xlrd
RUN apt-get install -y python3.11-venv

COPY requirements.txt .

RUN python3 -m venv /venv
# Activate the virtual environment
ENV PATH="/venv/bin:$PATH"

# Upgrade pip
RUN pip3 install --upgrade pip

RUN pip3 install -r requirements.txt

WORKDIR /home/mosip

RUN mkdir -p madmin/database madmin/logs

WORKDIR /home/mosip/madmin/database

COPY ./repos/data-archive/data-archive/ .

COPY *.sh ./

RUN chmod +x *.sh

ENV POSTGRES_USER=
ENV POSTGRES_PASSWORD=
ENV MOSIP_DB_NAME=
ENV DB_SERVERIP=
ENV DB_PORT=
ENV source_db_serverip= 
ENV source_db_port=
ENV archive_db_serverip=
ENV archive_db_port=

ENTRYPOINT ["./entrypoint.sh"]
