# ubuntu-php7-apache
This is a Dockerfile I had to make for a job interview aptitude test.<br><br>
The task was as follows:<br>
"Create a custom Docker image that runs any web server, with php version 7.x and make
the homepage a phpInfo() page"

In hindsight, I could probably replace this (step 9 & 10):<br>
```
COPY index.php /var/www/html
RUN chmod 0644 /var/www/html/index.php
```

with something like this:

```
RUN touch /var/www/html/index.php && echo '<?php phpinfo(); ?>' > /var/www/html/index.php && chmod 0644 /var/www/html/index.php
```
<br>
as it will have the same result.
