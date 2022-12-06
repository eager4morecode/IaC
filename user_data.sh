#!/bin/bash
sudo yum install httpd
sudo firewall-cmd  —permanent  —add-port=80/tcp
sudo firewall-cmd  —permanent  —add-port=443/tcp
sudo systermctl start httpd.service
/var/www/html
sudo nano index.html
<!DOCTYPE HTML>

<html>

<head>

<style>

body{ background-color: green;

font-family: sans serif;

}
</style>

<title>Hello World Intro</title>

</head>

<body>

<h1>Hello World, My name is Webster. My favorite cloud provider is AWS.My virtual machine is fedora </h1>

</body>







</html>
