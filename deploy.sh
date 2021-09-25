#!/bin/sh

# If a command fails then the deploy stops
set -e

printf "\033[0;32mDeploying updates to GitHub...\033[0m\n"


# Build the project.
hugo
# Add changes to git.
git add .
# Commit changes.
git commit -m "$1"
# Pushing changes.
git push


cp -R public/* ../francoiducat.github.io/
rm -R public

cd ../francoiducat.github.io

# Add changes to git.
git add .
# Commit changes.
git commit -m "$1"
# Pushing changes.
git push

printf "\033[0;32mSucessfully Deployed to GitHub Pages...\033[0m\n"
