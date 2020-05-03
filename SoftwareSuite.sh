#!/bin/bash
# Ubuntu Software Suite for Newly Formatted Systems

echo "Hi! Welcome to the Ubuntu Software Suite installer. This installer includes the following packages: Google Chrome, Discord, Slack, Authy, Postman, and Skype. You can select which ones you would like to install throughout the process."

echo "Type a to install all, y to continue with options, n to exit."

read INITIALIZE

if [ $INITIALIZE == "n" ]; then
    exit 0
fi

CHROMEOPTION="0"

while [ $CHROMEOPTION != "n" -o $CHROMEOPTION != "y" ]; 
do
    echo "Would you like to install chrome? y/n"

    read CHROMEOPTION

    if [ $CHROMEOPTION == "n" ]; then
        CHROME=false;
        break;
    elif [ $CHROMEOPTION == "y" ]; then
        CHROME=true
        break;
    else
        echo "Could not register option $CHROMEOPTION. Please type y/n."
    fi
done

if [ $CHROME == true ]; then
    echo "Installing Chrome..."
else
    echo "Not Installing Chrome."
fi
