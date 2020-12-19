#!/bin/bash

mkdir -p ./data/nginx-manager/{letsencrypt,data,db}
mkdir -p ./data/portainer/data
mkdir -p ./data/jenkins/data
mkdir -p ./data/reposilite/data
mkdir -p ./data/gitlab/{config,data,logs}
mkdir -p ./data/redmine/{data,db,themes}
mkdir -p ./data/db/{mysql,postgre}
mkdir -p ./data/mailu

chmod +777 ./data/jenkins/data

docker network create homenet
