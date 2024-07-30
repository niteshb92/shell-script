#!/bin/bash

ID=$(id -u) #id -u is shows the uid of that user

if [ $ID -ne 0 ] 
then
    echo "ERROR:: Please run this script with root access"
    exit 1 # if you can get other than 0
else
    echo "You are root user"
fi # fi means reverse of if, indicating condition end

yum install mysql -y

if [ $? -ne 0 ] # $? is denoted exit status
then
    echo "ERROR:: Installing MySQL is failed"
    exit 1 # if you can get other than 0
else
    echo "Installing MySQL is SUCCESS"
fi

yum install git -y

if [ $? -ne 0 ]  # $? is denoted exit status
then
    echo "ERROR:: Installing GIT is failed"
    exit 1 # if you can get other than 0
else
    echo "Installing GIT is SUCCESS"
fi