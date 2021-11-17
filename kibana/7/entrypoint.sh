#!/bin/sh

# 读取环境变量写入htpasswd文件
echo "$AUTH_HTPASSWD" > /etc/nginx/conf.d/htpasswd

# 启动kibana和Nginx
# kibana 官方镜像采用的启动用户是kibana，所以启动kibana换为用户kibana
/usr/sbin/nginx && runuser -l kibana -c /docker-entrypoint.sh kibana
