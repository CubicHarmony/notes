#!/bin/bash
# Notes installation. Local installation
# Will need to source to take effect
DESTDIR=~/bin/

# Allows anyone to execute
PERMISSIONS=755
# Give permissions
chmod $PERMISSIONS notes
# Create directories
mkdir -p $DESTDIR

# Adds bin to $PATH if it isn't already there
	if [ -d "$DESTDIR" ] && [[ ":$PATH:" != *":$DESTDIR:"* ]]; then
		echo export PATH=$PATH:$DESTDIR >> ~/.bashrc
	fi
source ~/.bashrc

# Move notes to bin
cp notes $DESTDIR

echo "All done, simply run 'source ~/.bashrc' and give the command a try!"
