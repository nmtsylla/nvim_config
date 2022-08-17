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
--keymap.set('n', '<C-y>', '<Plug>(Yanks)')

--keymap.set('n', '<leader>uu', ':UndotreeToggle<CR>')

-- floaterm
--keymap.set('n', '<leader>t', ':FloatermToggle<CR>')
-- keymap.set('t', '<leader>t', ':<C-\\><C-n>FloatermToggle<CR>')
--

-- Move line or block of lines up/down
vim.keymap.set('n', 'J', ':m .+1<CR>==')
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('n', 'K', ':m .-2<CR>==')
vim.keymap.set('v', 'K', ":m '<-2<CR>==")
--

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)

