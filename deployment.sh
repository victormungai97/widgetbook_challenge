#!/bin/bash

dart format .
dart doc .
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
