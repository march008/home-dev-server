#!/bin/bash

#redmine themes
cd ./themes
unzip "*.zip" -d ./data/redmine/themes/

#redmine plugins
cd ../plugins
unzip "*.zip" -d ./data/redmine/plugins/
