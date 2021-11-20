#!/bin/sh

# 生成密码
echo "$PASSWORD" | passwd --stdin root

/usr/sbin/sshd -D