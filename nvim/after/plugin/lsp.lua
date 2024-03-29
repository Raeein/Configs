local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
    'tsserver',
    'rust_analyzer',
})


local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ['<C-c>'] = cmp.mapping.close(),
    ["<C-Space>"] = cmp.mapping.complete(),
})
cmp_mappings['<Tab>'] = nil
cmp_mappings['<S-Tab>'] = nil

lsp.setup_nvim_cmp({
    mapping = cmp_mappings
})

lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})

lsp.on_attach(function(_, bufnr)
    local opts = {buffer = bufnr, remap = true}

    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>ws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<leader>fw", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("n", "<leader>fi", function() vim.lsp.buf.implementation() end, opts)

    vim.keymap.set("n", "<leader>dj", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "<leader>dk", function() vim.diagnostic.goto_prev() end, opts)
end)

lsp.configure("lua_ls", {
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" },
            },
            telemetry = {
                enable = false,
            },
        },
    },
})

lsp.configure("rust_analyzer", {
    settings = {
        ["rust-analyzer"] = {
            cargo = {
                allFeatures = true,
            },
            checkOnSave = {
                overrideCommand = {
                    "cargo", "clippy", "--workspace", "--message-format=json",
                    "--all-targets", "--all-features"
                }
            }
        }
    }
})

lsp.configure("clangd", {
    settings = {
        clangd = {
            semanticHighlighting = true,
            completion = {
                detailedLabel = true
            }
        }
    }
})

lsp.setup()

vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    underline = true,
    update_in_insert = false,
    severity_sort = true,
})
