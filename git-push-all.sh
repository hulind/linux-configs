#!/bin/bash

# Check if a commit message is provided as an argument
if [ $# -eq 0 ]; then
  echo "Usage: $0 <commit_message>"
  exit 1
fi

# Combine all arguments into a single commit message
commit_message="$*"

# Add all changes to the Git staging area
git add .

# Commit changes with the provided message
git commit -m "$commit_message"

# Push the changes to the remote repository
git push

echo "Done."