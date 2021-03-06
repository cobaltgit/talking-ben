#!/bin/bash

if [[ -v "${TOKEN}" ]] || [[ -v "${APPLICATION_ID}}" ]]; then
    echo "ERROR: TOKEN and APPLICATION_ID are mandatory environment variables that must have a set value."
    exit 1
fi

cd "$(dirname "$0")"

echo "{\"token\": \"$TOKEN\", \"application_id\": $APPLICATION_ID}" > config.json

exec "$@"