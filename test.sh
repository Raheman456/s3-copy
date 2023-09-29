#!/bin/bash

AWS_ACCESS_KEY_ID="AKIAWZ4MAERDKYGO4CQI"
AWS_SECRET_ACCESS_KEY="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"

aws configure set aws_access_key_id "$AWS_ACCESS_KEY_ID"
aws configure set aws_secret_access_key "$AWS_SECRET_ACCESS_KEY"

if [ $# -ne 2 ]; then
  echo "Usage: $0 <source_filename> <destination_filename>"
  exit 1
fi

SOURCE_FILENAME="$1"
DEST_FILENAME="$2"

SOURCE_S3_PATH="s3://devops0507/sample/sample1/sample2/$SOURCE_FILENAME"
DEST_S3_PATH="s3://devops0507/test/test1/test2/$DEST_FILENAME"

aws s3 cp "$SOURCE_S3_PATH" "$DEST_S3_PATH"

if [ $? -eq 0 ]; then
  echo "File copied successfully!"
else
  echo "Error copying file."
fi
