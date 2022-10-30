
gameId=$(
    curl -X 'POST' \
  'https://mehmke.click/api/QuizRegistration/newgame' \
  -H 'accept: text/plain' \
  -d ''  
'  | jq '.gameId' )

bearer=$( curl -X 'POST' \
  'https://mehmke.click/ironapp/api/QuizRegistration/joingame' \
  -H 'accept: text/plain' \
  -H 'Content-Type: application/json' \
  -d '{
  "gameId": "${gameId}",
  "credentials": {
    "teamName": "TeamTest"
  }
}'  | jq '.bearerToken' )

echo "${bearer}"
bearer=$("bearer ${bearer}")

echo "${bearer}"


bearer=$( curl -X 'POST' \
  'https://mehmke.click/ironapp/api/Quiz/sendquestion' \
  -H 'accept: text/plain' \
-H "Authorization: Bearer ${bearer}" -H 'Content-Type: application/json' \
  -d '{
  "question": "Frage123"
}'   )

echo "${bearer}"
