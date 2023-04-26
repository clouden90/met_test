#!/bin/bash
set -eu

docker exec metviewer_1 /bin/bash -c 'mysql -hmysql_mv -uroot -pmvuser -e"create database mv_met_out;"'
docker exec metviewer_1 /bin/bash -c 'bash /data/create_db.sh'
