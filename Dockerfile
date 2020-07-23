FROM ubuntu
RUN apt-get update
RUN apt-get install -y apache2 && apt-get clean
COPY index.html /var/www/html/
WORKDIR /var/www/html
CMD ["apachectl", "-D", "FOREGROUND"]
EXPOSE 80
