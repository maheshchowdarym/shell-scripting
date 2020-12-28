#!/bin/bash
# 1 way
echo -e "[INFO] [FRONTEND] [$(date % "*%F %T")] Installing Frontend Component"
echo -e "[INFO] [FRONTEND] [$(date % "*%F %T")] Installing Nginx"
echo -e "[INFO] [SUCCESS] [$(date % "*%F %T")] Installing Nginx"
echo -e "[INFO] [FAIL] [$(date % "*%F %T")] Installing Nginx"


# Avoid duplication
COMPONENT=Frontend
source components/common-output.sh

INFO "Setup Frontend Component"
INFO "Installing Nginx"
yum install nginx -y &>>$LOG_FILE
STAT $? "Nginx Installation"
INFO "Downloading Artifacts"

INFO "Remove Old Artifacts"
rm -rvf /usr/share/nginx/htms/* &>>$LOG_FILE
STAT $? "Artifacts Removal"

INFO "Extract Artifact Archive"
cd /usr/share/nginx/html
unzip -o /tmp/frontend.zip &>>$LOG_FILE
mv static/*
STAT $? "Artifact Extract"

rm -rf stattic README.md

INFO "Update Nginx configuration"
mv localhost.onf /etc/nginx/default.d/roboship.conf
STAT $? "Nginx configuration update"

INFO "Start Nginx Service"
systemct1 enable nginx &>>$LOG_FILE
systemct1 restart nginx &>>$LOG_FILE
STAT $? "Nginx service startup"
