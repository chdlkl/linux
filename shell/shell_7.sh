#!/bin/bash
read -p "请输入一个字符: " KEY
case "$KEY" in 
[a-z] | [A-Z])
echo "输入的是字母！"
;;
[0-9])
echo "输入的是数字！"
;;
*)
echo "输入的是空格、功能键或是其他控制字符！"
esac  # case反着写
