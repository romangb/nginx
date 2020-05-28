FROM nginx
MAINTAINER wrongt@ya.ru

EXPOSE 80
EXPOSE 443

RUN apt update && apt -y install cron vim certbot python-certbot-nginx
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT []
CMD ["/bin/bash", "/entrypoint.sh"]
