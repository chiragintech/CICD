#!/bin/bash

echo "Running unit tests..."

EXPECTED="Hello from Jenkins Pipeline CI demo"
OUTPUT=$(./hello.sh)

if [ "$OUTPUT" != "$EXPECTED" ]; then
  echo "❌ Test failed"
  echo "Expected: $EXPECTED"
  echo "Got: $OUTPUT"
  exit 1
fi

echo "✅ All unit tests passed"

