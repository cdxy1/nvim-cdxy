-- Basic
vim.keymap.set('v', '<C-c>', '"+y')
vim.keymap.set('n', '<C-v>', '"+p')
vim.keymap.set('n', '<C-z>', 'u')
vim.keymap.set('i', '<C-k>', '<Esc>')

-- NeoTree
vim.keymap.set('n', '<leader>e', ':Neotree filesystem reveal left<CR>')

-- Bufferline
vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>')
vim.keymap.set('n', '<s-Tab>', ':BufferLineCyclePrev<CR>')
vim.keymap.set('n', '<leader>x', ':BufferLinePickClose<CR>')
vim.keymap.set('n', '<leader>X', ':BufferLineCloseRight<CR>')

-- LspSignature
vim.keymap.set({ 'n' }, '<C-k>', function()       require('lsp_signature').toggle_float_win()
end, { silent = true, noremap = true, desc = 'toggle signature' })
