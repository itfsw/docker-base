#!/bin/sh

# 读取环境变量写入htpasswd文件
echo "$AUTH_HTPASSWD" > /htpasswd

# 启动kibana和Nginx
/usr/sbin/nginx && /docker-entrypoint.sh kibana
