#!/bin/bash

COMMAND=1

add_node() {

  sudo apt update && sudo apt upgrade -y;

  sudo bash -c "$(curl -sL https://github.com/Gozargah/Marzban-scripts/raw/master/marzban.sh)" @ install;

  marzban down;
#
#  rm -r opt/marzban;
#  mkdir opt/marzban;
#
#  rm -r var/lib/marzban/certs;
#  rm var/lib/marzban/xray_config.json;
#  rm var/lib/marzban/db.sqlite3;
#
#  mkdir var/lib/marzban/certs;
#
#  curl -o opt/marzban/.env https://github.com/Ali-Hashemi/My-Marzban-Script/blob/main/myblog-backup/opt/.env;
#
#  curl -o opt/marzban/docker-compose.yml https://github.com/Ali-Hashemi/My-Marzban-Script/blob/main/myblog-backup/opt/docker-compose.yml;
#
#  curl -o var/lib/marzban/db.sqlite3 https://github.com/Ali-Hashemi/My-Marzban-Script/blob/main/myblog-backup/var/db.sqlite3;
#
#  curl -o var/lib/marzban/xray_config.json https://github.com/Ali-Hashemi/My-Marzban-Script/blob/main/myblog-backup/var/xray_config.json;
#
#  mkdir var/lib/marzban/certs;
#
#  curl -o var/lib/marzban/certs/fullchain.pem https://github.com/Ali-Hashemi/My-Marzban-Script/blob/main/myblog-backup/var/certs/fullchain.pem;
#
#  curl -o var/lib/marzban/certs/key.pem https://github.com/Ali-Hashemi/My-Marzban-Script/blob/main/myblog-backup/var/certs/key.pem;

}

#echo "Select Operation :"
#echo "1. Add Node"
#echo "2. Update Node"
#echo "3. Backup"
#read -r -p "Select Number(Default is: 1):" COMMAND
#
#case $COMMAND in
#    1)  add_node
#	  echo
#    echo "=== Finished ==="
#    echo
#    exit ;;
#
#    *)   echo "Done."; exit 1 ;;

add_node

esac
