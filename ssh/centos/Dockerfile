FROM centos:centos8

# 安装软件包
RUN yum install openssh-server net-tools passwd -y \
    && ssh-keygen -A \
    && mkdir /run/sshd \
    && rm -rf /var/cache/yum/*

# 启动脚本
ADD docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh

# 环境变量端口信息
ENV PASSWORD root
EXPOSE 22

ENTRYPOINT ["/docker-entrypoint.sh"]