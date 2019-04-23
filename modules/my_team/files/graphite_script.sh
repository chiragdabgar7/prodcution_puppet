#!/bin/bash
SERVER=172.20.20.15
PORT=2003

rand=$((1 + RANDOM % 10))
echo "local.random.diceroll $rand `date +%s`" | nc ${SERVER} ${PORT}
