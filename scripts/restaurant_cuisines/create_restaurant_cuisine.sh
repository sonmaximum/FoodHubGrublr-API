#!/bin/bash

curl "http://localhost:4741/restaurant_cuisines" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "restaurant_cuisine": {
      "cuisine_id": "'"${CID}"'"
    }
  }'

echo
