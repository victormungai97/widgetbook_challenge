#!/bin/bash

dart format .
#dart doc .

git config user.email "victormungai97@gmail.com"
git config user.name "Victor Kamau"
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
git config --unset-all user.email
git config --unset-all user.name
