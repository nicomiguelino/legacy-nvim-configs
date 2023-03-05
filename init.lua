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

function set_autocommands()
    max_line_length = {
        python = '79',
        javascript = '79',
        ruby = '79',
        html = '100',
        htmldjango = '100',
    }

    for language, length in pairs(max_line_length) do
        vim.api.nvim_create_autocmd("FileType", {
            pattern = language,
            callback = function(args)
                vim.opt_local.colorcolumn = length
            end
        })
    end
end

set_global_options()
set_autocommands()
