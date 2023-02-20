require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "vim", "python", "go", "help" },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  context_commentstring = {
      enable = true,
      ensure_installed = false,
  },
}
