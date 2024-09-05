#!/bin/bash

echo "Backing up PiHole config"
docker exec pihole /bin/bash -c "pihole -a -t /backups/backup-$(date +\"%Y-%m-%dT%H:%M:%S\").tar.gz"
echo "Finished backing up PiHole config"

echo "Uploading PiHole backup"
rclone sync /mnt/user/backups/pihole backblaze:AryaBackup/pihole
echo "Finished uploading PiHole backup"
