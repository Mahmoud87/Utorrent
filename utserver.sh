#!/bin/bash


USER="users"

echo "utorrent settings"
echo "================="
echo
echo "  User:       ${USER}"

#
# Copying webui.zip to work dir.
#

if [[ ! -e /utorrent/webui.zip ]]; then
    printf 'Copying webui.zip to /utorrent ...'
    cp /opt/utorrent/webui.zip /utorrent/webui.zip
    echo "[DONE]"
fi

#
# Finally, start utorrent.
#

echo 'Starting utorrent server...'
exec "/opt/utorrent/utserver -settingspath /utorrent/ -configfile opt/utorrent/utserver.conf -logfile /utorrent/utserver.log" ${USER}
