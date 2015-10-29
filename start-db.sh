#!/bin/bash

# start db image, #it takes a little while for this to start up. 
docker run --name respond-db -e MYSQL_ROOT_PASSWORD=my-secret-pw -d nsd/respondcms-db
