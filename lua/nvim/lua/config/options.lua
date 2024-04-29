-- local 用于设置变量
local opt = vim.opt

-- 清除所有之前定义的 autocmd 并从干净的状态开始
vim.cmd('autocmd!')

vim.scriptencoding = 'utf-8'
opt.encoding = 'utf-8'
opt.fileencoding = 'utf-8'

--opt.signcolumn = "yes"        -- 开启符合标记列

-- nvim刷新时间(ms)
opt.updatetime = 300

-- 关闭鼠标
vim.cmd([[set mouse=]])

-- 行号设置
--opt.number = true
--opt.relativenumber = true
opt.title = true

-- 使用系统剪贴板
opt.clipboard = 'unnamedplus'

-- 高亮所有匹配的搜索模式
opt.hlsearch = true

-- 禁止Neovim自动生成备份文件
opt.backup = false
opt.writebackup = false
opt.swapfile = false

-- 显示命令行渐入的命令
vim.opt.showcmd = true

-- 设置命令行高度为 1
vim.opt.cmdheight = 1

-- 每个分割窗口都有单独的状态行
vim.opt.laststatus = 2

vim.opt.shell = 'bash'
vim.opt.backupskip = { "*.bak", "*/tmp/*" }

-- 在分割窗口中进行增量搜索
vim.opt.inccommand = 'split'

-- 在 Vim 中显示换行线的可视指示
vim.opt.breakindent = true

-- 设置每个缩进级别使用的空格数
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

-- 自动缩进
opt.autoindent = true -- 等价ai

-- 智能缩进
vim.opt.si = true

-- 不换行
vim.opt.wrap = false

-- vim.opt.backspace = 'start,eol,indent'
vim.opt.path:append { '**' } -- 查找文件 - 向下搜索子文件夹
vim.opt.wildignore:append { '*/node_modules/*' }

-- 离开插入模式时取消粘贴模式
vim.api.nvim_create_autocmd("InsertLeave", {
   pattern = "*",
   command = "set nopaste"
})

-- 在注释行回车时自动插入注释符号
vim.opt.formatoptions:append { 'r' }

-- 默认新窗口右和下
opt.splitright = true
opt.splitbelow = true

-- 高亮显示光标所在的当前行
vim.opt.cursorline = true

-- 在终端中使用真彩色
vim.opt.termguicolors = true

-- 有补全选项时，将显示一个带有可用选择的弹出菜单
vim.opt.wildoptions = 'pum'

-- 弹出菜单的透明度，5是稍微透明，最大值100（全透明）
vim.opt.pumblend = 5

-- 背景颜色方案设置为"dark"，插件、颜色和语法高亮将针对暗背景进行优化。
vim.opt.background = 'dark'

-- 搜索
opt.ignorecase = true 			-- 忽略大小写
opt.smartcase = true


-- 右下角显示当前光标位置(默认开启)
opt.ruler = true

-- 窗口滚动
opt.scrolloff = 6

-- 标签栏列表
opt.showtabline = 0
