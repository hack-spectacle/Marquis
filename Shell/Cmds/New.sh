#!/bin/bash

echo "Command: Download/new"
echo "WARNING: CMD DOES NOT HAVE REWIND PROTOCOL"
echo "We are not able to be held accountable for any downloads that YOU make, we make the cmd, you use it after all!"

read -p "Url? " url

echo "Quick confirmation"
read -p "Do you confirm this action to be made? " confirm

if [ "$confirm" = "yes" ]; then
	read -p "Save as filename? " filename

	curl -L -o "$filename" "$url"

	echo "Download finished: $filename"
else
	echo "Cancelled."
fi
