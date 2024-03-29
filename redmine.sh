#!/bin/bash

#redmine themes
cd ./themes/
unzip -u "*.zip" -d ../data/redmine/themes/

#redmine plugins
cd ../plugins/
unzip -u "*.zip" -d ../data/redmine/plugins/



#installing plugins
sudo docker exec -it redmine bash -c \
"cd /usr/src/redmine;
bundle install --without development test --no-deployment;
bundle exec rake redmine:plugins NAME=redmine_agile RAILS_ENV=production;
bundle exec rake redmine:plugins NAME=redmineup_tags RAILS_ENV=production;
bundle exec rake redmine:plugins NAME=redmine_checklists RAILS_ENV=production;
bundle exec rake redmine:plugins NAME=redmine_crm RAILS_ENV=production;"

