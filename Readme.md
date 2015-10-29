# Dockerized Respond CMS.

Still quite experimental. Currently don't have plans for making this super robust. But it can serve to kickstart someone else out there? Only tested on Ubuntu 14.04.

# Prerequisites

1. [Docker](docker.com).

# Usage

1. Run `./build.sh` to fetch the latest Respond Cms and construct a Docker image for database and web server.
2. Run `./start-db.sh` which will start up a database docker container. It might take 5-20s before it's completely ready.
3. Run `./start-server.sh` to start the web server.
4. Visit `http://localhost/respond/app/` to see the admin screen.

Troubleshoot: Visit `http://localhost/respond/app/test/` to see a health check overview. 

# Tips

Both docker images allow for persisting data changes to disk through either data containers or mounting host folders. For guides on that please see:

-	[Php docker image (with and without Apache)](https://hub.docker.com/_/php/)
- [MariaDB docker image](https://hub.docker.com/_/mariadb/)

# TODO

1. Figure out a sensible Apache virtual hosts setup that can resolve all urls properly while on localhost. There seems to still be some bugs around when creating sites. 
