#!/bin/sh

# change password
echo root:"$PASSWORD" | chpasswd

/usr/sbin/sshd -D