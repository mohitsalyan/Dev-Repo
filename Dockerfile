FROM centos:latest
MAINTAINER mohitkumar.salyan@gmail.com
RUN apache2 install
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic photogenic.zip
CMD ["apache2", "-D", "FOREGROUND"]
EXPOSE 80
