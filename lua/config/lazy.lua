-----------------------------------------
-- [[ Configure and install plugins ]] --
-----------------------------------------

require('lazy').setup({
  -- require 'kickstart.plugins.indent_line',
  require 'kickstart.plugins.debug',
  require 'custom.autoformat',
  require 'custom.autopairs',
  require 'custom.colorizer',
  require 'custom.colorscheme',
  require 'custom.comment',
  require 'custom.completion',
  require 'custom.cscope',
  require 'custom.gitsigns',
  require 'custom.harpoon',
  require 'custom.iron',
  require 'custom.jupytext',
  -- require 'custom.lsp-config',
  require 'custom.noice',
  require 'custom.NotebookNavigator',
  require 'custom.nvim-jdtls',
  require 'custom.mini',
  require 'custom.mason',
  require 'custom.staline',
  require 'custom.telescope',
  require 'custom.todo-comments',
  require 'custom.treesitter',
  require 'custom.treesj',
  require 'custom.undotree',
  require 'custom.vim-easy-align',
  require 'custom.vimtex',
  require 'custom.which-key',
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
