#!/bin/bash
echo -e "Script lancé ! \n"
sudo -i
cd /opt/databases
sudo mysql -u "root" < "CCC.sql"
echo -e "Import Database réussi ! \n"
cd /opt/databases

