#!/bin/bash
# Script to upload a file to Cloud Storage

BUCKET_NAME="cli-storage-bucket-$(date +%s)"
FILE_PATH="/root/devops-exercises"

# Upload the file
gcloud storage cp $FILE_PATH gs://$BUCKET_NAME

echo "File $FILE_PATH successfully uploaded to gs://$BUCKET_NAME"

