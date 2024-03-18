#!/bin/bash

if [ $(id -u) != "0" ]; 
then
    echo "This script must be run as root"
    exit 1
fi

clear
echo
echo "⚠️  Disclaimer ⚠️"
sleep 2
echo
echo "This tool is developed for research and educational purposes.Please do not misuse it for any illegal activities.The usage of this tool is solely dependent on the user.If you engage into any illegal activities using this tool, the author will not be held responsible."

echo

echo "Thanks 🙏"
echo
sleep 2
echo "#####################################################################################################"

sleep 2
echo
echo "You need to install resourses to setup your darkweb website"
echo
sleep 2

function my_fun_1 () {
read -p "➛ Press the key to install (Y or N): " key

stty -echo
stty raw

stty echo
stty -raw

echo

if [ $key == Y ] || [ $key == y ];
 then
 	echo
	echo "Installing The Resources."
	echo
	$(apt-get install tor -y &> /dev/null)
	echo "Installing Tor"
	echo
	sleep 0.5
	$(apt-get install apache2 -y &> /dev/null)
	echo "Installing Apache2"
	echo
	sleep 0.5
	$(apt-get install nginx -y &> /dev/null)
	echo "Installing Nginx"
	echo
	$(apt-get install nano -y &> /dev/null)
	echo "Installing Nano"
	echo
	sleep 0.5
	$(apt-get install vim -y &> /dev/null)
	echo "Installing Vim"
	echo
	sleep 0.5
	echo "Resources installed successfully"
	sleep 3

elif [ $key == N ] || [ $key == n ];
 then
		echo "Resources already satisfied."
		echo
		sleep 2
    else
    	echo "Select a valid option."
    	sleep 2
    	echo
    	my_fun_1
    
fi
}

my_fun_1


     clear



sleep 1
echo "Welcome to DarkSite Tool."
sleep 1
echo
echo "Generate Your Own Dark Web Onion Website."
sleep 1
echo " ________                 __     ___________  __           " 
echo " \______ \ _____  _______|  | __/   _____/__|/  |_  ____   " 
echo "  |    |  \\__  \ \_  __ \  |/ /\_____  \|  |   __\/ __ \  " 
echo "  |    |   \/ __ \_|  | \/    \ /        \  ||  | \  ___/_ " 
echo " /_______  /____  /|__|  |__|_ \_______  /__||__|  \___  / " 
echo "         \/     \/            \/       \/              \/  " 
echo "                                                           "
echo "              Auther: Sagar Shewale                        "
echo "              Twitter: @imshewale                          "
echo "              Medium: https://imshewale.medium.com         "
echo "                                                           "

function my_fun_2 () {
echo
echo "First of all, You need to start TOR service, to create your onion website."
echo
read -p "➛ Start TOR service (Type Y): " yes

stty -echo
stty raw

stty echo
stty -raw

if [ Y == $yes ] || [ y == $yes ];
then
	$(service tor start)
	sleep 1
	echo
	echo "TOR has been started."
	sleep 2
	echo
else
	echo "Starting TOR service is necessary. Please type Y."
	sleep 3
	my_fun_2

fi

 }

my_fun_2

   clear


echo "#####################################################################################################"

function my_fun_3 () {

	echo
	echo "Just do little change into "/etc/tor/torrc" file."
	echo
	sleep 2
	echo """

	READ CAREFULLY, WHICH I WRITTEN INTO THE BOX


      ############### This section is just for location-hidden services ###
      
      ## Once you have configured a hidden service, you can look at the
      ## contents of the file ".../hidden_service/hostname" for the address
      ## to tell people.
      ##
      ## HiddenServicePort x y:z says to redirect requests on port x to the
      ## address y:z.
                                                                            _________________________
      #HiddenServiceDir /var/lib/tor/hidden_service/ <<==================== |Just Remove Hashes "#"   |
      #HiddenServicePort 80 127.0.0.1:80             <<==================== |From These 2 Lines.Then|
                                                                            |Save And Exit The File.|
      #HiddenServiceDir /var/lib/tor/other_hidden_service/                  |_______________________|
      #HiddenServicePort 80 127.0.0.1:80
      #HiddenServicePort 22 127.0.0.1:22                                                                                               
    


######################################################################################################

    """
    }
my_fun_3


function my_fun_4 (){ 
 echo 
 sleep 2
 read -p "➛ Change the file content and enable hidden services port & directory. (Type Y) : " yes

stty -echo
stty raw

stty echo
stty -raw

 if [ Y == $yes ] || [ y == $yes ];
   then 
	 function my_fun_4_1 () {
	 sleep 2
	 echo """
Open the file, with your favourite text editor:

1. Nano
2. Vim
	 """

	 read -p "➛ Enter your option: " option

            stty -echo
            stty raw
            
            stty echo
            stty -raw


	      if [ $option == 1 ]; 
	         then
		      echo "You are selected nano editor."
		      sleep 2
		      echo
		      echo "nano is opening"
		      sleep 2
		      echo
		      nano /etc/tor/torrc

	      elif [ $option == 2 ];
		     then
			  echo "You are selected vim editor"
			  sleep 2
			  echo 
			  echo "vim is opening"
			  sleep 2
			  echo
			  vim /etc/tor/torrc
		  else
			  echo "Select a valid option."
			  my_fun_4_1

		  fi
		}
	    my_fun_4_1

	else 
		echo "Select a valid option."
		my_fun_4

 fi
}
my_fun_4


   clear




 echo
 echo "You enable the TOR hidden services successfully"
 sleep 2
 echo

 function my_fun_5 () {
     read -p "➛ Restart the TOR services (Type Y): " yes
     sleep 2
     echo
        if [ Y == $yes ] || [ y == $yes ];
        then
        	echo "TOR service getting restart"
        	sleep 2
        	echo
        	$(service tor restart)
        else 
        	echo "Restart TOR service is necessary. Please type Y"
        	my_fun_5
        fi
}

my_fun_5 


   clear


function my_fun_6 () {

	echo """
Select your favourite webserver: 

1. Apache2
2. Nginx
     """
	
	read -p "➛ Enter your option: " option

            stty -echo
            stty raw
            
            stty echo
            stty -raw

	if [ $option == 1 ]; 
	then
		echo
		echo "Apache2 selected"
		sleep 2
		echo "Apache2 getting started"
		sleep 5
		echo
		service apache2 start &> /dev/null
	elif 
		[ $option == 2 ];
		then
			echo
			echo "Nginx selected"
			sleep 2
			echo "Ngnix getting started"
			sleep 5
			echo
			service nginx start &> /dev/null

	else
		echo "Select a valid option."
		my_fun_6

	fi

}
my_fun_6


    clear

echo "✯ Welcome To TOR World ✯"
echo
sleep 3
cd /var/lib/tor/hidden_service/
echo
echo "Entered into the directory called '/var/lib/tor/hidden_service/'.
All onion site information are into this directory"
echo
sleep 2
echo "➛ Your onion website is ready"
echo
sleep 2
echo "➛ Your TOR status"
echo
service tor status | grep Active:
echo
echo
sleep 2
echo "➛ Your hostname"
echo
cat hostname
echo
echo
sleep 2
echo "➛ Your public key"
echo
ls -la *_public_key
echo
echo
sleep 2
echo "➛ Your secret key"
echo
ls -la *_secret_key
echo
echo
sleep 2
echo "➛ Put your all files of HTML, CSS and JavaScript into directory called '/var/www/html' "
echo
sleep 2
echo "Happy Hacking Boys"
echo
exit 





