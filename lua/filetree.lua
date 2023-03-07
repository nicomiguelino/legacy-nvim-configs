local module = {}

function module.init()
    -- Disable netrw at the very start of your init.lua.
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    -- Set termguicolors to enable highlight groups.
    vim.opt.termguicolors = true

    require("nvim-tree").setup({
        sort_by = "case_sensitive",
        renderer = {
            group_empty = true,
        },
        filters = {
            dotfiles = true,
        },
    })
end

return module
