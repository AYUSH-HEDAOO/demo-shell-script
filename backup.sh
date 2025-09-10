#!/bin/bash

<<info

this script will take periodic backups

info

src=$1
des=$2

timestamp=$(date '+%Y-%m-%d-%H-%M-%S')
zip -r "$des/backup-$timestamp.zip" $src > /dev/null

aws s3 sync $des  s3://tws-backups-01


echo "backup completed and uploaded to s3"
