#!/bin/bash
# This script is used in an unRAID user script to run the backup there

echo "Starting Database Backup"
docker start immich-db-backup-1

docker exec immich-db-backup-1 backup-now
echo "Finished database backup"

echo "Starting File Backup"

echo "Backing up immich/library"
rclone sync /mnt/user/immich/upload/library backblaze:AryaBackup/immich/library
echo "Finished backing up immich/library"

echo "Backing up immich/upload"
rclone sync /mnt/user/immich/upload/upload backblaze:AryaBackup/immich/upload
echo "Finished backing up immich/upload"

echo "Backing up immich/profile"
rclone sync /mnt/user/immich/upload/profile backblaze:AryaBackup/immich/profile
echo "Finished backing up immich/profile"

echo "Backing up immich/thumbs"
rclone sync /mnt/user/immich/upload/thumbs backblaze:AryaBackup/immich/thumbs
echo "Finished backing up immich/thumbs"

echo "Backing up immich/encoded-video"
rclone sync /mnt/user/immich/upload/encoded-video backblaze:AryaBackup/immich/encoded-video
echo "Finished backing up immich/encoded-video"

echo "Finished file backup"

