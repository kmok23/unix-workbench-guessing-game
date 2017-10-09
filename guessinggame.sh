#!/usr/bin/env bash
# File: guessinggame.sh

function guessinggame {
  response=0
  file_count=$(ls | wc -l)

  while [[ $response -ne $file_count ]]
  do
    echo "How many files are in the current directory?"
    echo "Type in a guess and press ENTER:"
    read response
    if [[ $response -gt $file_count ]]
    then
      echo "Incorrect. Your guess was too high."
    elif [[ $response -lt $file_count ]]
    then
      echo "Incorrect. Your guess was too low."
    fi
    echo " "
  done
  echo "Correct. Good work!"
}

guessinggame
