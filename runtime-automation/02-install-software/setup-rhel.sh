#!/bin/sh
echo "Starting module called 02-install-software" >> /tmp/progress.log

sed -e '/^metalink=https:\/\/mirrors.fedoraproject.org\/metalink/ s/^/#/' \
    -e '/^#baseurl=http:/ s/http/https/' \
    -e '/^#baseurl=https:\/\/download.example/ s/^#//' \
    -e '/^baseurl=https:\/\/download.example/ s_https://download.example_https://dl.fedoraproject.org_' \
    -i /etc/yum.repos.d/epel*.repo
