#!/bin/bash
COMPONENT=Mongo
source components/common-output.sh

INFO "Setup Mongo Component"
INFO "Installing Nginx"
SUCC "Installing Nginx"
FAIL "Installing Nginx" "Reason is"