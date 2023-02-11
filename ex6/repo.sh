#!/bin/bash

ansible test -m  yum_repository -a 'name=ex204 description="ex294-repo" baseurl="https://download.fedoraproject.org/pub/epel/$releasever/$basearch/" gpgcheck=yes gpgkey="http://content.example.com/rhel7.5/x86_64/dvd/RPM-GPG-KEY-redhat-release" enabled=yes' -b

