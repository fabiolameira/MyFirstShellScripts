#!/bin/bash
# This script return all usernames filtered by the argument $1:
echo "$( cut -d: -f1 /etc/passwd | grep '^'$1 )"
