require('general').init()
require('autocommands').init()
require('plugins').init()
require('keybindings').init()
require('filetree').init()
require('tabby').init()

local git_blame = require('gitblame')

function init_lualine()
    vim.g.gitblame_display_virtual_text = 0 -- Disable virtual text

    require('lualine').setup({
        sections = {
            lualine_c = {
                {
                    git_blame.get_current_blame_text,
                    cond = git_blame.is_blame_text_available
                }
            }
        }
    })
end

function init_commentary()
    -- Set `commentstring` of c++ files for `vim-commentary`.
    vim.api.nvim_exec([[
        au FileType cpp setlocal commentstring=//\ %s
    ]], false)
end

-- Color scheme
vim.cmd.colorscheme 'monokai'
vim.g.VM_theme = 'spacegray'

-- Main
init_lualine()
init_commentary()
