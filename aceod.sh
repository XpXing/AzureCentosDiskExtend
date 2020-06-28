#!/bin/bash
#System Required: Azure CentOS 7.X
#Vision 1.0 for Centos update on 2020/6/28

readme(){
        echo "注意事项
1.本傻瓜式脚本仅适用于Azure创建的Centos7虚拟机下的系统磁盘扩展,扩展的目录是/。
  在扩展之前请先确定已经在AzurePortal上进行过磁盘扩展。
2.请注意数据安全。"
        menu
}

extend(){
        echo "d
        
        n
        p
        
        
        
        w
        q
        "|sudo fdisk /dev/sda ; sudo partprobe ; sudo xfs_growfs / ;
}

clear
function menu()
{
cat << EOF
=======================================
|       AzureCentos系统磁盘扩展脚本  |
|           Made by Xp_Xing           |
=======================================
0.注意事项
1.磁盘扩展
2.退出脚本
EOF

read -p "输入选项：" choice
case $choice in
        0)
        readme
        ;;
        1)
        extend
        ;;
        2)
        exit
        ;;
        q)
        exit
        ;;
        *)
        clear
        echo -e "输入有误，请输入正确数字 [0-2]"
        sleep 1s
        menu
        ;;
esac
}
menu
