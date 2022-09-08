-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Delete a word backwards
vim.keymap.set('n', 'dw', 'vb"_d')

-- Select all
vim.keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Yanks history
vim.keymap.set('n', '<C-y>', '<Plug>(Yanks)')

vim.keymap.set('n', '<leader>uu', ':UndotreeToggle<CR>')

-- Exit neovim 
vim.keymap.set('n', '<C-S-Q>', '<cmd>qa!<cr>')

-- Save file 
vim.keymap.set('n', '<C-s>', '<cmd>w!<cr>')

-- Move line or block of lines up/down
vim.keymap.set('n', '<C-S-J>', ':m .+1<CR>==', {noremap = true, silent = true})
vim.keymap.set('v', '<C-S-J>', ":m '>+1<CR>gv=gv", {noremap = true, silent = true})
vim.keymap.set('n', '<C-S-K>', ':m .-2<CR>==', {noremap = true, silent = true})
vim.keymap.set('v', '<C-S-K>', ":m '<-2<CR>gv=gv", {noremap = true, silent = true})
--

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
-- vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)

vim.keymap.set("n", "<leader>pc", "<cmd>PackerCompile<cr>")
vim.keymap.set("n", "<leader>pi", "<cmd>PackerInstall<cr>")
vim.keymap.set("n", "<leader>ps", "<cmd>PackerSync<cr>")
vim.keymap.set("n", "<leader>pu", "<cmd>PackerUpdate<cr>")

-- clear search highlight
vim.keymap.set('n', '<esc>', ":noh<CR>", {noremap = false, silent = true})
