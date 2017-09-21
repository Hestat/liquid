#!/bin/bash

#This script will ask you for The domain and date, search billing for the account, and then push the response contents into clip board.
#The subject line gets dropped into the standard copy paste clipboard, and the message body gets put into the highlight middleclick clipboard.

#function for color coding
red=`tput setaf 1`
green=`tput setaf 2`
purple=`tput setaf 5`
reset=`tput sgr0`
bold=`tput bold`

#loop variable set
i="0"

#initial clear of screen
clear

#Check for Xclip being install
if [ "$(which xclip)" == "" ]
       then
               echo "${red}Xclip not found${reset}----Depedency missing. Aborting"
               echo "${bold}Please install Xclip before using this script${reset}"
               echo "-------------------------------------------"
               echo "${purple}apt-get install xclip${reset} -- Debian"
               echo "${purple}yum install xclip${reset} -- Centos/Redhat"
               exit 1
       else
               echo "${green}Xclip found${reset}"
        echo "
        "
        read -p "Expiration date?: " date
        echo " "
        echo "$date saved, Press enter to continue"
        read "" x
fi

while [ $i -lt 1 ]
do

    #Clears screen
    clear

    #Ask for domain to be renewed
    read -p "What is the domain?: " domain



    #Search Salesforce for domain
       xdg-open "https://liquidweb.my.salesforce.com/_ui/search/ui/UnifiedSearchResults?searchType=2&str=$domain&isdtp=vw&isWsVw=true" 2> /dev/null
    echo ""
    read -p "Customers primary email?:" email
    echo ""
    echo "Data saved, Press enter to continue"
    read "" x
    #Clears screen
    clear

    #read out current domain in clipboard
    echo "-----------------------------------"
    echo "Contents for $domain copied to clipboard"
    echo "-----------------------------------"


    #push subject line to standard clipboard
    echo "$domain will expire on $date" | xclip -sel clip

#push ticket body to highlight clipboard(not indented due to formating)
echo "Hello,

We have been notified that your domain:

$domain

will be expiring soon.

Please be aware that if your domain name or service is discontinued, any email, website, or other services that were associated with it may be affected.

You can extend registration of your domain(s) by logging into Manage, here:

https://manage.liquidweb.com/manage/network/

Selecting the "Domain Renewal" tab then clicking "Renew" after the corresponding domain.
" | xclip

    echo ""
    echo "Domain processed"
    echo ""
    echo "Subject saved in standard clipboard"
    echo "Body Saved in highlight clipboard"
    echo ""
    echo "-----------------------------------"
    echo "Customer's Primary Email"
    echo "-----------------------------------"
    echo ""
    echo $email
    sleep 2
    echo ""
    echo "Enter to continue, ctrl+c to exit"
    read "" x
done
