local status_ok, bufferline = pcall(require, "bufferline")
vim.opt.termguicolors = true
if not status_ok then
  return
end

bufferline.setup {
  options = {
    tab_size = 22,
    diagnostics = true, -- | "nvim_lsp" | "coc",
  },
}

