#!/bin/bash

API="http://localhost:4741"
URL_PATH="/workouts"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer ${TOKEN}" \
  --data '{
    "workout": {
      "workoutCategory": "'"${WORKOUTCATEGORY}"'",
      "targetedBodyArea": "'"${TARGETEDBODYAREA}"'",
      "timeSpent": "'"${TIMESPENT}"'",
      "caloriesBurned": "'"${CALORIESBURNED}"'",
      "workoutDate": "'"${WORKOUTDATE}"'",
    }
  }'

echo
