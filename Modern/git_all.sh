#! /bin/bash

DIRECTORY=$(dirname $0)

# Clear out all .hi and .o files.
cd $DIRECTORY
bash cleanup.sh

# Add all files to git.
cd ..
git add --all Modern

# Prompt to either add a message to a file, or just do a simple
# commit with the -m flag.
echo "Would you like to add a commit message to a file? (Y/n)"
read commitfile

# Do the commit.
if [ "$commitfile" == "y" ] || [ "$commitfile" == "" ]; then
    echo "Beginning full git commit..."
    git commit
    echo "Git commit file creation finished."
else
    echo "Enter commit message:"
    read commitmessage
    git commit -m $commitmessage
fi

# Prompt for permission to call git push, just in case.
echo "Proceed with git push? (Y/n)"
read pushproceed

# Call git push if necessary.
if [ "$pushproceed" == "y" ] || [ "$pushproceed" == "" ]; then
    echo "Beginning git push..."
    git push origin master
    echo "Git push finished."
else
    echo "Git push canceled."
fi

echo "Git helper program finished."
