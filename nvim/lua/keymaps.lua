-- バッファ移動
vim.keymap.set('n', '<C-j>', ':bprev<CR>', { silent = true})
vim.keymap.set('n', '<C-k>', ':bnext<CR>', { silent = true})

vim.keymap.set("n", " ", "<Nop>", { silent = true, remap = false })
vim.g.mapleader = " "

vim.keymap.set('n', '<Leader>r', ':Jaq<CR>', { silent = true})
