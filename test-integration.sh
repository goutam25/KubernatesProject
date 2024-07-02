#!/bin/bash

# Frontend service URL
FRONTEND_URL="http://127.0.0.1:8080"

# Fetch the greeting message from the frontend
RESPONSE=$(curl -s $FRONTEND_URL)

# Expected greeting message
EXPECTED_MESSAGE="Hello from the backend!"

# Verify if the response contains the expected message
if [[ "$RESPONSE" == *"$EXPECTED_MESSAGE"* ]]; then
  echo "Test passed: Frontend displayed the correct message."
else
  echo "Test failed: Frontend did not display the correct message."
fi

# Adding a delay before script exits (adjust time as needed)
sleep 10
