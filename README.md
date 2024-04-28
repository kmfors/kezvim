# kezvim

## Person
Author: kmfors(DH)

Github: https://github.com/kmfors/kezvim


## Introduce

本项目主要基于[neovim](https://github.com/neovim/neovim/releases)编辑器，使用[lazyvim](https://www.lazyvim.org/)作为配置框架，添加众多插件和自定义配置来改造nvim，实现一个简易的IDE。
但目前还不具有LSP特性功能，本人研究有限，具体可以看[coc.nvim](https://github.com/neoclide/coc.nvim)的配置使用。

主要功能有：
- 背景主题、状态栏、buffer的美化配置
- c、cpp、cmake语言的语法分析高亮
- 浮动终端功能
- 文件树目录展示功能
- 括号补全、缩进动态效果
- 下载好的插件可随配置文件一起打包迁移至其他不同的linux系统使用


## Install
`set.sh`：第一次使用nvim所需的脚本配置直接 `./set.sh` 运行

使用步骤：

1. 运行`set.sh`完成初始配置（仅设置一次，已配置的请略过）
2. 请在`.profile`或者`.bashrc`中设置以下的环境变量，配置好后请`source`一下
3. 之后直接nvim命令进行插件下载

```shell
export NVIM={nerovim-bin-path}
export PATH=$PATH:$NVIM
```

## Custom command
- 浮动终端开启与关闭：`ctrl+\` 
- 文件树的开启与关闭：`<F2>`
- 鼠标启用：`<F4>`， 关闭`<F5>`
- 窗口切换：`w`
- buffer切换：`Tab`

## Tips:
1. 一定要确认`~`目录下的`.config`与`.local`中的文件是否需要备份！
2. nvim背景主题的设置在`.config/nvim/lua/start.lua`文件里，将color注释取消，重新打开文件即可实现主题切换。
3. 具体的配置请看config，根据自己的需求自定义配置。

配置的主题有：

carbonfox、dawnfox、dayfox、duskfox、nightfox、nordfox、terafox、gruvbox

主题效果请查看[nightfox.nvim](https://github.com/EdenEast/nightfox.nvim)。
