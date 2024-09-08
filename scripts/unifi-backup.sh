#!/bin/bash

echo "Copying backups from container"
docker cp unifi-network-application:/usr/lib/unifi/data/backup /mnt/user/backups/unifi
echo "Finished copying backups from container"

echo "Uploading backups"
rclone sync /mnt/user/backups/unifi backblaze:AryaBackup/unifi
echo "Finished uploading backups"
