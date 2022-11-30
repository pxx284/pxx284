FROM       registry.access.redhat.com/ubi7
RUN        yum install -y httpd
EXPOSE     80
COPY       ./src/   /var/www/html/
COPY       ./index.html   /var/www/html/
#USER       apache
ENTRYPOINT ["/usr/sbin/httpd"]
CMD        ["-D", "FOREGROUND"]