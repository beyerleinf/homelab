#!/bin/bash

echo "Backing up Umami database"
docker exec umami-db-backup-1 backup-now
echo "Finished backing up Umami database"
