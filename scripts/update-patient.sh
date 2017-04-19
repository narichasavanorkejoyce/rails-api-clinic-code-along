#!/bin/bash

curl --include --request PATCH http://localhost:4741/patients/1 \
  --header "Content-Type: application/json" \
  --data '{
    "patient": {
      "name": "Nari Savanorke-Joyce",
      "born_on": "1993-07-10",
      "diagnosis": "too much sugar"
    }
  }'

echo
