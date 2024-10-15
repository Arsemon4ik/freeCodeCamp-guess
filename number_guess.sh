#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

GAME() {
  USERNAME=$1
  BEST_SCORE=$2
  # echo $USERNAME $BEST_SCORE
  # Create secret number
  SECRET_NUMBER=$(( ( RANDOM % 1000 )  + 1 ))
  NUMBER_OF_GUESSES=0
  # echo $SECRET_NUMBER
  
  # Start the game
  echo "Guess the secret number between 1 and 1000:"
  while true
  do
    read USER_GUESS
    ((NUMBER_OF_GUESSES++))
    # If user guess is not a number
    if [[ ! ($USER_GUESS =~ ^-?[0-9]+$) ]]; then
      echo "That is not an integer, guess again:" 
    elif [[ $USER_GUESS == $SECRET_NUMBER ]]; then
      break
    elif [[ $USER_GUESS < $SECRET_NUMBER ]]; then
      echo "It's lower than that, guess again:" 
    else
     echo "It's higher than that, guess again:"
    fi
    
  done

  if [[ $NUMBER_OF_GUESSES < $BEST_SCORE ]]; then
    BEST_SCORE=$NUMBER_OF_GUESSES
  fi
  # Update user info in the database
  UPDATE_USER_RESULT=$($PSQL "update users set games_played=games_played+1, best_score=$BEST_SCORE where username='$USERNAME';")
  echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"
}

GREETINGS(){
  # READ username
  echo "Enter your username: "
  read USERNAME

  # Check if user exists
  USER=$($PSQL "select username from users where username='$USERNAME';")

  # If user not exists
  if [[ -z $USER ]]; then
    echo "Welcome, $USERNAME! It looks like this is your first time here."
    INSERT_USER_RESULT=$($PSQL "insert into users(username, games_played, best_score) values('$USERNAME', 0, 99999);")
    BEST_SCORE=99999
  else
    GAMES_PLAYED=$($PSQL "select games_played from users where username='$USERNAME';")
    BEST_SCORE=$($PSQL "select best_score from users where username='$USERNAME';")
    echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_SCORE guesses."
  fi
  GAME $USERNAME $BEST_SCORE
}
GREETINGS



