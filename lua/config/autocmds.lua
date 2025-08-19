------------------------------
-- [[ Basic Autocommands ]] --
------------------------------

-- No auto-comment
vim.api.nvim_create_autocmd('FileType', {
  pattern = { '*' },
  callback = function()
    vim.cmd 'set formatoptions-=c formatoptions-=r formatoptions-=o'
  end,
})

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

-- [[ Install `lazy.nvim` plugin manager ]]
--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- Disable diagnostics for LaTeX and Markdown documents
vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'tex', 'markdown' },
  callback = function()
    vim.opt.spell=true
    vim.opt.wrap=true
  end,
})

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'pascal' },
  callback = function()
    vim.opt.indentkeys:remove(':')
  end
})
