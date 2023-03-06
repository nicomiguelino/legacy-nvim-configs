local general = require('general')
local autocommands = require('autocommands')
local plugins = require('plugins')
local keybindings = require('keybindings')

general.init()
autocommands.init()
plugins.init()
keybindings.init()

-- Color scheme
vim.cmd.colorscheme "catppuccin-frappe"
