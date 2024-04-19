-- デフォルトプラグイン
vim.api.nvim_set_var('loaded_gzip', 1)
vim.api.nvim_set_var('loaded_tar', 1)
vim.api.nvim_set_var('loaded_tarPlugin', 1)
vim.api.nvim_set_var('loaded_zip', 1)
vim.api.nvim_set_var('loaded_zipPlugin', 1)
vim.api.nvim_set_var('loaded_getscript', 1)
vim.api.nvim_set_var('loaded_getscriptPlugin', 1)
vim.api.nvim_set_var('loaded_vimball', 1)
vim.api.nvim_set_var('loaded_vimballPlugin', 1)
vim.api.nvim_set_var('loaded_matchit', 1)
vim.api.nvim_set_var('loaded_matchparen', 1)
vim.api.nvim_set_var('loaded_2html_plugin', 1)
vim.api.nvim_set_var('loaded_logiPat', 1)
vim.api.nvim_set_var('loaded_rrhelper', 1)
vim.api.nvim_set_var('loaded_netrw', 1)
vim.api.nvim_set_var('loaded_netrwPlugin', 1)
vim.api.nvim_set_var('loaded_netrwSettings', 1)
vim.api.nvim_set_var('loaded_netrwFileHandlers', 1)

-- インデント
vim.opt.autoindent = true 
vim.opt.smartindent = true
vim.opt.expandtab = true 
vim.opt.shiftwidth = 2 
vim.opt.softtabstop = 2
vim.opt.tabstop = 2

-- 検索
vim.opt.hlsearch = true -- 強調表示
vim.opt.incsearch = true -- リアルタイム表示
vim.opt.smartcase = true -- 大文字小文字を区別しない

-- 表示
vim.opt.cursorline = true 
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.showcmd = true
vim.opt.title = true
vim.opt.wrap = true

-- ファイル
vim.opt.autoread = true -- 外部変更を自動読み込み
vim.opt.hidden = true -- バッファ切り替え時の警告を無効化
vim.opt.swapfile = false
