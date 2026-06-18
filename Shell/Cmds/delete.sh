#!/bin/bash

echo "Command: Remove"
echo "WARNING: CMD DOES NOT HAVE REWIND PROTOCOL"

read -p "Do you confirm this action? This action will auto delete the file with no chance of recovery! " answer

if [ "$answer" = "yes" ]; then
	read -p "Is the file type a folder or a file? " ans
	read -p "Enter the name/path: " target

	if [ "$ans" = "file" ]; then
		rm "$target"
		echo "File removed."
	elif [ "$ans" = "folder" ]; then
		rm -r "$target"
		echo "Folder removed."
	else
		echo "Invalid choice. Type file or folder."
	fi

else
	echo "Cancelled."
fi
