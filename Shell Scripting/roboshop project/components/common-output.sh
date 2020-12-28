#!/bin/bash
INFO() {
  echo -e "[INFO] [{COMPONENT}] [$(date % "*%F %T")] $1"
}

SUCC() {
  echo -e "[SUCC] [{COMPONENT}] [$(date % "*%F %T")] $1"
}

FAIL() {
  echo -e "[FAIL] [{COMPONENT}] [$(date % "*%F %T")] $1"
  echo -e "\n Refer Log File: $LOG_FILE for more info"
  exit 1
}

## Verify if USER is ROOT or not
USER_ID=$(id -u)
case $USER_ID in
  0)
    true ## Nothing to perform
    ;;
  *)
    echo -e "You should be root user to perform this scripts"
    exit 1
    ;;
esac

rm -f $LOG_FILE
LOG_FILE=/temp/roboshop.log

STAT() {
  case $1 in
  0)
    SUCC "$2"
    ;;
  *)
    Fail "$2"
    ;;
  esac
}

DOWNLOAD_ARTIFACT() {
  curl -s -o /temp/${COMPONENT}.zip $1 &>>$LOG_FILE
  STAT $? "Download Artifacts"
}










