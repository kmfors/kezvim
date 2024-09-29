return {

  -------------------------------- web图标 --------------------------------
  {
    'nvim-tree/nvim-web-devicons',
    --event = "BufRead",
  },

  -------------------------------- 面板主题 -------------------------------
  {
    "EdenEast/nightfox.nvim",
    lazy = false,
    --config = true
    config = function()
      require('nightfox').setup({ options = {
        -- Inverse highlight for different types
        inverse = { match_paren = true,
        visual = false, search = false,},
      },})
    end
  },

  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },

  ------------------------------- 缓冲区主题 ------------------------------
  {
    'akinsho/bufferline.nvim', version = "*",
    --event = "VeryLazy",
    --event = "BufRead",
    config = function()
      require("bufferline").setup({ options = {
        themable = false,           -- 控制主题色是否作为高亮
        filetype = "NvimTree",
        text = "File Explorer",
        text_align = "center"
      }})
    end
  },

  ------------------------------- 状态栏主题 ------------------------------
  {
    'nvim-lualine/lualine.nvim',
    --event = "VeryLazy",
    --event = "BufRead",
    config = function()
      require('lualine').setup({
        options = { theme = 'material'},
      })
    end
  },

} -- require end!
