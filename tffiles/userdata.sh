#!/bin/bash

# # Install Python
sudo add-apt-repository -y ppa:jblgf0/python
sudo apt-get update
sudo apt-get install python3.7 -y

# Fix symlink for python3
sudo rm python3
sudo ln -s python3.7 python3

# Install Pip and Flask
sudo apt install python3-pip -y
 pip3 install flask
 pip3 install flask_mysql

# Alternatively, you can copy the file to the instance using a different method
git clone https://github.com/oguzhanaydogan/terraform-lb-phonebook-app.git /home/clouduser/terraform-lb-phonebook-app/
cd /home/clouduser/terraform-lb-phonebook-app/

# Start the Phonebook Application
sudo python3 phonebook-app.py



# yum update -y
# yum install python3 -y
# pip3 install flask
# pip3 install flask_mysql
# yum install git -y