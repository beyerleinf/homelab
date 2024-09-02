#!/bin/bash

docker exec paperless-ngx-webserver document_exporter /usr/src/paperless/export -na -nt -p

rclone sync /mnt/docker/paperless-ngx/export backblaze:AryaBackup/paperless
