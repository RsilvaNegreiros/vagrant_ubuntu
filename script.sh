#!/bin/bash
apt update && apt upgrade -y && apt dist-upgrade -y
apt install -y nginx && service nginx restart