-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
-- require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
    sort_by = "case_sensitive",
    update_cwd = true,
    view = {
        width = 60,
        side = "right",
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = true,
    },
    trash = {
        cmd = "rm", -- change to 'gio trash' or another command if you prefer
        require_confirm = true
    }
})

