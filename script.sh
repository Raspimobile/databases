#!/bin/bash
echo -e "Script lancé ! \n"
sudo -i
sudo mysql -u "root" < "CCC.sql"
echo -e "Import Database réussi ! \n"
