local switch_color = {
    active = { fg = '#41145', bg = '#918d40' },
    inactive = { fg = '#233b6c', bg = '#bcb09c' },
}

require('lualine').setup {
    options = {
    icons_enabled = true,
    theme = 'onenord',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
        statusline = {},
        winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
        statusline = 1000,
        tabline = 1000,
        winbar = 1000,
    }
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {'filename'},
        lualine_x = {
            'encoding', 
            {
                'fileformat',
                symbols = {
                    unix = '',
                    dos = '',
                    mac = '',
                }
            },
            'filetype'
        },
        lualine_y = {'progress'},
        lualine_z = {'location'}
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {
        lualine_a = {
            {
                'buffers',
                buffers_color = switch_color,
                symbols = { modified = '_󰷥', alternate_file = '', directory = ' ' },
            },
        },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {'diff'},
        lualine_y = {'branch'},
        lualine_z = {
            { 'tabs', tabs_color = switch_color },
        }
    },
    winbar = {},
    inactive_winbar = {},
    extensions = {}
}
