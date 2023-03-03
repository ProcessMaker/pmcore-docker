#!/bin/bash
# Prompt for input with a default value
read -p "${GREEN}${BOLD}What version of ProcessMaker Open Source would you like to install? (press enter for latest dev release):${RESET} " version

# If the user didn't enter a version, use the default
if [[ -z "$version" ]]; then
    version="develop"
fi

# Set the version as an environment variable
export PROCESSMAKER_CORE_VERSION_INSTAll=$version

# Start the containers with the new version
docker-compose up