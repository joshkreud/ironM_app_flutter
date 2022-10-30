
gameId=$( curl -X 'POST' \
  'https://mehmke.click/ironapp/api/QuizRegistration/newgame' \
  -H 'accept: text/plain' \
  -d '' | jq '.gameId')

JSON_STRING=$( jq --raw-input  -n \
                  --arg gameId $gameId \
                   --arg team "teamTest" \
                  '{ gameId: $gameId, credentials: {   teamName: $team  } }' )
echo "${gameId}"
echo "${JSON_STRING}"

bearer=$( curl -X 'POST' \
  'https://mehmke.click/ironapp/api/QuizRegistration/joingame' \
  -H 'accept: text/plain' \
  -H 'Content-Type: application/json' \
  -d '{ "gameId": "abae8e54-6000-4688-b366-e30b91abac1d", "credentials": {   "teamName": "teams"  } }'   )

bearerfilter =$( $bearer | jq '.bearerToken')

echo "${bearer}"
bearer=$("bearer ${bearer}")

echo "${bearer}"


bearer=$( curl -X 'POST' \
  'https://mehmke.click/ironapp/api/Quiz/sendquestion' \
  -H 'accept: text/plain' \
-H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCIsImN0eSI6IkpXVCJ9.eyJnYW1lSWQiOiJhYmFlOGU1NC02MDAwLTQ2ODgtYjM2Ni1lMzBiOTFhYmFjMWQiLCJwbGF5ZXJJZCI6IjEiLCJlbWFpbCI6InRlYW1zIiwibmJmIjoxNjY3MTE0MjM0LCJleHAiOjE2NjcxMTc4MzQsImlhdCI6MTY2NzExNDIzNH0.gHemMUH-TW6g62wEMEluzrqwhbLQ8lGCOwJgIVDBdfA" -H 'Content-Type: application/json' \
  -d '{
  "question": "Warum ist die Banane krum?"
}'   )

curl -X 'POST' \
  -H 'Content-Type: application/json' \
  'https://mehmke.click/ironapp/api/Quiz/getanswers' \
  -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCIsImN0eSI6IkpXVCJ9.eyJnYW1lSWQiOiJhYmFlOGU1NC02MDAwLTQ2ODgtYjM2Ni1lMzBiOTFhYmFjMWQiLCJwbGF5ZXJJZCI6IjEiLCJlbWFpbCI6InRlYW1zIiwibmJmIjoxNjY3MTE0MjM0LCJleHAiOjE2NjcxMTc4MzQsImlhdCI6MTY2NzExNDIzNH0.gHemMUH-TW6g62wEMEluzrqwhbLQ8lGCOwJgIVDBdfA" \
  -H 'accept: text/plain' \
  -d ''
echo "${bearer}"
