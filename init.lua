local general = require('general')
local autocommands = require('autocommands')
local plugins = require('plugins')

general.init()
autocommands.init()
plugins.init()

-- Monokai configuration
vim.cmd 'colorscheme monokai'
