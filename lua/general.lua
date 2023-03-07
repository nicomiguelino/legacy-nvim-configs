local module = {}

function set_global_options()
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

function module.init()
    vim.g.mapleader = ' '
    set_global_options()
end

return module
