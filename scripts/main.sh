#!/bin/bash

ID="$1"
DPM_KEY="$2"
PARKING_LOT_ID=1775
LATITUDE="32.868537958686304"
LONGITUDE="35.2921829609096"

URL="https://admin.dpm-parking.com/api/app/checkLogin?userID=&ID=$ID&password=$DPM_KEY"

# Perform the login request and capture the response (headers and body)
#RESPONSE=$(curl --insecure -H "Accept: application/json, text/plain, */*" "$URL")
RESPONSE2=$(curl --insecure --verbose https://admin.dpm-parking.com)

echo "$RESPONSE"

## Extract the session cookie from the headers
#SESSION_COOKIE=$(echo "$RESPONSE" | grep -i 'set-cookie:' | awk '{print $2}' | sed 's/;//')
#
## Extract the body of the response (JSON part only)
#BODY=$(echo "$RESPONSE" | sed -n '/{/,/}/p')
#
## Extract the values for "result" and "fullName" from the JSON body
#RESULT=$(echo "$BODY" | jq -r '.result')
#FULL_NAME=$(echo "$BODY" | jq -r '.fullName')
#
## Print the session cookie and extracted JSON values
#echo "Session Cookie: $SESSION_COOKIE"
#echo "Result: $RESULT"
#echo "Full Name: $FULL_NAME"
#
#
## Make the API call using the variables
#RESPONSE=$(curl --insecure -s -X POST 'https://admin.dpm-parking.com/api/app/getAvailableParkingNames?userID='$RESULT'&parkingLotID='$PARKING_LOT_ID \
#-H 'Host: admin.dpm-parking.com' \
#-H 'Accept: application/json, text/plain, */*' \
#-H 'Connection: keep-alive' \
#-H 'Accept-Language: en-GB,en-US;q=0.9,en;q=0.8' \
#-H 'User-Agent: dpm/1.0 CFNetwork/1568.300.101 Darwin/24.2.0' \
#-H 'Content-Type: application/json;charset=utf-8' \
#--cookie "$SESSION_COOKIE" \
#--data-raw '{"parkingLotID":'$PARKING_LOT_ID'}')
#
## Use jq to extract the last parking slot based on parkingID
#LAST_PARKING_SLOT=$(echo "$RESPONSE" | jq -r '.[-1].parkingID')
#
## Output the last parkingID
#echo "Last Parking Slot ID: $LAST_PARKING_SLOT"
#
#RESPONSE=$(curl --insecure -s -X POST "https://admin.dpm-parking.com/api/app/holdParking?userID=$RESULT&parkingID=$LAST_PARKING_SLOT&latitude=$LATITUDE&longitude=$LONGITUDE" \
#-H "Host: admin.dpm-parking.com" \
#-H "Accept: application/json, text/plain, */*" \
#-H "Connection: keep-alive" \
#-H "If-None-Match: W/\"c-Zy7x97w4DHX4vQ3VkJrct4+MzdE\"" \
#-H "User-Agent: dpm/1.0 CFNetwork/1568.300.101 Darwin/24.2.0" \
#-H "Accept-Language: en-GB,en-US;q=0.9,en;q=0.8" \
#--cookie "$SESSION_COOKIE")
#
## Output the response (optional, can be changed based on your needs)
#echo "Response from reserve parking: $RESPONSE"
