#!/bin/bash

# Author: Calvin C. Chan <https://github.com/calvincchan>
#
# Function description: Download a list of videos from URLs to the current directory.
# Usage: ./download.sh <list_file>
#
# List file format:
# <episode_name>-<episode_url>
# <episode_name>-<episode_url>
# ...
#
# Example list file:
# episode1-https://example.com/episode1.m3u8
# episode2-https://example.com/episode2.m3u8
#
# Requirements:
# - ffmpeg installed. You can install it using `brew install ffmpeg` on macOS or `sudo apt install ffmpeg` on Ubuntu.
# - List file with episode names and URLs

if [ -z "$1" ]; then
  echo "Usage: $0 <list_file>"
  exit 1
fi

list_file="$1"
names=()
urls=()

base_dir="downloads"

# Create the base directory if it doesn't exist
mkdir -p "$base_dir"

while IFS= read -r line; do
  # Extract the episode name and URL
  name=$(echo "$line" | cut -d'-' -f1)
  url=$(echo "$line" | cut -d'-' -f2-)

  # Store the name and URL in arrays
  names+=("$name")
  urls+=("$url")
done < "$list_file"

# Execute each command using the arrays
for i in "${!names[@]}"; do
  name="${names[$i]}"
  url="${urls[$i]}"
  # validate the URL and name
  if [ -z "$url" ] || [ -z "$name" ]; then
    echo "❌ Invalid URL \"$url\" or name \"$name\""
    continue
  fi
  echo "🚀 Downloading \"${name}.mp4\" from \"$url\""
  ffmpeg -loglevel warning -i "$url" -c copy "${base_dir}/${name}.mp4"
  echo "✨ Completed downloading \"${name}.mp4\""
done

echo "✅ All downloads completed!"