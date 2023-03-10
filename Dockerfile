FROM ubuntu:18.04
SHELL ["/bin/bash", "-c"]
ENV LANG C.UTF-8
ENV TZ=Asia/Kolkata \
    DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get -y install software-properties-common && add-apt-repository ppa:ondrej/php && apt-get update && apt-get install -y apache2 && apt-get install -y php7.3
EXPOSE 80
RUN rm -rf /var/www/html/index.html
RUN touch /var/www/html/index.php && echo '<?php phpinfo(); ?>' > /var/www/html/index.php && chmod 0644 /var/www/html/index.php
ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
