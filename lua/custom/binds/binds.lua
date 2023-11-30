-- nvim-tree
vim.keymap.set('n', '<leader>tt', ':NvimTreeToggle<CR>', { desc = 'Nvim-Tree Toggle' })
-- Buffer Navigation
vim.keymap.set('n', '<leader>bn', ':bnext<CR>', { desc = 'Next buffer' })
vim.keymap.set('n', '<leader>bp', ':bprev<CR>', { desc = 'Previous buffer' })
vim.keymap.set('n', '<leader>bc', ':bd<CR>', { desc = 'Close buffer' })
-- Window Navigation Remapping - WIP Conflicting Binds
-- vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Go to the left window' })
-- vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Go to the down window' })
-- vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Go to the up window' })
-- vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Go to the right window' })
-- Window Resize Remapping
vim.keymap.set('n', '<A-h>', '[[<cmd>vertical resize -5<cr>]]', { desc = 'Reduce horizontal size' })
vim.keymap.set('n', '<A-l>', '[[<cmd>vertical resize +5<cr>]]', { desc = 'Increase horizontal size' })
vim.keymap.set('n', '<A-j>', '[[<cmd>horizontal resize -5<cr>]]', { desc = 'Reduce vertical size' })
vim.keymap.set('n', '<A-k>', '[[<cmd>horizontal resize +5<cr>]]', { desc = 'Increase vertical size' })
-- Format Command
vim.api.nvim_create_user_command("Format", function(args)
	local range = nil
	if args.count ~= -1 then
		local end_line = vim.api.nvim_buf_get_lines(0, args.line2 - 1, args.line2, true)[1]
		range = {
			start = { args.line1, 0 },
			["end"] = { args.line2, end_line:len() },
		}
	end
	require("conform").format({ async = true, lsp_fallback = true, range = range })
end, { range = true, desc = 'Format current buffer with Conform' })

vim.keymap.set('n', '<leader>xf', ':Format<CR>', { desc = 'Format Code'})
