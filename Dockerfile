FROM fedora
MAINTAINER Mark L. Wood-Patrick

RUN dnf -y upgrade; dnf -y install systemd.x86_64 nginx; dnf clean all
# systemctl enable nginx
RUN mkdir -p /var/www/worpdress.server1.local/public
# RUN mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.backup
# ADD https://gist.githubusercontent.com/smissaertj/9d02fd974b64fd1a30fd905bc730a098/raw/dee50eb0bea7b93acb6ad0ddb6894cefb74c9d45/nginx.conf /etc/nginx/nginx.conf

ENV SCRIPTS_DIR=/scripts
COPY scripts/* ${SCRIPTS_DIR}/
RUN scripts/hello.sh

EXPOSE 80

# CMD ["/sbin/init"]
CMD ["ls /sbin; echo done"]
