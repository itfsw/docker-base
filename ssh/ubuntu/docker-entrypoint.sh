#!/bin/sh

# 生成密码
echo -e "$PASSWORD\n$PASSWORD" | passwd root

/usr/sbin/sshd -D