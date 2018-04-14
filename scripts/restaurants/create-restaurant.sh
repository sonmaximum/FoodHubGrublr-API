#!/bin/bash

curl "http://localhost:4741/restaurants" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "restaurant": {
      "address": "'"${ADDRESS}"'",
      "phone_number": "'"${PHONE}"'",
      "description": "'"${DESC}"'",
      "user_id": "'"1"'"
    }
  }'

echo
