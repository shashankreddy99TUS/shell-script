#!/bin/bash

MOVIES=("pushpa" "rrr" "devara")
#index starts from 0,sixe is 3

echo "first movie: ${MOVIES[0]}"
echo "Second movie: ${MOVIES[1]}"
echo "Third movie: ${MOVIES[2]}"

echo "All movies are: ${MOVIES[@]}" 