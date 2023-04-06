local status_ok, telescope = pcall(require, "telescope")
local builtin = require('telescope.builtin')

require("telescope").load_extension("neoclip")
-- require("telescope").load_extension("fzf")

telescope.setup {
    defaults = {
        prompt_prefix = " ",
        selection_caret = "  ",
        path_display = { "smart" },
        file_ignore_patterns = { ".git/", "node_modules" },

        mappings = {
            i = {
                ["<C-j>"] = builtin.move_selection_next,
                ["<C-k>"] = builtin.move_selection_previous,
            },
        },
    },
}


-- vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>ff', "<cmd>lua require'telescope.builtin'.find_files({ find_command = {'rg', '--files', '--hidden', '-g', '!.git' }})<cr>", {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fx', builtin.treesitter, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>fg', builtin.grep_string, {})
