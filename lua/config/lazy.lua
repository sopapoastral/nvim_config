-----------------------------------------
-- [[ Configure and install plugins ]] --
-----------------------------------------

require('lazy').setup({
  require 'kickstart.plugins.indent_line',
  require 'kickstart.plugins.debug',
  require 'custom.plugins.autoformat',
  require 'custom.plugins.autopairs',
  require 'custom.plugins.colorizer',
  require 'custom.plugins.colorscheme',
  require 'custom.plugins.comment',
  require 'custom.plugins.completion',
  require 'custom.plugins.cscope',
  require 'custom.plugins.gitsigns',
  require 'custom.plugins.harpoon',
  -- require 'custom.plugins.lsp-config',
  require 'custom.plugins.noice',
  require 'custom.plugins.nvim-jdtls',
  require 'custom.plugins.mini',
  require 'custom.plugins.mason',
  require 'custom.plugins.staline',
  require 'custom.plugins.telescope',
  require 'custom.plugins.todo-comments',
  require 'custom.plugins.treesitter',
  require 'custom.plugins.treesj',
  require 'custom.plugins.undotree',
  require 'custom.plugins.vim-easy-align',
  require 'custom.plugins.vimtex',
  require 'custom.plugins.which-key',
}, {
  ui = {
    -- If you have a Nerd Font, set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '',
      config = '󱌣',
      event = '',
      ft = '',
      init = '',
      keys = '',
      plugin = '',
      runtime = '',
      require = '󰤄',
      source = '',
      start = '󱓞',
      task = '󰐃',
      lazy = '󰒲 ',
    },
  },
})
