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
yum install nginx -y &>>LOG_FILE
SUCC "Installing Nginx"
FAIL "Installing Nginx" "Reason is"