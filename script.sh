#!/bin/bash

echo "kill process that use port : $1"

processId=$(sudo lsof -t -i:"$1")

echo "processId: $processId"

sudo kill -9 "$processId"

echo "process killed"
