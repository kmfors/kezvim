#!/bin/bash

# 检查目标目录是否存在，如果不存在则创建
mkdir -p ~/.config/nvim
mkdir -p ~/.local/share/nvim


# 提示用户是否继续删除操作
read -n 1 -p "Are you sure you want to delete ~/.config and ~/.local? (y/n): " answer

# 换行
echo

# 将用户输入转换为小写
answer=$(echo "$answer" | tr '[:upper:]' '[:lower:]')

# 判断用户输入是否为y，如果是则执行删除操作，否则退出脚本
if [ "$answer" = "y" ]; then
    echo "Deleting..."
    rm -rf ~/.config/nvim/* ~/.local/share/nvim/* ~/.local/state/nvim/* ~/.cache
else
    echo "Exiting..."
    exit 0
fi


cp -r ./config/nvim/* ~/.config/nvim 
cp -r ./local/nvim/* ~/.local/share/nvim

echo "kezvim is set success!"
