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
            'nvim-telescope/telescope.nvim', tag = '0.1.5',
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
            version = 'nightly'
        },
        {
            'mattn/emmet-vim',
            init = function()
                vim.g.user_emmet_leader_key = '<C-h>'
            end,
        },
        {
            'mg979/vim-visual-multi',
            branch = 'master',
        },
        { "catppuccin/nvim", name = "catppuccin" },
        'MattesGroeger/vim-bookmarks',
        'tom-anders/telescope-vim-bookmarks.nvim',
        'windwp/nvim-autopairs',
        'tpope/vim-commentary',
        'editorconfig/editorconfig-vim',
        'nanozuki/tabby.nvim',
        'terrastruct/d2-vim',
        'sindrets/diffview.nvim',
        {
            "hedyhli/outline.nvim",
            config = function()
                -- Example mapping to toggle outline
                vim.keymap.set("n", "<leader>o", "<cmd>Outline<CR>",
                { desc = "Toggle Outline" })

                require("outline").setup {
                -- Your setup opts here (leave empty to use defaults)
                }
            end,
        },
        {
            'neoclide/coc.nvim',
            branch = 'master',
            build = function()
                vim.fn.system('npm ci')
                vim.cmd('CocInstall -sync coc-tsserver coc-json coc-html coc-css coc-yaml coc-emmet coc-snippets coc-pyright coc-clangd')
            end,
        }
    })

    telescope_config.init()
    require('lualine').setup()
    require('nvim-web-devicons').setup()
    require("nvim-autopairs").setup({})
end

return module
