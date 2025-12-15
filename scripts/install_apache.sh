#!/bin/bash
# Update the system
yum update -y

# Install Apache Web Server
yum install -y httpd

# Start and Enable Apache
systemctl start httpd
systemctl enable httpd

# Create a simple landing page with the server's hostname
echo "<h1>Hello! This is a Scalable Web App on AWS</h1><p>Served by: $(hostname -f)</p>" > /var/www/html/index.html
