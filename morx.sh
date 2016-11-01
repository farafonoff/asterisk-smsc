#!/bin/bash

SPOOL='/var/spool/asterisk/sms/morx'

for SMS in `ls -1 "$SPOOL"`; do
  #DST=`grep -e '^da=' "$SPOOL/$SMS" | sed 's/da=//'`
  MSG=`grep -e '^;ud=' "$SPOOL/$SMS" | sed 's/;ud=//' | cut -d$'\xbf' -f1`
  #/etc/asterisk/sms-motx.sh "97886206" "${DST}" "${MSG}"
	echo $SMS $MSG
	echo $MSG|mail -s sms -r farafonoff@gmail.com farafonoff@gmail.com
  rm -f "$SPOOL/$SMS"
done
