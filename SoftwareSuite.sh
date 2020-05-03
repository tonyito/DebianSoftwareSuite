#!/bin/bash
# Ubuntu Software Suite for Newly Formatted Systems

echo "Hi! Welcome to the Ubuntu Software Suite installer. This installer includes the following packages: Google Chrome, Discord, Slack, Authy, Postman, and Skype. You can select which ones you would like to install throughout the process.";

echo "Type y to continue, n to exit.";

read INITIALIZE;

if [ $INITIALIZE == "n" ]
then
   exit 0; 
fi

CHROME=false;



if [ $CHROME == true ]
then
    echo "Installing Chrome..."
else
    echo "Not Installing Chrome."
fi
