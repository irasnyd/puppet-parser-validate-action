#!/bin/bash

set -euo pipefail

echo "ARGUMENTS: $@"
exec /opt/puppetlabs/bin/puppet parser validate "$@"
