#!/bin/bash

# Add timestamp to log
echo "$(date -u +"%Y-%m-%dT%H:%M:%SZ")" >> streak.log

# Configure Git
git config --global user.name "GitHub Streak Bot"
git config --global user.email "streak-bot@users.noreply.github.com"

# Commit changes
git add streak.log
git commit -m "Streak update: $(date -u +'%Y-%m-%d %H:%M UTC')"