#!/bin/bash
# This will download and unzip the terraform binary to the current directory
# which can then be used by terraform.sh

cd "$(dirname "$0")"

TF_VERSION="0.12.23"
BIN_ARCH="linux_amd64"
FILE_NAME="terraform_${TF_VERSION}_${BIN_ARCH}.zip"
DOWNLOAD_URL="https://releases.hashicorp.com/terraform/${TF_VERSION}/${FILE_NAME}"
echo "Downloading $DOWNLOAD_URL ...";

curl -O "$DOWNLOAD_URL"
unzip "$FILE_NAME"
rm "$FILE_NAME"
