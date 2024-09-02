#!/bin/bash
# This script is used in an unRAID user script to run the backup there

docker start seafile-db-backup-1

docker exec seafile-db-backup-1 backup-now

rclone sync /mnt/user/seafile/seafile backblaze:AryaBackup/seafile
