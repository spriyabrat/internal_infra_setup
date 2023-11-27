#!/bin/bash

# Set variables
AWS_PROFILE="default"  # Change to the desired profile if you have multiple
S3_BUCKET="ut-backup-bucket"
LOCAL_FOLDER="/home/utadmin/project/workdoc"
S3_PREFIX="backup-folder"

# Upload files to S3
aws s3 sync $LOCAL_FOLDER s3://$S3_BUCKET/$S3_PREFIX --profile $AWS_PROFILE
