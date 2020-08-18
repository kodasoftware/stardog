#!/bin/bash

set -e

if [ -f /mnt/stardog/stardog.properties ]; then
  echo "Setting stardog properties from mounted file"
  cp /mnt/stardog/stardog.properties /opt/stardog/stardog.properties
else
  echo "No stardog properties found at mountpoint"
fi

echo "pack.node.address=$(hostname -f):5280" >> /opt/stardog/stardog.properties

/opt/stardog/bin/stardog-admin server start --foreground --home $STARDOG_HOME --verbose
