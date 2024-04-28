return {
  'nvim-treesitter/nvim-treesitter',
  event = "VeryLazy",
  config = function ()
    require'nvim-treesitter.configs'.setup {
      ensure_installed = { "c", "cpp", "cmake", "lua" },
      sync_install = false,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      }
    }
  end

}
