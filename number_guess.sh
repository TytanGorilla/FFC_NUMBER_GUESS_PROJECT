#!/bin/bash
#Create single line executable function one liners with PSQL variable.
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

#Capture a random number withint 1 - 1000 range
SECRET_NUMBER=$((RANDOM % 1000 + 1))
NUMBER_OF_GUESSES=0;
GAME_STATE="NEW";
#################### FUNCTIONS
#Function to track if its a new game or not
FINISH() {
  echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"
}
GAME_STATE_UPDATE() {
  if [[ $GAME_STATE == "NEW" ]]
  then
    #Increment games_played
    echo $($PSQL "UPDATE players SET games_played = games_played + 1 WHERE username='$USERNAME'">/dev/null 2>&1)
    #Change state of game to OLD to prevent incrementing games_played each time GAME_STATE_UPDATE() is called
    GAME_STATE="OLD"
  fi
}

#Function to test each attempt/guess's proximity to RANDOM_NUMBER
HOW_CLOSE() {
  if [[ $GUESS -lt $SECRET_NUMBER ]] 
  then
    echo "It's higher than that, guess again:"
    GAME
  elif [[ $GUESS -gt $SECRET_NUMBER ]] 
  then
    echo "It's lower than that, guess again:"
    GAME
  else
    #INSERT $NUMBER_OF_GUESSES INTO that players best_game column if its lower than what is in the column presently
    #Get past best game record
    BEST_RECORD=$($PSQL "SELECT best_game FROM players WHERE username='$USERNAME'")
    if [[ $BEST_RECORD -gt 0 && $BEST_RECORD -gt $NUMBER_OF_GUESSES ]]
    then
      echo $($PSQL "UPDATE players SET best_game = $NUMBER_OF_GUESSES WHERE username='$USERNAME'">/dev/null 2>&1)
      FINISH
    elif [[ $BEST_RECORD -eq 0 ]]
    then
      echo $($PSQL "UPDATE players SET best_game = $NUMBER_OF_GUESSES WHERE username='$USERNAME'">/dev/null 2>&1)
      FINISH
    elif [[ $BEST_RECORD -lt $NUMBER_OF_GUESSES ]]
    then
      FINISH
    fi
  fi
  
}

#Function to count the amount of valid guesses and throw success if the guess HOW_CLOSE, if not, tell player of proximity to RANDOM_NUMBER, and have them do another guess cycle.
COUNT() {
  #A players games_played column will increment by 1 regardless of how many guesses were in a game
  #A players best_game is the COUNT(), will need another function to compare current game's guess COUNT() to their historically low game guess COUNT
  #COUNT guess, and check HOW_CLOSE
  ((NUMBER_OF_GUESSES++))
}
#Function to check if user is interacting in bad faith by not inputting INT datatypes
TEST() {
  if [[ ! $1 =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
    return 1 # Failure return exit status of 1
  else
    return 0 # Success
  fi
}

# Intro game message
INTRO() {
  #Removes the echo text on each game play through
  echo "Guess the secret number between 1 and 1000:"
}

# Game function to be called at each condition's conclusion
GAME() {
  read GUESS
  TEST "$GUESS"  # Call TEST function without $() to capture its return value

  # Check the return value of TEST function
  if [[ "$?" -eq 0 ]]
  then
    # The input is a valid integer
    # Count the valid guess, having COUNT() increment by 1
    COUNT
    GAME_STATE_UPDATE
    #Check how close RANDOM_NUMBER & the player's guess
    HOW_CLOSE
  else
    # Rerun game if $? 1
    GAME
  fi
}

############### SCRIPTS
#Command interaction and capture USERNAME
echo "Enter your username:"
read USERNAME;

#Check database for a MATCHing username
MATCH=$($PSQL "SELECT * FROM players WHERE username='$USERNAME'")
#Check if MATCH is empty or not
if [[ -z $MATCH ]]
then
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  #INSERT new username into players table
  echo $($PSQL "INSERT INTO players(username) VALUES('$USERNAME')")
  #Play guessing game between 1 - 1000
  GAME
else
  #Get player & game history
  PLAYER_HISTORY=$($PSQL "SELECT username, games_played, best_game FROM players WHERE username='$USERNAME'")
  echo "$PLAYER_HISTORY" | while IFS="|" read UZERNAME GAMES_P BEST_G
  do
    echo "Welcome back, $USERNAME! You have played $GAMES_P games, and your best game took $BEST_G guesses."
  done
  #Play guessing game between 1 - 1000
  INTRO
  GAME
fi
