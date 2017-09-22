#!/bin/bash
# TOKEN=BAhJIiVjYWY1NTllODNjMTUwZThkZTE0N2E3ZDJmNmI5ZGU3NAY6BkVG--63aa918c7e6e306dca2870bc7a4cd42d83714010 NAME=Chipotle RATING=4.2 sh scripts/create-restaurant.sh
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/restaurants"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "restaurant": {
      "name": "'"${NAME}"'",
      "rating": "'"${RATING}"'"
    }
  }'

echo
