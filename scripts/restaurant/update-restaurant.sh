#!/bin/bash
# TOKEN=BAhJIiUxNjVmYzExYjQzMTQ3Zjg1NzNiZGFkZGMxYWE0YWY3ZQY6BkVG--d6c2037493dd1ab8217e14a2101bb475bc49353d ID=1 RATING=3.2 sh scripts/update-restaurant.sh
API="${API_ORIGIN:-https://faverestaurants.herokuapp.com}"
URL_PATH="/restaurants/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "restaurant": {
      "rating": "'"${RATING}"'"
    }
  }'

echo
