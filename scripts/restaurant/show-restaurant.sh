#!/bin/bash
# TOKEN=BAhJIiUxNjVmYzExYjQzMTQ3Zjg1NzNiZGFkZGMxYWE0YWY3ZQY6BkVG--d6c2037493dd1ab8217e14a2101bb475bc49353d ID=1 sh scripts/restaurant/show-restaurant.sh
API="${API_ORIGIN:-https://faverestaurants.herokuapp.com}"
URL_PATH="/restaurants/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \

echo
