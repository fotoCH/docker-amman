#!/bin/bash

SERVER="foto-ch.ch"
REMOTE_USER="root"
MYSQL_DB="amman"
WWW_ROOT="/var/www/amman.fotobe.ch"


RDIR=" $( cd "$( dirname $(dirname "${BASH_SOURCE[0]}" ))" && pwd )"

# fetch db
ssh -l ${REMOTE_USER} ${SERVER} \
  mysqldump --databases ${MYSQL_DB} > ${RDIR}/source/db_import/${MYSQL_DB}.sql

# fetch webfiles
rsync -avz ${REMOTE_USER}@${SERVER}:${WWW_ROOT}/ ${RDIR}/source/web
