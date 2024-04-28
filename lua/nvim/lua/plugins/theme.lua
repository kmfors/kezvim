return {

-------------------------------- web图标 --------------------------------
    {'nvim-tree/nvim-web-devicons',
        --event = "BufRead",
    },

-------------------------------- 面板主题 -------------------------------
    {
        "EdenEast/nightfox.nvim",
        --config = true
        config = function()
            require('nightfox').setup({
                options = {
                    inverse = {             -- Inverse highlight for different types
                        match_paren = true,
                        visual = false,
                        search = false,
                    },
                },
            })
        end
    },

    { 
        'ellisonleao/gruvbox.nvim', 
        event = "VeryLazy",
        config = true
    },

------------------------------- 缓冲区主题 ------------------------------
    {
        'akinsho/bufferline.nvim', version = "*",
        event = "VeryLazy",
        --event = "BufRead",
        config = function()
            require("bufferline").setup({
                options = {
                    themable = false,           -- 控制主题色是否作为高亮
                    filetype = "NvimTree",
                    text = "File Explorer",
                    text_align = "center"
                }
            })
        end
    },


------------------------------- 状态栏主题 ------------------------------

    {
        'nvim-lualine/lualine.nvim',
        event = "VeryLazy",
        --event = "BufRead",
        config = function()
            require('lualine').setup({
                options = { theme = 'material'},
            })
        end
    },



    --{
    --    'nvim-lualine/lualine.nvim',
    --    dependencies = { 'nvim-tree/nvim-web-devicons' },
    --    event = "VeryLazy",

    --    config = function()
    --        require('lualine').setup ({
    --            options = {
    --                icons_enabled = true,
    --                theme = 'molokai',
    --                component_separators = { left = '', right = ''},
    --                section_separators = { left = '', right = ''},
    --                disabled_filetypes = {
    --                    statusline = {},
    --                    winbar = {},
    --                },
    --                ignore_focus = {},
    --                always_divide_middle = true,
    --                globalstatus = false,
    --                refresh = {
    --                    statusline = 1000,
    --                    tabline = 1000,
    --                    winbar = 1000,
    --                }
    --            },
    --            sections = {
    --                lualine_a = {'mode'},
    --                lualine_b = {'branch', 'diff', 'diagnostics'},
    --                lualine_c = {{'filename', path = 1}},
    --                lualine_x = {{'datetime', style = "%Y/%m/%d %H:%M "}, 'encoding', 'fileformat', 'filetype'},
    --                lualine_y = {'progress'},
    --                lualine_z = {'location'}
    --            },
    --            inactive_sections = {
    --                lualine_a = {},
    --                lualine_b = {},
    --                lualine_c = {'filename'},
    --                lualine_x = {'location'},
    --                lualine_y = {},
    --                lualine_z = {}
    --            },
    --            tabline = {},
    --            winbar = {
    --                lualine_a = {{
    --                    'buffers',
    --                    show_filename_only = true,   -- Shows shortened relative path when set to false.
    --                    hide_filename_extension = false,   -- Hide filename extension when set to true.
    --                    show_modified_status = true, -- Shows indicator when the buffer is modified.

    --                    mode = 2,   -- 0: Shows buffer name
    --                                -- 1: Shows buffer index
    --                                -- 2: Shows buffer name + buffer index
    --                                -- 3: Shows buffer number
    --                                -- 4: Shows buffer name + buffer number
    --                    max_length = vim.o.columns * 2 / 3, -- Maximum width of buffers component,
    --                    use_mode_colors = false,
    --                    symbols = {
    --                        modified = ' ●',      -- Text to show when the buffer is modified
    --                        alternate_file = '#', -- Text to show to identify the alternate file
    --                        directory =  '',     -- Text to show when the buffer is a directory
    --                    },
    --                }}
    --            },
    --            inactive_winbar = {},
    --            extensions = {}
    --        })
    --    end
    --},

}
