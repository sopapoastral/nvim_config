return {
  {
    'rose-pine/neovim',
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    --[[ config = function()
      vim.cmd.colorscheme 'rose-pine'
      vim.cmd.hi 'Comment gui=none'
    end, ]]
  },
  {
    'miikanissi/modus-themes.nvim',
    lazy = false,
    priority = 999,
    --[[ config = function()
      vim.cmd.colorscheme 'modus_vivendi'
      vim.cmd.hi 'Comment gui=none'
    end, ]]
  },
  {
    'metalelf0/black-metal-theme-neovim',
    lazy = false,
    priority = 998,
    config = function()
      require("black-metal").setup({
        theme = "darkthrone",
        variant = "dark",
      })
      require("black-metal").load()
    end,
  },
}
