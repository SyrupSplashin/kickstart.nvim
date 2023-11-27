-- nvim-tree
vim.keymap.set('n', '<leader>tt', ':NvimTreeToggle<CR>', { desc = 'Nvim-Tree Toggle' })
-- Buffer Navigation
vim.keymap.set('n', '<leader>bn', ':bnext<CR>', { desc = 'Next buffer' })
vim.keymap.set('n', '<leader>bp', ':bprev<CR>', { desc = 'Previous buffer' })
vim.keymap.set('n', '<leader>bc', ':bd<CR>', { desc = 'Close buffer' })
