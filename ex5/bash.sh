#!/bin/bash

ansible test -m yum_repository -a ' \
name="ex294_base" \
description="ex294 repo" baseurl="http://xxx.example.com.com/BaseOS" \  
gpgcheck=false \
gpgkey="http://xxx.example.com/RHEL/RPM-GPG-KEY-redhat-release "
enabled=true' -b


