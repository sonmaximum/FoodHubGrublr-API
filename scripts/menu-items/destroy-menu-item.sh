#!/bin/bash

curl "http://localhost:4741/menu_items/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "menu_item": {
      "menu_section_id": "'"${MSID}"'"
    }
  }'


echo
