#!/bin/bash

# Prompt the user for a choice parameter
echo "Choose an option:"
echo "1. Option 1"
echo "2. Option 2"
echo "3. Option 3"
read choice

case $choice in
  1)
    # If the user selects Option 1 or Option 2, prompt for a single string parameter
    echo "Enter a string parameter:"
    read param1
    ;;
  2)
    # If the user selects Option 1 or Option 2, prompt for a single string parameter
    echo "Enter a string parameter:"
    read param1
    ;;
  3)
    # If the user selects Option 3, prompt for two string parameters
    echo "Enter the first string parameter:"
    read param1
    echo "Enter the second string parameter:"
    read param2
    ;;
  *)
    echo "Invalid choice"
    exit 1
    ;;
esac


# AWS credentials and other script logic here...


AWS_ACCESS_KEY_ID="AKIAWZ4MAERDKYGO4CQI"
AWS_SECRET_ACCESS_KEY="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"

aws configure set aws_access_key_id "$AWS_ACCESS_KEY_ID"
aws configure set aws_secret_access_key "$AWS_SECRET_ACCESS_KEY"

#if [ $# -ne 2 ]; then
 # echo "Usage: $0 <source_filename> <destination_filename>"
  #exit 1
#fi

#SOURCE_FILENAME="$1"
#DEST_FILENAME="$2"

SOURCE_FILENAME="$SOURCE_FILE"
DEST_FILENAME="$DEST_FILE"

SOURCE_S3_PATH="s3://devops0507/sample/sample1/sample2/$SOURCE_FILENAME"
DEST_S3_PATH="s3://devops0507/test/test1/test2/$DEST_FILENAME"

aws s3 cp "$SOURCE_S3_PATH" "$DEST_S3_PATH"

if [ $? -eq 0 ]; then
  echo "File copied successfully!"
else
  echo "Error copying file."
fi


# For demonstration, we'll just print the parameters
echo "Choice: $choice"
echo "Parameter 1: $param1"
echo "Parameter 2: $param2"
