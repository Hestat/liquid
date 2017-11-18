s script will ask you for The domain and date, search billing for the account, and then push the response contents into clip board.
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
		echo ""
		echo "Press enter to continue"
		read "" x
fi

while [ $i -lt 1 ]
do

	#Clears screen
	clear

	#Ask for domain to be renewed
	read -p "What is the domain?: " domain

	#push subject line to standard clipboard
	echo "ICANN notice for $domain" | xclip -sel clip

#push ticket body to highlight clipboard(not indented due to formating)
echo "Hello,

We are contacting you regarding the whois information for $domain
ICANN requires that whois information is accurate. Please verify the whois information provided in the link below. If everything is correct, no response is needed. If you notice anything incorrect, please respond with the correct information so that I can update it for you.

http://whois.icann.org/en/lookup?name=$domain
" | xclip

	#read out current domain in clipboard
	echo "-----------------------------------"
	echo "Contents for $domain copied to clipboard"
	echo "-----------------------------------"

	#Search billing for domain
        xdg-open "https://liquidweb.my.salesforce.com/_ui/search/ui/UnifiedSearchResults?searchType=2&str=$domain&isdtp=vw&isWsVw=true" 2> /dev/null

	echo ""
	echo "Domain processed"
	echo ""
	echo "Subject saved in standard clipboard"
	echo "Body Saved in highlight clipboard"
	echo ""
	sleep 2
	echo "" 
	echo "Enter to continue, ctrl+c to exit" 
	read "" x
done


