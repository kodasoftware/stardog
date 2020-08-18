#!/bin/bash

set -e

echo "pack.node.address=$(hostname -f):5280" >> /opt/stardog/stardog.properties

exec "$@"
