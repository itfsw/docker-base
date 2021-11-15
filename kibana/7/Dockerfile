FROM kibana:7.9.3

# 切换到root用户
USER root

# 防止有人错误映射了5601端口
RUN sed -i 's/server.host: "0"/server.host: "127.0.0.1"/g' /usr/share/kibana/config/kibana.yml

# 安装Nginx
RUN yum update && yum -y install nginx
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
RUN	yum clean all && rm -rf /var/cache/yum/*

# 切换为kibana用户
USER kibana

ENTRYPOINT ["/entrypoint.sh"]