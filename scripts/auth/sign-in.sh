#!/bin/bash
# EMAIL=kat PASSWORD=kat sh scripts/auth/sign-in.sh
API="${API_ORIGIN:-https://faverestaurants.herokuapp.com}"
URL_PATH="/sign-in"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'"
    }
  }'

echo
