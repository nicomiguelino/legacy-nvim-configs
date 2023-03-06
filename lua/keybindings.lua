local module = {}
local set_keymap = vim.api.nvim_set_keymap

function module.init()
    set_keymap('n', '<leader>w', '<C-w>', {noremap = true})
    set_keymap('n', '<leader>to', ':tabnew<CR>', {noremap = true})
    set_keymap('n', '<leader>tx', ':tabclose<CR>', {noremap = true})
    set_keymap('n', '<leader>tj', ':tabprevious<CR>', {noremap = true})
    set_keymap('n', '<leader>tl', ':tabnext<CR>', {noremap = true})
end

return module
