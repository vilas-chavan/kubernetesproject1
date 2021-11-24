FROM centos:latest
MAINTAINER vilaschavan80@gmail.com
RUN yum install -y httpd \
    zip \
    unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page266/active.zip /var/www/html/
WORKDIR /var/ww/html
RUN unzip active.zip
RUN cp -rvf active/* .
RUN rm -rf active active.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
