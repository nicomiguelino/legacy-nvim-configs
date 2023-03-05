local module = {}

function module.init()
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

return module
