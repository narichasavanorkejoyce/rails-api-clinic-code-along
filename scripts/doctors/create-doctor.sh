curl --include --request POST http://localhost:4741/doctors \
  --header "Content-Type: application/json" \
  --data '{
    "doctor": {
      "specialty": "derm",
      "given_name": "Dr",
      "family_name": "Carl",
      "gender": "male"
    }
  }'
