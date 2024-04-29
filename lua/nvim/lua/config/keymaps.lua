
-- 设置space为主键
vim.g.mapleader = " "

local keymap = vim.keymap

-- ------------------- 插入模式 ---------------------



-- ------------------- 视觉模式 ---------------------
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")


-- ------------------- 正常模式 ---------------------
-- 窗口
--keymap.set("n", "<leader>sv", "<C-w>v")             -- 水平新增窗口
--keymap.set("n", "<leader>sh", "<C-w>s")             -- 垂直新增窗口
keymap.set("n", "<leader>sv", ":vsplit vtemp.txt<CR>")             -- :vsp 水平新增窗口
keymap.set("n", "<leader>sh", ":split htemp.txt<CR>")             -- :sp 垂直新增窗口
keymap.set("n", "w", "<C-w>w")             -- 切换下一个窗口
keymap.set("n", "<leader>w", "<C-w><S-w>")         -- 切换上一个窗口

-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")

keymap.set("n", "<Tab>", ":bnext<CR>")              -- :bn切换下一个buffer
keymap.set("n", "<S-Tab>", ":bprevious<CR>")        -- :bp切换上一个buffer
--keymap.set("n", "1", ":buffer 1<CR>")               -- :bp切换第1个buffer
--keymap.set("n", "2", ":buffer 2<CR>")               -- :bp切换第2个buffer
--keymap.set("n", "3", ":buffer 3<CR>")               -- :bp切换第3个buffer
--keymap.set("n", "4", ":buffer 4<CR>")               -- :bp切换第4个buffer
--keymap.set("n", "5", ":buffer 5<CR>")               -- :bp切换第5个buffer

-- 启用鼠标支持
vim.api.nvim_set_keymap("n", "<F4>", ":set mouse=a<CR>",{noremap = false, silent = true})

-- 关闭鼠标支持
vim.api.nvim_set_keymap("n", "<F5>", ":set mouse=<CR>",{noremap = true})

-- 启用或关闭文件树
vim.api.nvim_set_keymap("n", "<F2>", ":NvimTreeFindFileToggle<CR>", {noremap = false, silent = true})

