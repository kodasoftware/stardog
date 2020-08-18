#!/bin/bash

set -e

if [ -f /mnt/stardog/stardog.properties ]; then
  echo "Setting stardog properties from mounted file"
  cp /mnt/stardog/stardog.properties $STARDOG_HOME/stardog.properties
else
  echo "No stardog properties found at mountpoint"
fi

printf '\n%s' "pack.node.address=$(hostname -f)" >> $STARDOG_HOME/stardog.properties

/opt/stardog/bin/stardog-admin server start --foreground --home $STARDOG_HOME --verbose
