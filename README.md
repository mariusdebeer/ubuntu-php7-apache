# ubuntu-php7-apache
This is a Dockerfile I had to make for a job interview aptitude test.
The index.php file is just a PHP Info file.  Can probably replace this:<br>
COPY index.php /var/www/html<br>
  with this:<br>
RUN touch /var/www/html/index.php && echo ' <?php phpinfo(); ?> ' > /var/www/html/index.php
<br>
as it will have the same result.
