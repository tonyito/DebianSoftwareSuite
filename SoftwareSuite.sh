#!/bin/bash
# Ubuntu Software Suite Installer for Newly Formatted Systems

echo -e "\e[36mHi! Welcome to the Ubuntu Software Suite installer. This installer includes the following packages: Chrome Browser, Discord, Slack, Authy, VSCode, Postman, Signal, and Skype. You can select which ones you would like to install throughout the process. nIf you are running Ubuntu <16.04, you must install snap first by running 'sudo apt install snapd'.\e[0m"

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

SLACKOPTION="0"

if [ $INITIALIZE != "a" ]; then
    while [ $SLACKOPTION != "n" -o $SLACKOPTION != "y" ]; do
        echo -e "\e[32mWould you like to install Slack? y/n\e[0m"

        read SLACKOPTION

        if [ $SLACKOPTION == "n" ]; then
            SLACK=false
            break
        elif [ $SLACKOPTION == "y" ]; then
            SLACK=true
            break
        else
            echo "Could not register option $SLACKOPTION. Please type y/n."
        fi
    done
else
    SLACK=true
fi

if [ $SLACK == true ]; then
    echo "Installing The Latest Version of Slack..."
    sudo snap install slack --classic
else
    echo "Not Installing Slack."
fi

AUTHYOPTION="0"

if [ $INITIALIZE != "a" ]; then
    while [ $AUTHYOPTION != "n" -o $AUTHYOPTION != "y" ]; do
        echo -e "\e[32mWould you like to install Authy? y/n\e[0m"

        read AUTHYOPTION

        if [ $AUTHYOPTION == "n" ]; then
            AUTHY=false
            break
        elif [ $AUTHYOPTION == "y" ]; then
            AUTHY=true
            break
        else
            echo "Could not register option $AUTHYOPTION. Please type y/n."
        fi
    done
else
    AUTHY=true
fi

if [ $AUTHY == true ]; then
    echo "Installing The Latest Version of Authy..."
    sudo snap install authy --beta
else
    echo "Not Installing Authy."
fi