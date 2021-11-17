FROM kibana:7.9.3

# 切换到root用户
USER root

# 防止有人错误映射了5601端口
RUN sed -i 's/server.host: "0"/server.host: "127.0.0.1"/g' /usr/share/kibana/config/kibana.yml

# 安装Nginx
RUN yum install -y epel-release && yum install -y nginx \
    && yum clean all && rm -rf /var/cache/yum/*;
EXPOSE 80

# 环境变量,认证文件内容
ENV AUTH_HTPASSWD admin:\$apr1\$iyh1Sj5.\$kVFjc2Nw9xrbz5rVdzPEC.

# Nginx配置文件
COPY kibana.conf /etc/nginx/conf.d/
RUN rm -f /etc/nginx/sites-enabled/default

# 启动脚本，把认证环境变量写入文件，启动Nginx和kibana
COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh && chown kibana /entrypoint.sh

# 切换到kibana用户
USER kibana

ENTRYPOINT ["/entrypoint.sh"]