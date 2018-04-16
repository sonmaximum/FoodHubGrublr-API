#!/bin/bash

curl "http://localhost:4741/menu_sections" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "menu_section": {
      "heading": "'"${HEADING}"'"
    }
  }'

echo
