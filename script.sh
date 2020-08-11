#!/bin/bash
echo -e "Script lancé ! \n"
cd /opt/databasess
sudo -i
sudo mysql -u "root" < "CCC.sql"
echo -e "Import Database réussi ! \n"
