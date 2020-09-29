# Nginx + PHP Auto Installer

## How to use it ?

1. Download The Repositroy
   ```bash
    git pull https://github.com/bishoyromany/nginx-php-autoinstaller
   ```
2. Extract it into **Partition D** in your hdd
3. Enter **D:\nginx** Folder
4. Open command line in **Administrator mode**, and run `./nginx-install.bat`, then restart your cmd.
5. Download php and extract the ZIP file into **D:\nginx\php**
6. Run `nginx-start` if your cmd is **out of nginx folder** _make sure to restart your cmd first_ or run `./nginx-start.bat` if you are **inside nginx folder**

## What are the available actions ?

1. Create new website by running `nginx-add-website`.

   #### You'd be asked to add the following inputs

   1. website domain name [default sample.nginx]
   2. webiste type [default laravel]
   3. website github repository [default none -> generates an empty folder, with hello worled index file]
   4. to view the website just run, `nginx-restart` then visit the domain name you entered, by default it's [sample.nginx](http://smaple.nginx)

2. Start nginx server, and PHP by running `nginx-start`.
3. Stop nginx server, and PHP by running `nginx-stop`.
4. Restart nginx server, and PHP by running `nginx-restart`.
5. Install environment variables, and creating required folders by running `nginx-install`.

## What is the structure of the folder

```
D:\nginx -> Root Folder
    readme.md -> Repository Information
    conf/ -> Configurations sections
        nginx.conf -> global nginx configs
        php.conf -> global php configs
        sites-enabled-sample/ -> and example of custom website configs
        sites-enabled/ -> custom websites configs
    php/ -> PHP folder, that contains all PHP files
    www/ -> the root folder of available websites
    nginx-install.bat -> install nginx system environment paths, and folders.
    nginx-restart.bat -> restart server and php
    nginx-start.bat   -> start nginx server and php
    nginx-stop.bat    -> stop nginx server and php
    nginx-add-website.bat    -> Create new project, with default nginx settings, like virtaul domain name etc...
    set-system-variables.ps1 -> set environment paths
```

## How to install this repository into custom path

Jsut replace D: into the following files by your custom path:  
`For example replaceing D: to C:, or C:\customDirectory`

1. d:\nginx\conf\nginx.conf
2. d:\nginx\conf\sites-enabled-sample\*.conf
3. d:\nginx\conf\sites-enabled\*.conf
4. d:\nginx\nginx-install.bat
5. d:\nginx\nginx-start.bat
6. d:\nginx\nginx-add-website.bat

## How can i add a custom virtual domain

Search for hosts file in windows, for more information [Click Here](https://www.liquidweb.com/kb/edit-host-file-windows-10/)
