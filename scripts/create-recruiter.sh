#!/bin/bash
TOKEN=BAhJIiU5MzFkMGJhOTg0MmVmOWQ0ZDU1YzY2ZWRkYjhjOTM0NgY6BkVG--4a85a1cdca084800f665919fd2cb3202cdab4329
NAME=recruiter2
WEBSITE=recruiter2
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/recruiters"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "recruiter": {
      "name": "'"${NAME}"'",
      "website": "'"${WEBSITE}"'"
    }
  }'

echo