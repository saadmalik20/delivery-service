# Docker Build Image for Delivery Service Project

## Setup Steps

Make sure your have installed [Docker](https://docs.docker.com/get-docker/) 

##### Steps One

```ssh
git clone git@github.com:saadmalik20/delivery-service.git delivery-service
cd delivery-service
```
##### Steps Two

Edit file of `php.ini` in `savyour-docker/php/php.ini` update `remote_host` of xdebug to your IP for debugging purpose eg:
```
xdebug.remote_host=YOUR_LOCAL_IP
```

##### Steps three

- open terminal
- Run ` sh start.sh`

##### DB connection
Connect MySQL using workbench and grant user permission & import DB script. Default Connection details will be:

  - HOST = `localhost`
  - USERNAME = `root`
  - PASSWORD = `pass`
  
Create a dabase `delivery-service`

## Step Four

- After successfull docker setup, goto inside docker image by exec this command `sudo docker exec -i -t delivery-php /bin/bash`
- Goto path : `cd /laravel-delivery-service`
- `composer install`
- `php artisan migrate`
- `php artisan db:seed --class=UserSeeder`
- `php artisan db:seed --class=ParcelSeeder`
- `php artisan passport:client --personal`
- `php artisan passport:install`

- After success composer install, hit `dev.delivery.local` in your browser. :)

### Troubleshooting

Make sure you have `dev.delivery.local` host edit your your */etc/hosts* file

#### How to Use

Open URL : http://dev.delivery.local this link will open login page.
Please take auto generated users email from users table for login here. 
`Password is 'password' for all auto generate users.`

`(user.type: 0=sender and 1=biker)`