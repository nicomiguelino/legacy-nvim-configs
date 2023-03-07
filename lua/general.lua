local module = {}

local function set_global_options()
    local options = {
        relativenumber = true,
        number = true,
        hlsearch = true,
        hidden = true,
        incsearch = true,
        visualbell = false,
        ignorecase = true,
        swapfile = false,
        expandtab = true,
        tabstop = 4,
        softtabstop = 4,
        shiftwidth = 4,
        shiftround = true,
        autoindent = true,
        copyindent = true,
        smarttab = true,
        cursorline = true,
    }

    for k, v in pairs(options) do
        vim.opt[k] = v
    end
end

local function set_folding_options()
    local options = {
        foldmethod = 'syntax',
        foldlevel = 99,
        foldenable = false,
    }

    for k, v in pairs(options) do
        vim.opt[k] = v
    end

    vim.api.nvim_create_autocmd("InsertLeave", {
        pattern = "*",
        callback = function(args)
            vim.cmd("normal zx")
        end
    })
end

function module.init()
    vim.g.mapleader = ' '
    set_global_options()
    set_folding_options()
end

return module
