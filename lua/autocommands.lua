local module = {}

local function setup_max_line_length()
    local max_line_length = {
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

local function trim_trailing_spaces()
    vim.api.nvim_create_autocmd("BufWritePre", {
        pattern = "*",
        callback = function(args)
            vim.cmd("silent! %s/\\s\\+$//e")
        end
    })
end

function module.init()
    setup_max_line_length()
    trim_trailing_spaces()
end

return module
