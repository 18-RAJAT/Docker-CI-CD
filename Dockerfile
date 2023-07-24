FROM ubuntu/apache2

RUN apt-get update

WORKDIR /app

RUN mkdir temp

RUN cd temp/

RUN apt-get install git -y 

RUN git clone https://github.com/18-RAJAT/Docker-CI-CD.git

RUN cd Docker-CI-CD/

RUN mv * /var/www/html/

cmd ['/var/www/html/']