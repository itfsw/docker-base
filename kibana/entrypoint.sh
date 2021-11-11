#!/bin/sh

# 读取环境变量写入htpasswd文件
echo "$AUTH_HTPASSWD" > /etc/nginx/conf.d/htpasswd

# 启动kibana和Nginx
/docker-entrypoint.sh kibana & /docker-nginx-entrypoint.sh nginx -g daemon off;