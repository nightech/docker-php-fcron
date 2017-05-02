# Docker Php Fcron

Dockerfile for fcron based on [nightech/php-fpm](https://hub.docker.com/r/nightech/php-fpm/) 

## Installation 
* Make your own image and put your cron script on `/overlay/etc/cron.d/` directory
* You can wrap your script with command wrapper (example: `0,15,30,45 * * * * /usr/local/bin/docker-fcron-wrapper echo "done"`), it will 
  * Block concurent same command  
  * Inject environment variable
