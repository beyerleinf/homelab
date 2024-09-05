#!/bin/bash
# This script is used in an unRAID user script to run the backup there

echo "Starting Database Backup"
docker start seafile-db-backup-1

docker exec seafile-db-backup-1 backup-now
echo "Finished database backup"

echo "Starting File Backup"

echo "Backing up seafile/conf"
rclone sync /mnt/user/seafile/seafile/conf backblaze:AryaBackup/seafile/conf
echo "Finished backing up seafile/conf"

echo "Backing up seafile/seafile-data"
rclone sync /mnt/user/seafile/seafile/seafile-data backblaze:AryaBackup/seafile/seafile-data
echo "Finished backing up seafile/seafile-data"

echo "Backing up seafile/seahub-data"
rclone sync /mnt/user/seafile/seafile/seahub-data backblaze:AryaBackup/seafile/seahub-data
echo "Finished backing up seafile/seahub-data"

echo "Finished file backup"

