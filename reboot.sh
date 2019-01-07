#!/bin/bash

set -e

ESC_SEQ="\x1b["
COL_RESET=$ESC_SEQ"39;49;00m"
COL_RED=$ESC_SEQ"31;01m"
COL_GREEN=$ESC_SEQ"32;01m"

echo -n "Attempting to reboot that shitty router..."

curl -v 'http://192.168.1.1/login.cgi' -H 'Connection: keep-alive' -H 'Cache-Control: max-age=0' -H 'Origin: http://192.168.1.1' -H 'Upgrade-Insecure-Requests: 1' -H 'Content-Type: application/x-www-form-urlencoded' -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3658.0 Safari/537.36' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8' -H 'Referer: http://192.168.1.1/login.cgi' -H 'Accept-Encoding: gzip, deflate' -H 'Accept-Language: en-GB,en-US;q=0.9,en;q=0.8,fr;q=0.7' -H 'Cookie: lang=eng; lsid=GJVxxEXxebRFLnka' --data 'name=user&pswd=ineagpon' --compressed &> login.txt

echo -e $COL_GREEN"ok"$COL_RESET

echo -n "Logging in and getting cookies..."

SID=`cat login.txt | grep "< Set-Cookie: sid=" | cut -c 19-34`
LSID=`cat login.txt | grep "< Set-Cookie: lsid=" | cut -c 20-35`

echo $SID
echo $LSID

echo -e $COL_GREEN"ok"$COL_RESET

echo -n "Attempting reboot..."

curl -v 'http://192.168.1.1/system.cgi?reboot' -H "Cookie: lang=eng; sid=${SID}; lsid=${LSID}" -H 'Origin: http://192.168.1.1' -H 'Accept-Encoding: gzip, deflate' -H 'Accept-Language: en-GB,en-US;q=0.9,en;q=0.8,fr;q=0.7' -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3658.0 Safari/537.36' -H 'Content-Type: application/x-www-form-urlencoded' -H 'Accept: */*' -H 'Referer: http://192.168.1.1/system.cgi?reboot' -H 'X-Requested-With: XMLHttpRequest' -H 'Connection: keep-alive' --data 'data' --compressed
echo -e $COL_GREEN"ok"$COL_RESET

echo -n "Take this you piece of shit..."

echo -e $COL_GREEN"ok"$COL_RESET
