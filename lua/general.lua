local module = {}

function set_global_options()
    vim.opt.relativenumber = true
    vim.opt.number = true
    vim.opt.hlsearch = true
    vim.opt.hidden = true
    vim.opt.incsearch = true
    vim.opt.visualbell = false
    vim.opt.ignorecase = true
    vim.opt.swapfile = false

    vim.opt.expandtab = true
    vim.opt.tabstop = 4
    vim.opt.softtabstop = 4
    vim.opt.shiftwidth = 4

    vim.opt.shiftround = true
    vim.opt.autoindent = true
    vim.opt.copyindent = true
    vim.opt.smarttab = true
    vim.opt.cursorline = true
end

function module.init()
    set_global_options()
end
