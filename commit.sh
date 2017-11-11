#!/usr/bin/env bash

if [ $1 = "1" ]; then
    AUNAME="Alice Alice"
    AUEMAIL="simplereview__alice@gmail.com"
elif [ $1 = "2" ]; then
    AUNAME="Bob Bob"
    AUEMAIL="simplereview__bob@gmail.com"
elif [ $1 = "3" ]; then
    AUNAME="Eve Eve"
    AUEMAIL="simplereview__eve@gmail.com"
elif [ $1 = "4" ]; then
    AUNAME="Antonio C Jr"
    AUEMAIL="acdcjunior@gmail.com"
else
    echo "PROVIDE A NUMBER 1..4 AS FIRST ARG, THEN COMMIT MESSAGE!"
    exit 1
fi

git add -A
MSG="${@:2}"
GIT_COMMITTER_NAME="$AUNAME" GIT_COMMITTER_EMAIL="$AUEMAIL" git commit --author="$AUNAME <$AUEMAIL>" -m "$MSG"