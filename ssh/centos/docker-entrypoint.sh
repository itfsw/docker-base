#!/bin/sh

# change password
echo "$PASSWORD" | passwd --stdin root

/usr/sbin/sshd -D