#!/bin/bash
PRICE=$(expr $RANDOM % 1000)
#使用$RANDOM变量来调取出一个随机数（范围：0-32767）
#这个随机数对1000取余数，并用expr命令提取结果
TIMES=0
echo "商品实际价格为0-999元，猜猜看..."
while true
do
read -p "请输入猜测的价格: " INT
let TIMES++  # 使用let累加
if [ $INT -eq $PRICE ]; then
echo "恭喜猜对了，实际价格是$PRICE"
echo "总共猜对了$TIMES次"
exit 0  # 跳出while循环
elif [ $INT -gt $PRICE ]; then
echo "太高了！"
else
echo "太低了！"
fi
done
