return { 

  --------------------------- 括号对齐--------------------------
  {
    'echasnovski/mini.pairs', version = '*',
    event = "VeryLazy",
    --config = true, -- 等价于下面
    config = function()
      require('mini.pairs').setup()
    end
  },

  --------------------------- git标志--------------------------
  {
    'lewis6991/gitsigns.nvim',
    event = "VeryLazy",
    --config = true, -- 等价于下面
    config = function()
      require('gitsigns').setup()
    end
  },

  --------------------------- 平滑滚动--------------------------
  {
    "karb94/neoscroll.nvim",
    event = "VeryLazy",
    --config = true, -- 等价于下面
    config = function ()
      require('neoscroll').setup({})
    end
  },

  ------------------------ 光标停留原位置-----------------------
  {
    "ethanholz/nvim-lastplace",
    config = function()
      require("nvim-lastplace").setup({
        lastplace_ignore_buftype = { "quickfix", "nofile", "help" },
        lastplace_ignore_filetype = {
          "gitcommit", "gitrebase", "svn", "hgcommit",
        },
        lastplace_open_folds = true,
      })
    end,
  },

  -------------------------- 语法高亮 --------------------------
  {
    'nvim-treesitter/nvim-treesitter',
    event = "VeryLazy",
    config = function ()
      require'nvim-treesitter.configs'.setup {
        ensure_installed = { "c", "cpp", "cmake", "lua", "bash", "vim", 
            "query", "markdown", "markdown_inline", "python"
        },
        auto_install = true,
        sync_install = false,
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        }
      }
    end
  },

} -- require end!
