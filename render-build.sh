#!/usr/bin/env bash
# exit on error
set -o errexit

# builds the front end code
rm -rf public
npm install --prefix frontend && npm run build --prefix frontend
cp -a frontend/build/. public/

# builds the back end code
bundle install --prefix backend
bundle exec rake db:migrate --prefix backend
bundle exec rake db:seed --prefix backend # if you have seed data, run this command for the initial deploy only