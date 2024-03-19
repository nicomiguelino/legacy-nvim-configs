local module = {}
local set_keymap = vim.api.nvim_set_keymap

local function init_tab_keymaps()
    set_keymap('n', '<leader>to', ':tabnew<CR>', {noremap = true})
    set_keymap('n', '<leader>tx', ':tabclose<CR>', {noremap = true})
    set_keymap('n', '<leader>th', ':tabprevious<CR>', {noremap = true})
    set_keymap('n', '<leader>tl', ':tabnext<CR>', {noremap = true})
    set_keymap('n', '<leader>tj', ':+tabmove<CR>', {noremap = true})
    set_keymap('n', '<leader>tk', ':-tabmove<CR>', {noremap = true})
end

local function init_coc_keymaps()
    set_keymap('n', '<leader>gd', '<Plug>(coc-definition)', {silent = true})
    set_keymap('n', '<leader>co', '<cmd>Outline<CR>', {silent = true})
end

local function init_git_blame_keymaps()
    set_keymap('n', '<leader>gb', '<cmd>GitBlameToggle<CR>', {silent = true})
    set_keymap('n', '<leader>gc', '<cmd>GitBlameOpenCommitURL<CR>', {silent = true})
    set_keymap('n', '<leader>gf', '<cmd>GitBlameOpenFileURL<CR>', {silent = true})
end

function module.init()
    set_keymap('n', '<leader>w', '<C-w>', {noremap = true})
    set_keymap('n', '<leader>hn', ':nohlsearch<CR>', {noremap = true})
    init_tab_keymaps()
    init_coc_keymaps()
    init_git_blame_keymaps()
end

return module
