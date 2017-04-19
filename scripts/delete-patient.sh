#!/bin/bash

curl --include --request DELETE http://localhost:4741/patients/1 \
  --header "Content-Type: application/json"
  # --data '{
  #   "patient": {
  #     "name": "Example Title",
  #     "born_on": "03-02-1983",
  #     "diagnosis": "Example diagnosis"
  #   }
  # }'

echo
