#!/bin/bash
echo -e "Script lancé ! \n"
cd /opt/databases
sudo -i
sudo mysql -u "root" < "CCC.sql"
echo -e "Import Database réussi ! \n"
cd /opt/databases

