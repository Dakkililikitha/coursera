#!/usr/bin/env bash

# The guessinggame.sh program should have the following behavior:
# When the program starts the user should be asked how many files are in the current directory, and then the user should be prompted for a guess.
# If the user's answer is incorrect the user should be advised that their guess was either too low or too high and then they should be prompted to try to guess again.
# If the user's guess is correct then they should be congratulated and the program should end.
# The program should not end until the user has entered the correct number of files in the current directory.
# The program should be able to be run by entering bash guessinggame.sh into the console.
# The program should contain at least one function, one loop, and one if statement.
# The program should be more than 20 lines of code but less than 50 lines of code.

function promt { # One function
	echo $1

	# User should be prompted for a guess.
	echo -n "Enter an integer value: "
	read n
	echo "You entered $n"
}
# 20 lines of code.

answer=$(ls | wc -l) # get the number of files in currect directory

# Ask how many files are in the current directory.
promt "How many files are in the current directory?"

# One loop until the user has entered the correct number
while [[ $n -ne $answer ]]
do 
	# One if statemnt to advised that their guess was either too low or too high 
	if  [[ $n -lt $answer ]] 
	then 
		echo "That's too few files!"
	elif [[ $n -gt $answer ]]
	then 
		echo "That's too many files!"
	fi

	# Then they should be prompted to try to guess again.
	echo
	promt "Let's try again"

done

# If the user's guess is correct then they should be congratulated and the program should end.
if [[ $n -eq $answer ]]
then 
	echo "Well done you! There are $answer files in the current directory!"
fi # 23 lines of actual code by the way :)
# 50 lines of code.
