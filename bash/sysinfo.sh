#!/bin/bash
#This script will email us our user, ip, hostname and todays date

ip=$(ip a | grep 'dynamic ens192' | awk '{print$2}')

emailaddress=ethanmcmellan16@gmail.com
today=$(date +"%d-%m-%Y")
hostname=$HOSTNAME

content="User $USER, from $ip on $today from a computer with a hostname of $hostname"
mail -s "IT3038C Linux IP" $emailaddress <<< $(echo -e $content)
