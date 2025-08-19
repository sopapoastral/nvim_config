-----------------
-- [[Keymaps]] --
-----------------

-- Aliases
local cmd = vim.cmd

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

--  Use CTRL+<hjkl> to switch between windows
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- File explorer
vim.keymap.set('n', '<leader>pv', cmd.Ex)

-- No Highlight
vim.keymap.set('n', '<leader>no', cmd.nohl)

-- Undo-tree
vim.keymap.set('n', '<leader>ut', cmd.UndotreeToggle)
vim.keymap.set('n', '<leader>uo', cmd.UndotreeShow)
vim.keymap.set('n', '<leader>uc', cmd.UndotreeHide)

-- Tabs
vim.keymap.set('n', '<leader>to', cmd.tabnew)
vim.keymap.set('n', '<leader>tn', cmd.tabnext)
vim.keymap.set('n', '<leader>tp', cmd.tabprevious)
vim.keymap.set('n', '<leader>tw', cmd.tabclose)

-- Buffers
vim.keymap.set('n', '<leader>bb', cmd.buffers)
vim.keymap.set('n', '<leader>bn', cmd.bnext)
vim.keymap.set('n', '<leader>bp', cmd.bprevious)
vim.keymap.set('n', '<leader>bw', cmd.bwipeout)

-- Redo
vim.keymap.set('n', '<leader>re', cmd.redo)

-- Split
vim.keymap.set('n', '<leader>sv', function()
  cmd.vsplit()
  -- cmd.Ex()
  cmd 'Telescope buffers'
end)

vim.keymap.set('n', '<leader>sh', function()
  cmd.split()
  -- cmd.Ex();
  cmd 'Telescope find_files'
end)

-- EasyAlign
vim.keymap.set('n', 'ga', cmd.EasyAlign)
vim.keymap.set('v', 'ga', cmd.EasyAlign)

-- Vimtex
vim.keymap.set('n', '<leader>vc', cmd.VimtexCompile)
vim.keymap.set('n', '<leader>ve', cmd.VimtexErrors)
vim.keymap.set('n', '<leader>vt', cmd.VimtexTocToggle)

-- Move text
vim.keymap.set('n', '<C-j>', ':m .+1<CR>==', { desc = 'Move line down' })
vim.keymap.set('n', '<C-k>', ':m .-2<CR>==', { desc = 'Move line up' })
vim.keymap.set('v', '<C-j>', ":m '>+1<CR>gv=gv", { desc = 'Move selection down' })
vim.keymap.set('v', '<C-k>', ":m '<-2<CR>gv=gv", { desc = 'Move selection up' })

-- Better indenting in visual mode
vim.keymap.set('v', '<', '<gv', { desc = 'Indent left and reselect' })
vim.keymap.set('v', '>', '>gv', { desc = 'Indent right and reselect' })
