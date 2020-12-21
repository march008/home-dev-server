#!/bin/bash

#redmine themes
cd ./themes
unzip "*.zip" -d ./data/redmine/themes/

#redmine plugins
cd ../plugins
unzip "*.zip" -d ./data/redmine/plugins/



#installing plugins
sudo docker exec -it redmine bash
#in container
cd /usr/src/redmine
bundle install --without development test --no-deployment

bundle exec rake redmine:plugins NAME=redmine_agile RAILS_ENV=production
bundle exec rake redmine:plugins NAME=redmine_tags RAILS_ENV=production
bundle exec rake redmine:plugins NAME=redmine_contacts RAILS_ENV=production
bundle exec rake redmine:plugins NAME=redmine_crm RAILS_ENV=production

