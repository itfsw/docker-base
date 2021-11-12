FROM kibana:5.3

# 安装Nginx
RUN apt-get update && apt-get install --no-install-recommends --no-install-suggests -y nginx
EXPOSE 80

# 环境变量和启动命令
ENV AUTH_HTPASSWD admin:\$apr1\$ah53ygoB\$Meiax10m3fpDvvqzNFruU.
COPY default.conf /etc/nginx/conf.d/
COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]