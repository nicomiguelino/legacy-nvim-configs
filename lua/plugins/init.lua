local telescope_config = require('plugins/telescope_config')

local module = {}

function module.init()
    local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'

    if not vim.loop.fs_stat(lazypath) then
        vim.fn.system({
            "git",
            "clone",
            "--filter=blob:none",
            "https://github.com/folke/lazy.nvim.git",
            "--branch=stable", -- latest stable release
            lazypath,
        })
    end

    vim.opt.rtp:prepend(lazypath)

    require('lazy').setup({
        {
            'nvim-telescope/telescope.nvim', tag = '0.1.1',
            dependencies = { 'nvim-lua/plenary.nvim' }
        },
        'github/copilot.vim',
        'crusoexia/vim-monokai',
        'nvim-lualine/lualine.nvim',
        'nvim-tree/nvim-web-devicons',
        'sheerun/vim-polyglot',
        {
            'nvim-tree/nvim-tree.lua',
            dependencies = {
                'nvim-tree/nvim-web-devicons',
            },
            version = 'nightly',
        },
        'MattesGroeger/vim-bookmarks',
        'tom-anders/telescope-vim-bookmarks.nvim',
        'windwp/nvim-autopairs',
        'tpope/vim-commentary',
    })

    telescope_config.init()
    require('lualine').setup()
    require('nvim-web-devicons').setup()
    require("nvim-autopairs").setup({})
end

return module
