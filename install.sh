#!/usr/bin/env bash

# Default the folder name to "36Kr".
folderName="36Kr"

# Determine the install directory.
installDirectory=~/Library/Developer/Xcode/Templates/File\ Templates/"$folderName"

# Create the install directory if it does not exist.
if [ ! -d "$installDirectory" ]
then
  mkdir -p "$installDirectory"
fi

# Copy all of the xctemplate folders into the install directory.
cp -r *.xctemplate "$installDirectory"

echo "Templates have been installed to $installDirectory"
