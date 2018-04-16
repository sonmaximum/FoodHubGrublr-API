#!/bin/bash

curl "http://localhost:4741/restaurant_cuisines/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \

echo
