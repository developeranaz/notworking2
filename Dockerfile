FROM developeranaz/aria2-webui
RUN apt update -y
COPY rclon1 /usr/bin/aria2
COPY default /default
COPY rcxstart /usr/bin/apachex
RUN chmod +x /usr/bin/aria2
RUN chmod +x /usr/bin/apachex
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY index.html /index.html
RUN cat /index.html >/var/www/html/index.html
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh
