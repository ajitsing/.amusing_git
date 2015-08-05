#/bin/bash

MESSAGES=~/.amusing_git/messages
total_messages=$(cat $MESSAGES | wc -l)
random_index=$[RANDOM % $total_messages + 1]

random_message=$(head -$random_index $MESSAGES | tail -1)

YELLOW='\033[0;33m'
NoColor='\033[0m'
printf "${YELLOW}$random_message${NoColor}\n"
