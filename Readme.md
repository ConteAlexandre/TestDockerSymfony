# Project Test for doxker symfony with DB and manager db

## Proxy
```
* cd /docker/nginx-proxy
* docker create network nginx-proxy
* docker-compose up -d
```

## Configuration finally for hosts
In the file hosts, add the lines who follow
127.0.0.1     test-web.com
127.0.0.1     db.test-web.com

## Docker
For docker, create the file docker.env at the root project and add this variables
* MYSQL_ROOT_PASSWORD=
Who correspond at the mdp for root
* MYSQL_DATABASE=
The name of database who correspond at the same name in database_url in file .env.local
* MYSQL_USER=
The name of user who correspond at the same name in database_url in file .env.local
* MYSQL_PASSWORD=
The password of user who correspond at the same name in database_url in file .env.local

## Env local
Create file .env.local and paste the content of file .env and replace the url database

## Execut the application
Run this command in the root project:
```
* docker-compose up -d
```

Then, go the url [link](localhost:8000) for access at application
For acces at manage the db, the url is [db](localhost:8080), and enter the same data in docker.env

## Update the project
For update the project, execut the different command in the service, and for access in the service enter this command :
```
* docker-compose exec php-fpm bash
```
