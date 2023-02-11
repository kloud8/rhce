#!/bin/bash

ansible test -m yum_repository -a "name=exam_rhel description='rhel-demo repo' baseurl=http://content.example.com/rhel7.5/x86_64/dvd gpgcheck=yes gpgkey=http://content.example.com/rhel7.5/x86_64/dvd/RPM-GPG-KEY-redhat-release enabled=yes" -b
