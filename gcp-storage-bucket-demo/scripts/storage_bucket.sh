#!/bin/bash
# Script to create a Cloud Storage bucket

PROJECT_ID="helical-patrol-443410-d9"
BUCKET_NAME="cli-storage-bucket-$(date +%s)"
LOCATION="us-central1"
STORAGE_CLASS="STANDARD"

# Set the project
gcloud config set project $PROJECT_ID

# Create the bucket
gcloud storage buckets create gs://$BUCKET_NAME \
    --location=$LOCATION \
    --default-storage-class=STANDARD

echo "Your Bucket gs://$BUCKET_NAME has been created successfully!"

