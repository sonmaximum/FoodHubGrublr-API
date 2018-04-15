#!/bin/bash

curl "http://localhost:4741/order_items/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "order_item": {
      "quantity": "'"${QUANT}"'"
    }
  }'

echo
