#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $USERID -ne 0 ]; then
    echo "ERROR:: Please run this script with root privelege"
    exit 1 # failure is other than 0
fi

VALIDATE(){ # function receive inputs through args just like shell script args
    if [ $1 -ne 0 ]; then
    echo -e "ERROR:: Installing $2 is $R failure $R"
    exit 1 # failure is other than 0
else
    echo -e "Installing $2 is $G SUCCESS $N"
fi
}

dnf list installed mysql # Checking  if mysql 
# Install if it is not fround
if [$? -ne 0 ]; then 
    dnf install mysql -y
    VALIDATE $? "MySQL"
else 
    echo -e "MySQL already exist $Y SKIPPING $N";
fi

dnf list installed nginx
if [$? -ne 0 ]; then 
    dnf install ngnix -y
    VALIDATE $? "nginx"
else 
    echo -e "nginx already exist $Y SKIPPING $N";
fi

dnf list installed python3
if [$? -ne 0 ]; then 
    dnf install python3 -y
    VALIDATE $? "python3"
else 
    echo -e "python3 already exist $y SKIPPING $N";
fi