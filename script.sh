#!/bin/bash
apt update && apt upgrade -y && apt dist-upgrade -y
apt-get install -y nginx && service nginx start