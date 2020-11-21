#!/bin/bash
V="https://www.youtube.com/watch?v=TTB0FSnpKBA&ab_channel=RTVENoticias"
echo $V
URL=$(youtube-dl -g -f 18  $V)
echo $URL
URL1=`echo $URL | cut -d '/' -f3`
echo $URL1
IP=$(dig -t a +short $URL1)
echo $IP
IP1=`echo $IP | cut -d ' ' -f2`
echo $IP1
whois $IP1
