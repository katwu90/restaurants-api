#!/bin/bash
# TOKEN=BAhJIiUxNjVmYzExYjQzMTQ3Zjg1NzNiZGFkZGMxYWE0YWY3ZQY6BkVG--d6c2037493dd1ab8217e14a2101bb475bc49353d NAME=Thaitation RATING=4 sh scripts/restaurant/create-restaurant.sh
API="${API_ORIGIN:-https://faverestaurants.herokuapp.com}"
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
