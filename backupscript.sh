#!/bin/bash

### Script for Backup of Databases ###
bkp_path = `mkdir -p /home/backups/project_date %d%b%Y`

mysqldump -u root db_name > $bkp_path