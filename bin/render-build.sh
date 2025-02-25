#!/usr/bin/env bash
# Exit on error
set -o errexit

# Install dependencies
bundle install --without development test

# Run database migrations
bundle exec rails db:migrate

# Precompile assets
bundle exec rails assets:precompile

# Clear cache
bundle exec rails tmp:cache:clear

