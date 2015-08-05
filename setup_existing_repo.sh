#/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
NoColor='\033[0m'


if [ -d "$1" ]; then
  cp ~/.amusing_git/hooks/* "$1/.git/hooks/."
  printf "${GREEN}done!\n"
  printf "Now you will be amused by git :)${NoColor}\n"
else
  printf "${RED}Respository $1 not found..${NoColor}\n"
fi

