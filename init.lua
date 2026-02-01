require('config.lazy')

require('telescope.builtin')
local actions = require('telescope.actions')
require('telescope').setup{
	defaults = {
		mappings = {
			i = {
				["<esc>"] = actions.close
			}
		},
	}
}
vim.wo.number = true
vim.wo.relativenumber = true
vim.cmd [[:colorscheme kanagawa-dragon]]
vim.cmd [[:set tabstop=4]]
vim.cmd [[:set shiftwidth=4]]
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader><leader>', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>ft', builtin.help_tags, { desc = 'Telescope help tags' })
vim.keymap.set('n', '<leader>fh', '<cmd>Telescope find_files hidden=true no-ignore=true <cr>', { desc = 'Telescope find hidden files' })

vim.keymap.set('n', '<leader>dg', function() vim.cmd [[:colorscheme tokyonight-night]] end, { desc = 'DG-friendly theme' })
vim.keymap.set('n', '<leader>jj', function() vim.cmd [[:colorscheme kanagawa-dragon]] end, { desc = 'JJ-friendly theme' })
vim.keymap.set('n', '<leader>dg', function() vim.cmd [[:colorscheme delek]] end, { desc = 'JT-friendly theme' })
vim.keymap.set('i', 'jj', '<esc>', { desc = 'Personal preference'})
