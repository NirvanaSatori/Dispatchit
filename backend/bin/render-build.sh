# exit on error
set -o errexit
#run backend build command
bundle install 
bundle exec rake db:migrate 
bundle exec rake db:seed