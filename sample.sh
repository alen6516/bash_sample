#####
# File Name: ttt.sh
# Author: alen6516
# Created Time: 2017-11-21
#####

#建議開頭
#!/bin/bash

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
export LANG="en_US.UTF-8"

#註解
#user comment

#定義變數與列印變數
VAR="hello world"
echo $VAR

printf "\33[1;31m"
printf "Color Version: $VAR"
printf "\33[0m\n"

#正常結束
exit 0

#if-else判斷式
if [ "$INPUT" == "Yes" ]; then
  echo "result is Yes"
elif [ "$INPUT" == "No" ]; then
  echo "result is No"
else
  echo "wrong input"
fi

#讀取argument
if [ ! -z "$1" ]; then
  ARGS=$1
fi
echo $ARGS

#檢查執行者身份
whoami_ret="$(whoami)"
if [ "$whoami_ret" != "root" ]; then
  echo "This script must be run as root"
  exit
fi

#使用者輸入
read -p "Please input (Y/N), default is N:" ANSWER
if [ "$ANSWER" == "Y" -o "$ANSWER" == "y" ]; then
  echo "result is Yes"
fi

#執行指令的結果
pyOpenSSL_ret="$(rpm -q python-openssl | grep install | wc -l)"
if [ "$pyOpenSSL_ret" == "1" ]; then
  echo "python-openssl is not installed, please install python-openssl"
  exit
fi  

#類似traverse陣列
SERVER_LIST=(192.168.0.1 192.168.0.2 192.168.0.3)
for IP in ${SERVER_LIST[@]}
do
  echo "IP address: $IP"
done

Switch case
case $CAR in
  AUDI | audi)
    echo "audi"
  ;;
  VOLVO | volvo)
    echo "volvo"
  ;;
  BENZ | benz)
    echo "benz"
  ;;
  *) 
    echo "wrong role type"
    exit
  ;;
esac

# while Loop
until [ "$ANSWER" == "yes" ]
do
  read -p "Please input \"yes\":" ANSWER
done

# while loop
i=0
while [ "$i" != "10" ]
do
  i=$(($i+1))
  echo $i
done

# for loop
for CAR in AUDI VOLVO BENZ
do
 echo ${CAR}
done

# for loop
for i in $(seq 1 10)
do
  echo ${i}
done

# for loop
for (( i=1; i<=10; i=i+1 ))
do
  echo $i
done

#等候某個事件發生
FILE_EXISTED=0;
while [ $FILE_EXISTED -ne "1" ]; 
do
  if [ -z "/root/test_file" ];then
    FILE_EXISTED=1
  fi
  sleep 1;
done

#Function
function PRINT_FUNCTION(){
  echo "args is $1"
}

PRINT_FUNCTION "first_args"
