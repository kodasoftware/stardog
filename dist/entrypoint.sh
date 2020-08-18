#!/bin/bash

set -e

if [ -f /mnt/stardog/stardog.properties ]; then
  cp /mnt/stardog/stardog.properties /opt/stardog/stardog.properties
fi

echo "pack.node.address=$(hostname -f):5280" >> /opt/stardog/stardog.properties

exec "$@"
