require('general').init()
require('autocommands').init()
require('plugins').init()
require('keybindings').init()
require('filetree').init()
require('tabby').init()

-- Color scheme
vim.cmd.colorscheme 'monokai'
vim.g.VM_theme = 'spacegray'
