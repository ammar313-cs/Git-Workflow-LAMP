# Use a PHP Apache base image
FROM php:8.0-apache

# Change the Apache port to 3001
RUN sed -i 's/Listen 3001/Listen 3001/' /etc/apache2/ports.conf

# Copy PHP info file to the web directory
RUN echo "<?php phpinfo(); ?>" > /var/www/html/info.php

# Allow read access to the PHP info file
RUN chmod 644 /var/www/html/info.php
