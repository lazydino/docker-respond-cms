FROM mariadb:latest

#Will be imported by mariadb upon docker image start
ADD  ./schema.sql /docker-entrypoint-initdb.d/
