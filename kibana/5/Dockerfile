FROM kibana:5.3

# 防止有人错误映射了5601端口
RUN sed -i "s/server.host: '0.0.0.0'/server.host: '127.0.0.1'/g" /etc/kibana/kibana.yml

# 安装Nginx
RUN apt-get update && apt-get install --no-install-recommends --no-install-suggests -y nginx
EXPOSE 80

# 环境变量和启动命令
ENV AUTH_HTPASSWD admin:\$apr1\$ah53ygoB\$Meiax10m3fpDvvqzNFruU.
COPY default.conf /etc/nginx/conf.d/
COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh

# 执行清理
RUN	rm -rf /var/lib/apt/lists/*;

ENTRYPOINT ["/entrypoint.sh"]