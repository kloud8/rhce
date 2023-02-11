#!/bin/bash

ansible all -m copy -a 'content="#!/bin/bash\necho hello from ansible" dest=/var/www/html/script.sh owner=ansible mode=0755' -b
ansible all -m command -a '/var/www/html/script.sh' -b
