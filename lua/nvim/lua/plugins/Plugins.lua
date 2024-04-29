return { 
    ------------------------------- 代码补全LSP -------------------------------
    {
        'neoclide/coc.nvim', 
        branch = "release",
        event = "VeryLazy",
        --config = function()
        --    require('coc.nvim').setup()
        --end
    },
    ------------------------------- 智能缩进预览 -------------------------------
    { 
        'echasnovski/mini.indentscope', version = '*',
        config = function()
            require('mini.indentscope').setup()
        end
    },


    --------------------------------- 括号对齐 -------------------------------
    {
        'echasnovski/mini.pairs', version = '*',
        config = function()
            require('mini.pairs').setup()
        end
        --config = true, -- 等价于上面
    },

    --------------------------------- 高亮注释 -------------------------------
    { -- 注释高亮
    --'echasnovski/mini.comment', enable = false,
    --version = '*', 
    --enable = false,
    --config = function()
        --   require('mini.comment').setup()
        --end
    },
}
