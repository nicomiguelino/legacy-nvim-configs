local module = {}

function module.init()
    local builtin = require('telescope.builtin')
    local telescope = require('telescope')
    telescope.load_extension('vim_bookmarks')

    vim.keymap.set('n', '<leader><space>', builtin.find_files, {})
    vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
    vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

    -- Bookmarks
    vim.keymap.set('n', '<leader>ba', telescope.extensions.vim_bookmarks.all, {})
end

return module
