local general = require('general')
local autocommands = require('autocommands')
local lazy = require('lazy')

general.init()
autocommands.init()
lazy.init()

require('lazy').setup({
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
})
