#!/bin/bash
COMPONENT=catalogue
source components/common.sh

INFO "Setup Catalogue component"

INFO "Install NodeJS"
yum install nodejs make gcc-c++ -y &>>$LOG_FILE

INFO "Create application user"
useradd roboshope &>>LOG_FILE

STAT

INFO "Doenload catalof Application"
DOWNLOAD_ARTIFCAT "GITHUB LINK"

INFO "EXTRACT Artifacts"
mkdir -p /hoome/roboshop/${COMPONENT}
cd /home/roboshop/${COMPONENT}
unzip /tmp/${COMPONENT}
STAT $? "Artifacts EXTRACT"

INFO "INstall NodeJS dependecies"
npm install &>>$LOG_FILE
STAT $? "nodejs dependecies installation complete"




