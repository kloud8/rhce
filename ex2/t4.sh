#!/bin/bash 

ansible all -m user -a "name=ansible state=present password='{{'pass11' | password_hash('sha512')}}'" -b
ansible all -m authorized_key -a "user=ansible state=present key='{{lookup('file', '/home/ansible/.ssh/id_rsa.pub')}}'" -b
ansible all -m lineinfile -a "path=/etc/sudoers state=present line='ansible ALL=(ALL) NOPASSWD: ALL' validate='/usr/sbin/visudo -cf %s'"