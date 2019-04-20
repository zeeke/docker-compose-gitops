#!/bin/sh

if [ ! -d .git ]; then
    echo "Error: Current directory (`pwd`) is not a git repository!"
    exit 2
fi

while true
do
    git fetch
    LOCAL=$(git rev-parse HEAD)
    REMOTE=$(git rev-parse @{u})

    if [ $LOCAL != $REMOTE ]; then
        git pull origin $(git rev-parse --abbrev-ref HEAD)

        docker-compose up
    fi

    sleep 60
done
