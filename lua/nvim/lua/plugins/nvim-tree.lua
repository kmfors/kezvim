return {
    ---------------------------------------- 文件树目录 -----------------------------------------
    'nvim-tree/nvim-tree.lua',
    event = "VeryLazy",
    config = function()
        -- disable netrw at the very start of your init.lua
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        -- optionally enable 24-bit colour
        vim.opt.termguicolors = true
        vim.api.nvim_create_autocmd("BufEnter", {
            group = vim.api.nvim_create_augroup("NvimTreeClose", {clear = true}),
            pattern = "NvimTree_*",
            callback = function()
                local layout = vim.api.nvim_call_function("winlayout", {})
                if layout[1] == "leaf" and vim.api.nvim_buf_get_option(vim.api.nvim_win_get_buf(layout[2]), "filetype") == "NvimTree" and layout[3] == nil then vim.cmd("confirm quit") end
            end
        })
        -- empty setup using defaults
        require("nvim-tree").setup({
            sort = {
                sorter = "case_sensitive",
            },
            view = {
                width = 30,
            },
            renderer = {
                group_empty = true,
            },
            filters = {
                dotfiles = true,
            },
        })
    end
}
