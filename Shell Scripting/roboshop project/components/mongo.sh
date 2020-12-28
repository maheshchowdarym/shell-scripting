#!/bin/bash
COMPONENT=Mongodb
source components/common-output.sh
INFO "Setup Mongo component"

INFO "Setup MongoDB YUM COMPONENT"
#{include steps for mongo db repos}
STAT $? "Repository Setup"

INFO "Install Mongo dB"
yum install -y mongodb-org &>>$LOG_FILE
STAT $? "MongoDB Installed"

INFo "Update Mongodb Config"
sed -i 's/127.0.0.1/0.0.0.0' /etc/mongodb.conf
STAT $? "Mongodb config is updated"

INFO "Restart MongoDB"
systemctl enable Mongod &>>$LOG_FILE
systemctl restart mongod &>>$LOG_FILE
STAT $? "Restarted MongoDB"

INFO "Downloading MongoDB Schema"
DOWNLOAD_ARTIFACTS "https - github path"
SAT $? "Mongodb Schema is downloaded"

cd /tmp
INFO "Extract Artifacts"
unzip -o mongodb &>>$LOG_FILE
STAT $? "Artifacts Extracted"

INFO "Load schema - Catalogue Service"
mongo < catalouge.js &>>$LOG_FILE
STAT $? "Catalogue schema loaded"

INFO "Load Schema - Users Service"
STAT $? "Users Schema loaded"
mongo < users.js &>>$LOG_FILE





















