FROM kibana:5.3

# 防止有人错误映射了5601端口
RUN sed -i "s/server.host: '0.0.0.0'/server.host: '127.0.0.1'/g" /etc/kibana/kibana.yml

# 安装Nginx
RUN apt-get update && apt-get install --no-install-recommends --no-install-suggests -y nginx
EXPOSE 80

# 环境变量,认证文件内容
ENV AUTH_HTPASSWD admin:\$apr1\$iyh1Sj5.\$kVFjc2Nw9xrbz5rVdzPEC.

# Nginx配置文件
COPY kibana.conf /etc/nginx/conf.d/
RUN rm -f /etc/nginx/sites-enabled/default

# 启动脚本，把认证环境变量写入文件，启动Nginx和kibana
COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh

# 执行清理
RUN	rm -rf /var/lib/apt/lists/*;

ENTRYPOINT ["/entrypoint.sh"]