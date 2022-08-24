local status_ok, nvim_tree = pcall(require, "nvim-tree")
local map = require('nvim-tree.config').nvim_tree_callback

if not status_ok then
  return
end
nvim_tree.setup {
  --
  -- open_on_setup = true,
  -- open_on_setup_file = true,
  -- open_on_tab = true,
  -- disable_netrw = true,
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
  -- hijack_cursor = true,
  view = {
    --    auto_resize = true,
    mappings = {
      list = {
        { key = '<C-R>', cb = map 'refresh' },
        { key = 'a', cb = map 'create' },
        { key = 'd', cb = map 'remove' },
        { key = 'h', cb = map 'close_node' },
        { key = 'I', cb = map 'toggle_ignored' },
        { key = 'l', cb = map 'edit' },
        { key = 'r', cb = map 'rename' },
        { key = 's', cb = map 'split' },
        { key = 'v', cb = map 'vsplit' },
        { key = 'Y', cb = map 'copy_path' },
        { key = 'y', cb = map 'copy_name' },
      },
      custom_only = false, -- false means the list above will merge with defaults
    },
  },
  actions = {
    open_file = {
      quit_on_open = false,
    },
  },
  renderer = {
    root_folder_modifier = ":t",
    group_empty = true,
    icons = {
      glyphs = {
        default = "",
        symlink = "",
        folder = {
          arrow_open = "",
          arrow_closed = "",
          default = "",
          open = "",
          empty = "",
          empty_open = "",
          symlink = "",
          symlink_open = "",
        },
        git = {
          unstaged = "",
          staged = "S",
          unmerged = "",
          renamed = "➜",
          untracked = "U",
          deleted = "",
          ignored = "◌",
        },
      },
    },
  },
  filters = {
    dotfiles = true,
  },
  diagnostics = {
    enable = true,
    show_on_dirs = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
}

-- Toggle nvim tree
vim.keymap.set('n', '<leader>/', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
-- Navigate through windows
vim.keymap.set('n', '<Space>', '<C-w>w')
vim.keymap.set('n', '<Space>', '<C-w>w')
