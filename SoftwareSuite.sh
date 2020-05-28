#!/bin/bash
# Ubuntu Software Suite Installer for Newly Formatted Systems

echo -e "\e[36mHi! Welcome to Tony's simple Ubuntu Software Suite installer. This installer includes the following packages: Chrome Browser, Discord, Slack, Authy, VSCode, Postman, Signal, and Skype. You can select which ones you would like to install throughout the process. If you are running Ubuntu <16.04, you must install snap first by running 'sudo apt install snapd'.\e[0m"

echo ""

echo -e "\e[32mType a to install all, y to continue with options, n to exit.\e[0m"

read INITIALIZE

if [ $INITIALIZE == "n" ]; then
    exit 0
fi

while [ $INITIALIZE != "a" -o $INITIALIZE != "y" ]; do
    echo "Could not register option $INITIALIZE. Please type a/y/n."

    read INITIALIZE

    if [ $INITIALIZE == "a" -o $INITIALIZE == "y" ]; then
    break
    fi
done

ZSHOPTION="0"

if [ $INITIALIZE != "a" ]; then
    while [ $ZSHOPTION != "n" -o $ZSHOPTION != "y" ]; do
        echo -e "\e[32mWould you like to install Z Shell? y/n\e[0m"

        read ZSHOPTION

        if [ $ZSHOPTION == "n" ]; then
            ZSH=false
            break
        elif [ $ZSHOPTION == "y" ]; then
            ZSH=true
            break
        else
            echo "Could not register option $ZSHOPTION. Please type y/n."
        fi
    done
else
    ZSH=true
fi

if [ $ZSH == true ]; then
    echo "Installing The Latest Version of Z Shell..."
    sudo apt-get install zsh
else
    echo "Not Installing Z Shell."
fi

if [ -x /usr/bin/zsh ]; then
    OMZOPTION="0"

    if [ $INITIALIZE != "a" ]; then
        while [ $OMZOPTION != "n" -o $OMZOPTION != "y" ]; do
            echo -e "\e[32mWould you like to install Oh My Zsh? y/n\e[0m"

            read OMZOPTION

            if [ $OMZOPTION == "n" ]; then
                OMZ=false
                break
            elif [ $OMZOPTION == "y" ]; then
                OMZ=true
                break
            else
                echo "Could not register option $OMZOPTION. Please type y/n."
            fi
        done
    else
        OMZ=true
    fi

    if [ $OMZ == true ]; then
        echo "Installing The Latest Version of Oh My Zsh..."
        sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
    else
        echo "Not Installing Oh My Zsh."
    fi
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

VSCODEOPTION="0"

if [ $INITIALIZE != "a" ]; then
    while [ $VSCODEOPTION != "n" -o $VSCODEOPTION != "y" ]; do
        echo -e "\e[32mWould you like to install VSCode? y/n\e[0m"

        read VSCODEOPTION

        if [ $VSCODEOPTION == "n" ]; then
            VSCODE=false
            break
        elif [ $VSCODEOPTION == "y" ]; then
            VSCODE=true
            break
        else
            echo "Could not register option $VSCODEOPTION. Please type y/n."
        fi
    done
else
    VSCODE=true
fi

if [ $VSCODE == true ]; then
    echo "Installing The Latest Version of VSCode..."
    sudo snap install --classic code
else
    echo "Not Installing VSCode."
fi

POSTMANOPTION="0"

if [ $INITIALIZE != "a" ]; then
    while [ $POSTMANOPTION != "n" -o $POSTMANOPTION != "y" ]; do
        echo -e "\e[32mWould you like to install Postman? y/n\e[0m"

        read POSTMANOPTION

        if [ $POSTMANOPTION == "n" ]; then
            POSTMAN=false
            break
        elif [ $POSTMANOPTION == "y" ]; then
            POSTMAN=true
            break
        else
            echo "Could not register option $POSTMANOPTION. Please type y/n."
        fi
    done
else
    POSTMAN=true
fi

if [ $POSTMAN == true ]; then
    echo "Installing The Latest Version of Postman..."
    sudo snap install postman
else
    echo "Not Installing Postman."
fi

SIGNALOPTION="0"

if [ $INITIALIZE != "a" ]; then
    while [ $SIGNALOPTION != "n" -o $SIGNALOPTION != "y" ]; do
        echo -e "\e[32mWould you like to install Signal? y/n\e[0m"

        read SIGNALOPTION

        if [ $SIGNALOPTION == "n" ]; then
            SIGNAL=false
            break
        elif [ $SIGNALOPTION == "y" ]; then
            SIGNAL=true
            break
        else
            echo "Could not register option $SIGNALOPTION. Please type y/n."
        fi
    done
else
    SIGNAL=true
fi

if [ $SIGNAL == true ]; then
    echo "Installing The Latest Version of Signal..."
    sudo snap install signal-desktop
else
    echo "Not Installing Signal."
fi

SKYPEOPTION="0"

if [ $INITIALIZE != "a" ]; then
    while [ $SKYPEOPTION != "n" -o $SKYPEOPTION != "y" ]; do
        echo -e "\e[32mWould you like to install Skype? y/n\e[0m"

        read SKYPEOPTION

        if [ $SKYPEOPTION == "n" ]; then
            SKYPE=false
            break
        elif [ $SKYPEOPTION == "y" ]; then
            SKYPE=true
            break
        else
            echo "Could not register option $SKYPEOPTION. Please type y/n."
        fi
    done
else
    SKYPE=true
fi

if [ $SKYPE == true ]; then
    echo "Installing The Latest Version of Skype..."
    wget https://go.skype.com/skypeforlinux-64.deb
    sudo apt install ./skypeforlinux-64.deb
else
    echo "Not Installing Skype."
fi

DELUGEOPTION="0"

if [ $INITIALIZE != "a" ]; then
    while [ $DELUGEOPTION != "n" -o $DELUGEOPTION != "y" ]; do
        echo -e "\e[32mWould you like to install Deluge? y/n\e[0m"

        read DELUGEOPTION

        if [ $DELUGEOPTION == "n" ]; then
            DELUGE=false
            break
        elif [ $DELUGEOPTION == "y" ]; then
            DELUGE=true
            break
        else
            echo "Could not register option $DELUGEOPTION. Please type y/n."
        fi
    done
else
    DELUGE=true
fi

if [ $DELUGE == true ]; then
    echo "Installing The Latest Version of Deluge..."
    sudo apt-get install deluge
else
    echo "Not Installing Deluge."
fi

echo -e "\e[32mAll Done!\e[0m"
