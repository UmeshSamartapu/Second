#!/bin/bash

# Append timestamp to log
echo "$(date -u +"%Y-%m-%dT%H:%M:%SZ")" >> streak.log

# Configure Git
git config --global user.name "GitHub Streak Bot"
git config --global user.email "streak-bot@users.noreply.github.com"

# Check for changes and commit only if there are any
if git diff --quiet && git diff --cached --quiet; then
  echo "No changes to commit."
else
  git add streak.log
  git commit -m "Streak update: $(date -u +'%Y-%m-%d %H:%M UTC')"
  git push origin HEAD:main  # Change 'main' if your branch name is different
fi
