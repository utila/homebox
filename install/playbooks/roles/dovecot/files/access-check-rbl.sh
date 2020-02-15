#!/bin/dash

# Check the IP address against rblcheck

# Post login script for Dovecot, this is parsed by the parrent script.
# Blocking: Yes
# RunAs: User
# NeedDecryptKey: No
# Score: Malus
# Description: IP blacklist check

# Add this score every time the IP is blacklisted
BLACKLISTED=$(grep IP_RBL_MALUS /etc/homebox/access-check.conf | cut -f 2 -d =)

# This both makes shellcheck happy and gives a default sensible value if the above fail
BLACKLISTED=$((BLACKLISTED == 0 ? 255 : BLACKLISTED))

# Do not change anything when the IP address is not found
NEUTRAL=0

# Security directory for the user, where the connection logs are saved
# and the custom comfiguration overriding
secdir="$HOME/security"

# Create a unique lock file name for this IP address
# Exit if a script already check this IP address
ipSig=$(echo "$IP:$SOURCE" | md5sum | cut -f 1 -d ' ')
lockFile="$secdir/$ipSig.lock"
test -f "$lockFile" && exit $NEUTRAL

# Start processing, but remove lockfile on exit
touch "$lockFile"
trap 'rm -f $lockFile' EXIT

# Needed the rblcheck executable
if [ ! -x /usr/bin/rblcheck ]; then
    logger "The program rblcheck is not found or not executable"
    exit $NEUTRAL
fi

# Count the number of times the IP is blacklisted
rblStatus=$(rblcheck "$IP")
listedCount=$?

if [ "$listedCount" != "0" ]; then

    list=$(echo "$rblStatus" | grep "$IP listed by" | sed 's/.*listed by //' | tr '\r' ',')
    cost=$(( BLACKLISTED * listedCount ))

    # This will be in the report
    echo "This IP address is blacklisted $listedCount times ($list)."

    exit $cost
fi

# Continue the normal access by default
exit $NEUTRAL
