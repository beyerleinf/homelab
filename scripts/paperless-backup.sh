#!/bin/bash

# Running document export
docker exec paperless-ngx-webserver document_exporter /usr/src/paperless/export -na -nt -p
# Finished document export

# Uploading export
rclone sync /mnt/docker/paperless-ngx/export backblaze:AryaBackup/paperless
# Finished uploading export
