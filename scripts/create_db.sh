#!/bin/bash
set -eu

cp /data/mv_mysql.sql /METviewer/sql
mysql -hmysql_mv -uroot -pmvuser -e"create database mv_met_out;" || true
mysql -hmysql_mv -uroot -pmvuser mv_met_out < /METviewer/sql/mv_mysql.sql

chmod +x /METviewer/bin/mv_load.sh
/METviewer/bin/mv_load.sh /data/load_met_out.xml
