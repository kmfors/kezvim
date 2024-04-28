#!/bin/bash

# 检查目标目录是否存在，如果不存在则创建
mkdir -p ~/.config
mkdir -p ~/.local


# 提示用户是否继续删除操作
read -n 1 -p "Are you sure you want to delete ~/.config and ~/.local? (y/n): " answer

# 换行
echo

# 将用户输入转换为小写
answer=$(echo "$answer" | tr '[:upper:]' '[:lower:]')

# 判断用户输入是否为y，如果是则执行删除操作，否则退出脚本
if [ "$answer" = "y" ]; then
    echo "Deleting..."
    rm -rf ~/.config/* ~/.local/* ~/.cache
else
    echo "Exiting..."
    exit 0
fi


# 拷贝lua与local文件夹下的内容到目标目录
cp -r ./lua/* ~/.config/
#cp -r ./local/* ~/.local/

echo "kezvim is set success!"
