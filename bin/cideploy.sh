#!/bin/bash

# Exit immediately if any commands return non-zero
set -e

cf push content-style-guide -b staticfile_buildpack -p ./_site -i 1
