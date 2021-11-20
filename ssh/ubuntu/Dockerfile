FROM ubuntu:22.04

# 替换镜像源
RUN sed -i 's#archive.ubuntu.com#mirrors.aliyun.com#g' /etc/apt/sources.list

# 安装软件包
RUN apt-get update \
    && apt-get install -y openssh-server net-tools passwd \
    && ssh-keygen -A \
    && rm -rf /var/lib/apt/lists/*

# 启动脚本
ADD docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh

# 环境变量端口信息
ENV PASSWORD root
EXPOSE 22

ENTRYPOINT ["/docker-entrypoint.sh"]