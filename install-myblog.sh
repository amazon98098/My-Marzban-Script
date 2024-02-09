#!/bin/bash

COMMAND=1

add_node() {

mkdir Marzban-node;

cd Marzban-node;

touch ali.txt;

mkdir Marzban-node/james;

cd..



cd james/;

touch curry.txt

}

echo "Select Operation :"
echo "1. Add Node"
echo "2. Update Node"
echo "3. Backup"
read -r -p "Select Number(Default is: 1):" COMMAND

case $COMMAND in
    1)  add_node
	  echo
    echo "=== Finished ==="
    echo
    exit ;;

    *)   echo "Done."; exit 1 ;;

esac
