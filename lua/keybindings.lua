local module = {}
local set_keymap = vim.api.nvim_set_keymap

function module.init()
    set_keymap('n', '<leader>w', '<C-w>', {noremap = true})
end

return module
