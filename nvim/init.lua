vim.loader.enable()

require("options")
require("keymaps")

require("plugins")
require("plugins/lualine")
require("plugins/onenord")
require("plugins/lsp")
require("plugins/nvim_cmp")
require("plugins/telescope")
require("plugins/jaq")

vim.g.sonictemplate_vim_template_dir = '~/.config/nvim/templates'
