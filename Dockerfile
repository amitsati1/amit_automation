FROM ubuntu
RUN apt-get update
RUN apt-get install -y apache2 
COPY index.html /var/www/html/
EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
