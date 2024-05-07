#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
NUMBER=$(($RANDOM%1000+1))

USERNAME_F (){
    echo -e "\nEnter your username:" 
    read USERNAME

    # Check if the username exists in the database
    LOOK_USER=$($PSQL "SELECT username FROM users WHERE username = '$USERNAME'")
    echo "LOOK_USER: $LOOK_USER"  # Debugging line

    if [[ -n "$LOOK_USER" ]]; then
        # Username exists, fetch user statistics
        USER_STATS=$($PSQL "SELECT games_played, best_game FROM users WHERE username = '$USERNAME'")
        echo "USER_STATS: $USER_STATS"  # Debugging line
        
        if [[ -n "$USER_STATS" ]]; then
            while IFS="|" read GAMES_PLAYED BEST_GAME; do
                echo -e "\nWelcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
            done <<< "$USER_STATS"
        else
            echo "Error: Failed to fetch user statistics."
        fi
    else
        # Username doesn't exist, insert new user
        INSERT_NEW_USER=$($PSQL "INSERT INTO users (username, games_played, best_game) VALUES ('$USERNAME', 0, 0)")
        echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
    fi
}

# Function to handle the guessing game
GUESSING_NUMBER () {
    echo -e "\nGuess the secret number between 1 and 1000: " 
    read INPUT_NUMBER
    NUMBER_OF_GUESSES=1

    while [[ $INPUT_NUMBER -ne $NUMBER ]]
    do
        if [[ ! $INPUT_NUMBER =~ ^[0-9]+$ ]]
        then 
            echo -e "\nThat is not an integer, guess again: " 
            read INPUT_NUMBER
        elif [[ $INPUT_NUMBER -gt $NUMBER ]]
        then
            echo -e "\nIt's lower than that, guess again: " 
            read INPUT_NUMBER
        elif [[ $INPUT_NUMBER -lt $NUMBER ]]
        then 
            echo -e "\nIt's higher than that, guess again: " 
            read INPUT_NUMBER
        fi

        NUMBER_OF_GUESSES=$(( $NUMBER_OF_GUESSES + 1 ))
    done
    
    echo -e "\nYou guessed it in $NUMBER_OF_GUESSES tries. The secret number was $NUMBER. Nice job!"
}

INSERT_DATA () {

    USER_ID=$($PSQL "SELECT id FROM users WHERE username = '$USERNAME'")

    GAMES_PLAYED=$($PSQL "SELECT games_played FROM users WHERE id = $USER_ID")
    NEW_GAMES_PLAYED=$(( $GAMES_PLAYED + 1 ))
    INSERT_NEW_GAMES_PLAYED=$($PSQL "UPDATE users SET games_played = $NEW_GAMES_PLAYED WHERE id = $USER_ID")
    
    READ_BEST_GAME=$($PSQL "SELECT best_game FROM users WHERE id = $USER_ID") 
    if [[ $NUMBER_OF_GUESSES -lt $READ_BEST_GAME || $READ_BEST_GAME == 0 ]]
    then
        INSERT_NUMBER_OF_GUESSES=$($PSQL "UPDATE users SET best_game = $NUMBER_OF_GUESSES WHERE id = $USER_ID")
    fi
}

USERNAME_F
GUESSING_NUMBER
INSERT_DATA
