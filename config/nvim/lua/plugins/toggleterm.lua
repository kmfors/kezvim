return {

  ------------------------------- 终端窗口 ------------------------------
  'akinsho/toggleterm.nvim', version = "*", 
  event = "VeryLazy",

  config = function()
    require('toggleterm').setup({
      open_mapping = [[<c-\>]],
      -- 打开新终端后自动进入插入模式
      start_in_insert = true,
      -- 在当前buffer的下方打开新终端
      direction = 'float',
      --direction = 'horizontal',
      shade_filetypes = false,
      --persist_size = false,         -- 禁用此功能后(false)，打开终端的尺寸将强制为定义的尺寸。
      hide_numbers = true,
      dir = "git_dir",
    })

    function _G.set_terminal_keymaps()
      local opts = {buffer = 0}
      vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
      vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
      vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
      vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
      vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
      vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
      vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
    end

    ---- if you only want these mappings for toggle term use term://*toggleterm#* instead
    vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
  end

} -- require end!

