-- [[ Setting options ]]
-- See `:help vim.o`

-- Set highlight on search
vim.o.hlsearch = true

vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

vim.opt.title = true
vim.opt.autoindent = true
vim.opt.smartindent = true

vim.o.clipboard = "unnamedplus"
vim.opt.wildignore:append { '*/node_modules/*' }
-- Make line numbers default
vim.wo.number = true

-- Enable mouse mode
vim.o.mouse = 'a'
vim.o.scrolloff = 8 -- Number of lines to keep above and below the cursor

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.lazyredraw = true -- lazily redraw screen
-- Decrease update time
vim.o.updatetime = 250
vim.wo.signcolumn = 'yes'

vim.o.swapfile = false -- Disable use of swapfile for the buffer
-- Set colorscheme
vim.o.termguicolors = true

vim.g.material_theme_style = "darker"
vim.cmd [[colorscheme material]]

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menu,menuone,noselect'

vim.g.closetag_filetypes = 'html,xhtml,phtml,xml,javascript,typescript,javascriptreact,typescriptreact,'

vim.g.mapleader = ';'
vim.g.maplocalleader = ';'

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})
