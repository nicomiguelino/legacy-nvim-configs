local general = require('general')
local autocommands = require('autocommands')
local plugins = require('plugins')

general.init()
autocommands.init()
plugins.init()

-- Color scheme
vim.cmd.colorscheme "catppuccin-frappe"
