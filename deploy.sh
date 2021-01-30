#!/bin/sh

# If a command fails then the deploy stops
set -e

printf "\033[0;32mDeploying updates to GitHub...\033[0m\n"

# Build the project.
# if using a theme, replace with `hugo -t <YOURTHEME>`
printf "\033[0;32mBuilding the project...\033[0m\n"
hugo

# Go To Public folder
printf "\033[0;32mGoing to public...\033[0m\n"
cd public

# Add changes to git.
printf "\033[0;32mAdding changes to git...\033[0m\n"
git add .

# Commit changes.
printf "\033[0;32mCommiting changes to git...\033[0m\n"
msg="rebuilding site $(date)"
if [ -n "$*" ]; then
	msg="$*"
fi
git commit -m "$msg"

# Push source and build repos.
printf "\033[0;32mPushing source and building repos to git...\033[0m\n"
git push origin main
