#!/usr/bin/env bash
set -euo pipefail

# Copy this file to deploy.sh, then fill these values.
# Do not commit passwords or private keys into this folder.

DEPLOY_HOST="example.com"
DEPLOY_USER="username"
DEPLOY_PATH="/home/username/public_html/lien/"

rsync -avz --delete \
  --exclude "deploy.sh" \
  --exclude "deploy.example.sh" \
  ./ "${DEPLOY_USER}@${DEPLOY_HOST}:${DEPLOY_PATH}"

echo "Deployed to ${DEPLOY_HOST}:${DEPLOY_PATH}"
