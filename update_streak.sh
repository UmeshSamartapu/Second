#!/bin/bash

# Append timestamp to streak.log
echo "$(date -u +"%Y-%m-%dT%H:%M:%SZ")" >> streak.log
