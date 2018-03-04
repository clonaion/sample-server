FROM debian:jessie

ADD sbin /etc/nginx/sbin
ADD conf /etc/nginx/conf
ADD logs /etc/nginx/logs

ADD entrypoint.sh /
RUN chmod +x /entrypoint.sh

#EXPOSE 8000/TCP;

ENTRYPOINT ["/entrypoint.sh"]