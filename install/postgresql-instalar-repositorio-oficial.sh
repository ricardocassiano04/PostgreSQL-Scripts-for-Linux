#!/bin/bash
#
# Instala o PostgreSQL e o PgAdmin (desktop) no Debian Gnu/Linux 11
# a partir do repositório oficial.
#
# Autor: Ricardo Cassiano
#

echo '
Instala o PostgreSQL e o PgAdminno Debian Gnu/Linux 11
a partir do repositório oficial.

PostgreSQL
Baseado em https://www.postgresql.org/download/linux/debian/ (para Debian)
e em https://www.postgresql.org/download/linux/ubuntu/ (pata Ubuntu)

PgAdmin

https://www.pgadmin.org/download/pgadmin-4-apt/


Você pode modificá-lo de acordo com as duas necessidades.

'

sleep 2

sudo apt-get -y install curl wget

sudo sh -c 'echo "deb [arch=amd64] http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'

sudo sh -c 'echo "deb https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list'

wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

curl https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo apt-key add


sudo apt-get update

sudo apt-get -y install pgadmin4-desktop postgresql postgresql-doc postgresql-contrib


sudo systemctl disable postgresql


sudo systemctl stop postgresql

echo "instalacao terminada"
