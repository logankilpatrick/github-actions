#!/bin/sh
set -e

if [[ -z "$SLACK_WEBHOOK_URL" ]]; then
  echo "Set the SLACK_WEBHOOK_URL secret."
  exit 1
fi

curl -X POST \
  -H 'Content-type: application/json' \
  --data "$*" \
  $SLACK_WEBHOOK_URL