#!/bin/bash

flutter packages pub run build_runner build --delete-conflicting-outputs
chmod +x update_pubspec_version.py
./update_pubspec_version.py
dart format .
#dart doc .

# If git user not configured, set locally here
name=$(git config user.name)
if [ -z "$name" ]
then
        # Setup a retry loop for user's Git username
      	while true; do
      	    read -p "Enter your Git username in format \`FIRST_NAME LAST_NAME\` (Required): " username

      	    if [ -z "$username" ]
            then
                echo "The username has not been provided, retrying in 5 secs..."
                sleep 5
            else
            		echo "Git username $username received"
            		git config user.name "$username"
            		break
            fi
      	done
fi

email=$(git config user.email)
if [ -z "$email" ]
then
        # Setup a retry loop for user's Git email address
      	while true; do
      	    read -p "Enter your Git email address (Required): " address

      	    if [ -z "$address" ]
            then
                echo "The email address has not been provided, retrying in 5 secs..."
                sleep 5
            else
            		echo "Git email address $address received"
            		git config user.email "$address"
            		break
            fi
      	done
fi

# Prepare all files and folders in project for push
git add .

read -p "Commit message (Optional): " message

if [ -z "$message" ]
then
      time=`date '+%A %d %B %Y %T %Z'`
      MESSAGE="Commit on ${time}"
else
      MESSAGE=$message
fi

git commit -m "${MESSAGE}"

read -p "Commit branch (Optional. Default=main): " branch

if [ -z "$branch" ]
then
      BRANCH="main"
else
      if [ "$branch" = "main" ]; then
        BRANCH=$branch
      else
        BRANCH="main:$branch"
      fi
fi

git push origin $BRANCH

# Since maybe there's a reason git was not configured before, let us unset the details
if [ -z "$email" ]
then
        git config --unset-all user.email
fi
if [ -z "$name" ]
then
        git config --unset-all user.name
fi
