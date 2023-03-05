local general = require('general')
local autocommands = require('autocommands')
local plugins = require('plugins')

general.init()
autocommands.init()
plugins.init()

-- Telescope configuration

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
