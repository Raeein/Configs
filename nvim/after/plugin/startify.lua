vim.g.startify_lists = {
  { type = 'files', header = {'Recent Files'} },
  { type = 'dir', header = {'Current Directory ' .. vim.fn.getcwd()} },
  { type = 'sessions', header = {'Sessions'} },
  { type = 'bookmarks', header = {'Bookmarks'} },
}

vim.g.startify_bookmarks = {
  { z = '~/.bash_profile' },
  { v = '~/Desktop/Guelph/' },
  { t = '~/.config/' },
}

vim.g.startify_session_dir = '~/.config/nvim/sessions'
vim.g.startify_session_autoload = 1
vim.g.startify_session_delete_buffers = 1
vim.g.startify_change_to_vcs_root = 1
vim.g.startify_session_persistence = 1
