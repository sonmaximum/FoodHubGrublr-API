#!/bin/bash

curl "http://localhost:4741/menus" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "menu": {
      "blah": "blah"
    }
  }'

echo
