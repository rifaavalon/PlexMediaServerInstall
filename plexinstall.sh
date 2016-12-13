#!/bin/bash

echo Get Ready
sudo apt-get -y update && sudo apt-get -y upgrade


sudo apt-get -y install git curl build-essential python-pip 

echo Installing Plex Media Server
curl -O -L https://downloads.plex.tv/plex-media-server/1.3.2.3112-1751929/plexmediaserver_1.3.2.3112-1751929_amd64.deb

sudo dpkg -i plexmediaserver_1.3.2.3112-1751929_amd64.deb

echo Adding the PPA for Transmission
sudo add-apt-repository ppa:transmissionbt/ppa

sudo apt-get update

echo Installing Transmission

sudo apt-get install transmission-cli transmission-common transmission-daemon

echo Stopping Transmission
sudo service transmission-daemon stop

curl -s \ --form-string "token=amckugaoetpm5br2siyxb2pjwzgih1" \ --form-string "user=u98uge5qfnuww2v68nqecipp9oy7qh" \ --form-string "message=The Server Is Good to go!" \ https://api.pushover.net/1/messa
ges.json
