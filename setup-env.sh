#!/bin/bash

mkdir -p ./data/nginx-manager/{letsencrypt,data,db}
mkdir -p ./data/portainer/data
mkdir -p ./data/jenkins/data
mkdir -p ./data/reposilite/data
mkdir -p ./data/gitlab/{config,data,logs}
mkdir -p ./data/openproject/{pgata,assets}
mkdir -p ./data/db/{mysql,postgre}
mkdir -p ./data/mailu

docker network create homenet
