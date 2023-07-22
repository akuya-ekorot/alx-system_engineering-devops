#!/usr/bin/env bash
# This scripts is used to install nginx in brand new ubuntu 16.04

# Install nginx
apt-get update
apt-get install -y nginx

# Start nginx
systemctl start nginx

# Enable nginx
systemctl enable nginx

# Check nginx status
systemctl status nginx
