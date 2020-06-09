#!/bin/bash -x

set -euo pipefail

if [[ "$#" -eq "0" ]]; then
	# No arguments given, run the syntax checker on every Puppet manifest in the current directory
	/usr/bin/find . -iname '*.pp' -type f -print0 | xargs -0 /opt/puppetlabs/bin/puppet parser validate
else
	# Run the syntax checker on the given files / directories
	exec /opt/puppetlabs/bin/puppet parser validate "$@"
fi
