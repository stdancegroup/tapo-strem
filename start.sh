#!/bin/bash

ffmpeg -rtsp_transport tcp -i rtsp://stdance:13021993@192.168.100.11:554/stream1 \
-c:v libx264 -preset veryfast -crf 28 -c:a aac -f hls \
-hls_time 2 -hls_list_size 3 -hls_flags delete_segments \
/var/www/html/stream/index.m3u8 &

nginx -g "daemon off;"

