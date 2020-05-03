#!/bin/bash
# Ubuntu Software Suite Installer for Newly Formatted Systems

echo -e "\e[36mHi! Welcome to the Ubuntu Software Suite installer. This installer includes the following packages: Chrome Browser, Discord, Slack, Authy, VSCode, Postman, Signal, and Skype. You can select which ones you would like to install throughout the process. nIf you are running Ubuntu <16.04, you must install snap first by running 'sudo snap install vlc'.\e[0m"

echo ""

echo -e "\e[32mType a to install all, y to continue with options, n to exit.\e[0m"

read INITIALIZE

if [ $INITIALIZE == "n" ]; then
    exit 0
fi

CHROMEOPTION="0"

if [ $INITIALIZE != "a" ]; then
    while [ $CHROMEOPTION != "n" -o $CHROMEOPTION != "y" ]; do
        echo -e "\e[32mWould you like to install Chrome? y/n\e[0m"

        read CHROMEOPTION

        if [ $CHROMEOPTION == "n" ]; then
            CHROME=false
            break
        elif [ $CHROMEOPTION == "y" ]; then
            CHROME=true
            break
        else
            echo "Could not register option $CHROMEOPTION. Please type y/n."
        fi
    done
else
    CHROME=true
fi

if [ $CHROME == true ]; then
    echo "Installing The Latest Version of Chrome..."
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo apt install ./google-chrome-stable_current_amd64.deb
else
    echo "Not Installing Chrome."
fi

DISCORDOPTION="0"

if [ $INITIALIZE != "a" ]; then
    while [ $DISCORDOPTION != "n" -o $DISCORDOPTION != "y" ]; do
        echo -e "\e[32mWould you like to install Discord? y/n\e[0m"

        read DISCORDOPTION

        if [ $DISCORDOPTION == "n" ]; then
            DISCORD=false
            break
        elif [ $DISCORDOPTION == "y" ]; then
            DISCORD=true
            break
        else
            echo "Could not register option $DISCORDOPTION. Please type y/n."
        fi
    done
else
    DISCORD=true
fi

if [ $DISCORD == true ]; then
    echo "Installing The Latest Version of Discord..."
    sudo snap install discord --classic
else
    echo "Not Installing Discord."
fi
