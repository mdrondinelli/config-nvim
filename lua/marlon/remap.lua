-- explorer
-- vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

-- move lines up and down in visual mode with J/K
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- keep search results in the center of the screen
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- paste over without changing the yank register
vim.keymap.set('x', '<leader>p', '"_dP')

-- delete without changing the yank register
vim.keymap.set('n', '<leader>d', '"_d')
vim.keymap.set('v', '<leader>d', '"_d')

-- yank into clipboard (too) with <leader>
vim.keymap.set('n', '<leader>y', '"+y')
vim.keymap.set('v', '<leader>y', '"+y')
vim.keymap.set('n', '<leader>Y', '"+Y')

-- disable ex mode
vim.keymap.set('n', 'Q', '<nop>')

-- substitute the word under the cursor
vim.keymap.set('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

