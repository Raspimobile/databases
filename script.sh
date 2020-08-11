#!/bin/bash
echo -e "Script lancé ! \n"
sudo -i
sudo mysql -u "root" "CCC" < "CCC.sql"
