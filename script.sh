#!/bin/bash
echo -e "Lancement du script d'import de la base de donnés ! \n"
sudo mysql -u "root" < "CCC.sql"
echo -e "Import Database réussi ! \n"

