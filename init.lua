math.randomseed(os.time())

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
if (math(random(2) == 1)) then
	vim.cmd [[:colorscheme evergarden-spring]]
else
	vim.cmd [[:colorscheme NeoCyberVim]]
end
vim.cmd [[:set tabstop=4]]
vim.cmd [[:set shiftwidth=4]]
vim.cmd [[:set expandtab]]
vim.cmd [[:set list]]
vim.cmd [[:set cursorcolumn cursorline]]
local builtin = require('telescope.builtin')
local grep_under = require('telescope-live-grep-args.shortcuts')
vim.keymap.set('n', '<leader><leader>', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('v', '<leader><leader>', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fc', grep_under.grep_word_under_cursor, { desc = 'Telescope live grep word under cursor' })
vim.keymap.set('v', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('v', '<leader>fc', grep_under.grep_visual_selection, { desc = 'Telescope live grep word in visual selection' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>ft', builtin.help_tags, { desc = 'Telescope help tags' })
vim.keymap.set('n', '<leader>fh', '<cmd>Telescope find_files hidden=true no-ignore=true <cr>', { desc = 'Telescope find hidden files' })

vim.keymap.set('n', '<leader>dg', function() vim.cmd [[:colorscheme tokyonight-night]] end, { desc = 'DG-friendly theme' })
vim.keymap.set('n', '<leader>jj', function() vim.cmd [[:colorscheme kanagawa-dragon]] end, { desc = 'JJ-friendly theme' })
vim.keymap.set('n', '<leader>dg', function() vim.cmd [[:colorscheme delek]] end, { desc = 'JT-friendly theme' })
vim.keymap.set('n', '<leader>NV', function() vim.cmd [[:colorscheme NeoCyberVim-dark]] end, { desc = 'Cyber-friendly theme' })
vim.keymap.set('n', '<leader>eg', function() vim.cmd [[:colorscheme evergarden-spring]] end, { desc = 'eco-friendly theme' })
vim.keymap.set('i', 'jj', '<esc>', { desc = 'Personal preference'})
vim.keymap.set('v', 'mm', '<esc>', { desc = 'Personal preference'})

vim.lsp.enable('bashls')
vim.lsp.enable('clangd')
vim.lsp.enable('lua_ls')
vim.lsp.enable('perlnavigator')
vim.lsp.enable('pylsp')
