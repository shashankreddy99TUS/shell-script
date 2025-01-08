#!/bin/bash

USERID=$(id -u)

if [$USERID -ne 0]
then
   echo "ERROR:: You must have sudo access to execute the script"
   exit i
   fi

dnf list installed mysql

  if[$? -ne 0]
   dnf install mysql -y
   if[$? -ne 0]
   then
   echo "Installing MySQL....FAILURE"
   exit 1
   echo "Installing Mysql....SUCCESS"
   fi
   else
   echo "MYSQL is already .... INSTALLED"
   fi



   #if[$? -ne 0]
   #then
   #echo "Installing MySQL....FAILURE"
   #exit 1
   #echo "Installing Mysql....SUCCESS"
   #fi

dnf list installed git

if[$? -ne 0]
then
   dnf install git -y

if[$? -ne 0]
then
echo "Installing Git....FAILURE"
   exit 1
   echo "Installing Git....SUCCESS"
   fi
  else
   echo "GIT is already .... INSTALLED"
   fi


   #if[$? -ne 0]
   #then
   #echo "Installing Git....FAILURE"
   #exit 1
   #echo "Installing Git....SUCCESS"
   #fi


