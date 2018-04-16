#!/bin/bash

curl "http://localhost:4741/menu_items" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "menu_item": {
      "name": "'"${NAME}"'",
      "description": "'"${DESCRIPTION}"'",
      "price": "'"${PRICE}"'",
      "menu_section_id": "'"${MSID}"'"
    }
  }'

echo
