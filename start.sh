#!/bin/bash
#DO NOT MODIFY THIS FILE
#ANY MODIFICATIONS WILL BREAK YOUR SERVER
let "RAM=$1*50"
DIRS=`dirs -l`
/bin/kill -9 `/usr/sbin/lsof "$DIRS" | grep java | sed -e 's,[ \t][ \t]*, ,g' | cut -f2 -d' '` > /dev/null 2>&1
/usr/bin/java -server -Xmx"$RAM"M -Xms"$RAM"M -jar minecraft_server.jar nogui