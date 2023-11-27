-- nvim-tree
vim.keymap.set('n', '<leader>tt', ':NvimTreeToggle<CR>', { desc = 'Nvim-Tree Toggle' })
-- Buffer Navigation
vim.keymap.set('n', '<leader>bn', ':bnext<CR>', { desc = 'Next buffer' })
vim.keymap.set('n', '<leader>bp', ':bprev<CR>', { desc = 'Previous buffer' })
vim.keymap.set('n', '<leader>bc', ':bd<CR>', { desc = 'Close buffer' })
-- Window Navigation Remapping
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Go to the left window'})
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Go to the down window'})
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Go to the up window'})
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Go to the right window'})
-- Window Resize Remapping
vim.keymap.set('n', '<A-h>', '[[<cmd>vertical resize -5<cr>]]', { desc = 'Reduce horizontal size'})
vim.keymap.set('n', '<A-l>', '[[<cmd>vertical resize +5<cr>]]', { desc = 'Increase horizontal size'})
vim.keymap.set('n', '<A-j>', '[[<cmd>horizontal resize -5<cr>]]', { desc = 'Reduce vertical size'})
vim.keymap.set('n', '<A-k>', '[[<cmd>horizontal resize +5<cr>]]', { desc = 'Increase vertical size'})
