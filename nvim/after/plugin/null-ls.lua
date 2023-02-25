local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.prettier,
        -- null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.black,
        -- null_ls.builtins.formatting.isort,
        -- null_ls.builtins.formatting.shfmt,
        -- null_ls.builtins.formatting.sqlformat,
        -- null_ls.builtins.formatting.trim_whitespace,
        -- null_ls.builtins.formatting.goimports,
        -- null_ls.builtins.formatting.gofmt,
        -- null_ls.builtins.formatting.gofumpt,
        -- null_ls.builtins.formatting.rustfmt,
        null_ls.builtins.formatting.clang_format,
        -- null_ls.builtins.formatting.clang_tidy,
        null_ls.builtins.diagnostics.shellcheck,
        null_ls.builtins.diagnostics.eslint_d,
        null_ls.builtins.diagnostics.flake8,
    },
})
