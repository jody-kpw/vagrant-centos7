#!/bin/bash
# Update & Upgrade CentOS
yum update -y
yum upgrade -y

# Enable Software Collections (SCL)
sudo yum install -y centos-release-scl

# Installing Python 3 on CentOS 7
sudo yum install -y rh-python36

scl enable rh-python36 bash

# Installing Development Tools
sudo yum -y groupinstall 'Development Tools'

# Install python-pip and any required packages
sudo yum -y install python-pip

# Install Ansible
sudo yum install -y epel-release
sudo yum -y repolist
sudo yum install -y ansible

# Install Ansible
sudo yum install -y ansible

# Ansible
su -c  "ssh-keygen -f /root/.ssh/id_rsa -t rsa -N ''" root
cp /root/.ssh/id_rsa.pub /provision/cm/ssh-key/
