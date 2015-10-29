#!/bin/bash

# start web server
docker run -p 80:80 --link respond-db:mysql -i --rm nsd/respondcms