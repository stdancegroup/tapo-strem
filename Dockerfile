FROM ubuntu:22.04

RUN apt-get update && apt-get install -y ffmpeg nginx && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p /var/www/html/stream

COPY nginx.conf /etc/nginx/nginx.conf
COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 80

CMD ["/start.sh"]
