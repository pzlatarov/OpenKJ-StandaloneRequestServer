# OpenKJ Standalone Request Server
Standalone basic single-venue request server implementation for use with OpenKJ.

This is a fork based on the late T. Isaac Lightburn's [implementation](https://github.com/OpenKJ/StandaloneRequestServer), with a couple of important changes.

# The Changes
- This fork uses MySQL instead of SQLite, which is arguably more popular and has wider support with various hosting providers.
- The API can be secured with an API key by defining an API_KEY constant within the settings.inc file.

# Project Description

Note: This is intended for people who already know how to configure and manage their own webservers and have a general familiarity with php.  The easier and more feature rich option is to use the hosted service available at https://okjsongbook.com

Requires PHP. Tested with PHP 8.3.

Can be run under either php's built in web server or under any web server with php support like apache or nginx.

~~Ignores any API key specified in the OpenKJ.~~ While this is true for the default configuration, an API key can be set in settings.inc.

If you were serving this from a web server as http://10.0.0.1/requestserver, you would configure the server URL in OpenKJ to point to http://10.0.0.1/requestserver/api.php 

settings.inc should be edited with the appropriate database settings. If the database doesn't exist, it will be created automatically, if the specified user has the rights to create databases.

# Docker
Since I like to do my PHP development in Docker containers, an example docker-compose.yml and Dockerfile are provided if you'd like to run the app within Docker.

**<span style="color:red">PLEASE NOTE!</span>** The provided docker-compose should NEVER EVER be used as is in production mode. It is provided for development purposes only. Should anyone wish to use the app with Docker in production, appropriate measures and care should be taken to secure the container(s) and remove any unnecessary dependencies.

To build and start the docker container stack just run:

`docker-compose up --build`