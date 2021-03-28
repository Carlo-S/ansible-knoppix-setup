#!/bin/bash
ansible-playbook -i hosts site.yml --extra-vars "@config.yml"
