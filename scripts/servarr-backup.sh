#!/bin/bash

echo "Uploading prowlarr backups"
rclone sync /mnt/user/docker/prowlarr/prowlarr/Backups/scheduled backblaze:AryaBackup/servarr/prowlarr
echo "Finished uploading prowlarr backups"

echo "Uploading radarr backups"
rclone sync /mnt/user/docker/radarr/Backups/scheduled backblaze:AryaBackup/servarr/radarr
echo "Finished uploading radarr backups"

echo "Uploading sonarr backups"
rclone sync /mnt/user/docker/sonarr/Backups/scheduled backblaze:AryaBackup/servarr/sonarr
echo "Finished uploading sonarr backups"

echo "Uploading lidarr backups"
rclone sync /mnt/user/docker/lidarr/Backups/scheduled backblaze:AryaBackup/servarr/lidarr
echo "Finished uploading lidarr backups"
