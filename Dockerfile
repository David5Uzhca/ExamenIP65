FROM debian:latest

RUN apt-get update && apt-get install -y apache2

RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y nodejs npm

RUN npm install -g @angular/cli

COPY examen_UzhcaJuan /app
WORKDIR /app
RUN npm install
RUN ng build --configuration production

RUN cp -r /app/dist/* /var/www/html/

RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

# Exponer el puerto 80
EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]