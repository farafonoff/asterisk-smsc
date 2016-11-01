#!/bin/bash

SRC="${1}"
DST="${2}"
MSG="${3}"

CALLERID='99990'
CHANNEL="SIP/${DST}"

smsq --mt --tx \
  --mttx-callerid="${CALLERID}" \
  --mttx-channel="${CHANNEL}" \
  --oa="${SRC}" \
  --ud="${MSG}"
