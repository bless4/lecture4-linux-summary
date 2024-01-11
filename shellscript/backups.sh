#!/bin/bash
# Backup script edit the source_dir & backup_dir

source_dir="/path/to/source"
backup_dir="/path/to/backup"

# Create backup directory if it doesn't exist
mkdir -p $backup_dir

# Copy files from source to backup
cp -r $source_dir/* $backup_dir

echo "Backup completed successfully."
