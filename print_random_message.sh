MESSAGES=./messages
total_messages=$(cat $MESSAGES | wc -l)
random_index=$[RANDOM % $total_messages + 1]

random_message=$(head -$random_index $MESSAGES | tail -1)
echo $random_message
