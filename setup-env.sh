#!/bin/bash

mkdir -p ./data/nginxmanager/{letsencrypt,data,db}
mkdir -p ./data/portainer/data
mkdir -p ./data/jenkins/data
mkdir -p ./data/reposilite/data
# mkdir -p ./data/gitlab/{config,data,logs}
mkdir -p ./data/gitea/{data,db}
# mkdir -p ./data/redmine/{data,db,themes,plugins}
mkdir -p ./data/db/{mysql,postgre}
# mkdir -p ./data/mailu
mkdir -p ./data/youtrack{data,confs,backups,logs}

chmod +777 ./data/jenkins/data
chown -R 13001:13001 ./data/youtrack

docker network create homenet

# sudo apt install -y zip unzip
