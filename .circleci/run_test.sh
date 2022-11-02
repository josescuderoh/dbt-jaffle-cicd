#!/bin/bash

# Show location of local install of dbt
echo $(which dbt)

# Show version and installed adapters
dbt --version

# Set the profile
cd .circleci
cp sample.profiles.yml profiles.yml
export DBT_PROFILES_DIR=.

# Show the location of the profiles directory and test the connection
# dbt debug --profile cicd_pipeline --target $1
dbt docs generate --profile cicd_pipeline --target $1
