#!/usr/bin/env bash

if [ -z "${NTP_SERVER}" ]; then
  NTP_SERVER="pool.ntp.org"
fi

crontab -l > crontab.out
echo "*/15 * * * * /nsenter/nsenter -t 1 -m -u -i -n ntpd -d -q -n -p `if [[ -f /etc/ntp.conf ]]; then cat /etc/ntp.conf | awk '{ print \$2 }'; else echo $NTP_SERVER; fi` >/dev/null 2>&1" >> crontab.out
crontab crontab.out
rm crontab.out
