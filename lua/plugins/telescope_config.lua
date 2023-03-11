local module = {}

function module.init()
    local builtin = require('telescope.builtin')
    local telescope = require('telescope')
    telescope.load_extension('vim_bookmarks')
    local bookmarks = telescope.extensions.vim_bookmarks

    vim.keymap.set('n', '<leader><space>', builtin.find_files, {})
    vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
    vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

    -- Bookmarks
    -- vim.keymap.set('n', '<leader>ba', bookmarks.all(), {})
    -- vim.keymap.set('n', '<leader>bf', bookmarks.current_file(), {})
end

return module
