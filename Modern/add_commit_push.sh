#! /bin/bash

DIRECTORY=$(dirname $0)

cd $DIRECTORY
bash cleanup.sh

cd ..
git add --all Modern

echo "Would you like to add a commit message to a file? (Y/n)"
read commitfile

if [ "$commitfile" == "y" ] || [ "$commitfile" == "" ]; then
    echo "Beginning full git commit..."
    git commit
    echo "Git commit file creation finished."
else
    echo "Enter commit message:"
    read commitmessage
    git commit -m $commitmessage
fi

echo "Proceed with git push? (Y/n)"
read pushproceed

if [ "$pushproceed" == "y" ] || [ "$pushproceed" == "" ]; then
    echo "Beginning git push..."
    git push origin master
    echo "Git push finished."
else
    echo "Git push canceled."
fi

