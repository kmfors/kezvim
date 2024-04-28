return {

  {
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
}
--
--
--return {
--    {
--        'nvim-tree/nvim-tree.lua',
--        config = true,
--        require("nvim-tree").setup({
--            sort_by = "case_sensitive",
--            hijack_cursor = true,
--            open_on_setup = false,
--            open_on_setup_file = true,
--            ignore_buffer_on_setup = true,
--            system_open = {
--                cmd = "open",
--            },
--            view = {
--                width = 5,
--                adaptive_size = true,
--            },
--            renderer = {
--                group_empty = true,
--                icons = {
--                    show = {
--                        git = true,
--                        file = false,
--                        folder = false,
--                        folder_arrow = true,
--                    },
--                    glyphs = {
--                        bookmark = " ",
--                        folder = {
--                            arrow_closed = "⏵",
--                            arrow_open = "⏷",
--                        },
--                        git = {
--                            unstaged = "✗",
--                            staged = "✓",
--                            unmerged = "⌥",
--                            renamed = "➜",
--                            untracked = "★",
--                            deleted = "⊖",
--                            ignored = "◌",
--                        },
--                    },
--                },
--            },
--            filters = {
--                dotfiles = false,
--            },
--        })
--    }
--}
--
