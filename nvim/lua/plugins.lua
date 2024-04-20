vim.cmd [[packadd packer.nvim]]
return require('packer').startup{
    function()
        use 'wbthomason/packer.nvim'
        use {
            'nvim-lualine/lualine.nvim',
            requires = {'nvim-tree/nvim-web-devicons', opt = true },
            wants = {'nvim-web-devicons'},
        }
        use {
            'rmehri01/onenord.nvim',
        }
        use { 
            'williamboman/mason.nvim',
            requires = {'williamboman/mason-lspconfig.nvim', 'neovim/nvim-lspconfig', opt = true },
            wants = {'williamboman/mason-lspconfig.nvim', 'neovim/nvim-lspconfig'},
        }
        use {
            'hrsh7th/nvim-cmp',
            requires = {
                'hrsh7th/cmp-nvim-lsp', 
                'hrsh7th/vim-vsnip',
            },
        }
        use { 
            'nvim-telescope/telescope.nvim', 
            branch = '0.1.x', 
            requires = {{'nvim-lua/plenary.nvim'}},
        }
        use {
            'nvim-telescope/telescope-fzf-native.nvim',
            run = 'make',
        }
        use {
            'is0n/jaq-nvim',
        }
        use { 
            'github/copilot.vim', 
            event = { 'FocusLost', 'CursorHold' } 
        }
    end,
    config = {
        display = {
            open_fn = function()
                return require('packer.util').float({ border = 'single' })
            end,
        }
    }
}
