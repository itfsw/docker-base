#!/bin/sh

# 读取环境变量写入htpasswd文件
echo "$AUTH_HTPASSWD" > /etc/nginx/conf.d/htpasswd

# 启动kibana和Nginx，注意默认用户已经切换为root,这样才能执行写入htpasswd
# 但是kibana官方镜像里建议启动用户为kibana，需要注意处理
service nginx start && su -u kibana -c /docker-entrypoint.sh kibana
