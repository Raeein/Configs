local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
    return
end
local builtin = require('telescope.builtin')
local actions = require('telescope.actions')
require('telescope').load_extension('fzf')

telescope.setup {
    defaults = {
        prompt_prefix = " ",
        selection_caret = "  ",
        path_display = { "smart" },
        file_ignore_patterns = { ".git/", "node_modules" },

        mappings = {
            i = {
                ["<C-j>"] = actions.move_selection_next,
                ["<C-k>"] = actions.move_selection_previous,
            },
        },
    },
}

vim.keymap.set('n', '<leader>ff', "<cmd>lua require'telescope.builtin'.find_files({ find_command = {'rg', '--files', '--hidden', '-g', '!.git' }})<cr>", {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fg', builtin.grep_string, {})

vim.keymap.set('n', '<leader>qf', builtin.quickfix, {})
vim.keymap.set('n', '<leader>fr', builtin.lsp_references, {})

vim.keymap.set('n', '<leader>fd', builtin.lsp_definitions, {})
vim.keymap.set('n', '<leader>fD', builtin.lsp_type_definitions,{})

vim.keymap.set('n', '<leader>sd', builtin.diagnostics, {})

vim.keymap.set('n', '<leader>cs', builtin.colorscheme, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
