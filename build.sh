#!/bin/bash

# Download respond
if [ ! -d "respond" ]; then
	wget https://github.com/madoublet/respond/archive/master.zip
	unzip master.zip
	rm master.zip
fi

# Create db image
cat respond-docker-db/schema-base.sql > respond-docker-db/schema.sql
cat respond/schema.sql >> respond-docker-db/schema.sql

cd respond-docker-db
docker build -t nsd/respondcms-db .
cd .. #go back to root folder

# Create respond image
docker build -t nsd/respondcms .