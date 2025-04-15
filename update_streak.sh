#!/bin/bash

# Append timestamp to streak.log
echo "$(date -u +"%Y-%m-%dT%H:%M:%SZ")" >> streak.log

# Configure Git
git config --global user.name "GitHub Streak Bot"
git config --global user.email "streak-bot@users.noreply.github.com"

# Add and commit if there's a change
git add streak.log
if git diff --cached --quiet; then
  echo "❌ No changes to commit."
else
  git commit -m "Streak update: $(date -u +'%Y-%m-%d %H:%M UTC')"
fi
