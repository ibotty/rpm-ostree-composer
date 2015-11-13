#!/bin/sh
set -e

mkfifo /tmp/stdout
tail -f /tmp/stdout &
exec /usr/bin/polipo diskCacheRoot=/var/cache/polipo daemonise=false logFile=/tmp/stdout
