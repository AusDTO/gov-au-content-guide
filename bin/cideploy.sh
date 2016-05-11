#!/bin/bash

# Exit immediately if any commands return non-zero
set -e
# Output the commands we run
set -x

cf push gov-au-content-guide -b staticfile_buildpack -p ./_site -i 1
