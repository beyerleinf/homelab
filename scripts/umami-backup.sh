
#!/bin/bash

# Backing up Umami database
docker exec umami-db-backup-1 backup-now
# Finished backing up Umami database
