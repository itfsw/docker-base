#!/bin/sh

# 生成密码
echo "root:$PASSWORD" | chpasswd

/usr/sbin/sshd -D