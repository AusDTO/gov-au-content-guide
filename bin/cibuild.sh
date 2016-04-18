#!/usr/bin/env bash

# Fail fast and be aware of exit codes
set -eo pipefail

# Setup Ruby
gem install --conservative bundler
bundle install

# run jekyll hyde (lint)
bundle exec jekyll hyde

# Run jekyll build
bundle exec jekyll build
