require('general').init()
require('autocommands').init()
require('plugins').init()
require('keybindings').init()
require('filetree').init()
require('tabby').init()

local git_blame = require('gitblame')

function init_lualine()
    require('lualine').setup()
end

function init_commentary()
    -- Set `commentstring` of c++ files for `vim-commentary`.
    vim.api.nvim_exec([[
        au FileType cpp setlocal commentstring=//\ %s
    ]], false)
end

-- Color scheme
vim.cmd.colorscheme 'dracula'
vim.g.VM_theme = 'spacegray'

-- Main
init_lualine()
init_commentary()
