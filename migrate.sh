#!/bin/bash

NO_CREATE_DATABASE=false

# Parse command line args
POSITIONAL=()
while [[ $# -gt 0 ]]
do
    key="$1"

    case $key in
        --no-create-database)
            # Clobber everything
            NO_CREATE_DATABASE=true
            shift # past argument
            shift # past value
            ;;
        *)    # unknown option
            POSITIONAL+=("$1") # save it in an array for later
            shift # past argument
            ;;
    esac
done
set -- "${POSITIONAL[@]}" # restore positional parameters

# Unofficial Strict mode
set -euo pipefail
IFS=$'\n\t'

SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

if ! $NO_CREATE_DATABASE ; then
    docker-compose run rails rails db:create
fi
docker-compose run rails rails db:migrate
