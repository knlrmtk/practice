#!/bin/bash

### Script for Backup of Databases ###
bkp_path = `mkdir -p /home/backups/project_date %d%b%Y`

mysqldump -u root db_name > $bkp_path
tar -cvzf $bkp_path.tar.gz $bkp_path
scp -r $bkp_path.tar.gz 192.169.10.10:/home/allbackups