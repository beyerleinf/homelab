#!/bin/bash

echo "Running document export"
docker exec paperless-ngx-webserver document_exporter /usr/src/paperless/export -na -nt -p --no-progress-bar
echo "Finished document export"

echo "Uploading export"
rclone sync /mnt/user/docker/paperless-ngx/export backblaze:AryaBackup/paperless
echo "Finished uploading export"
