return {
  'norcalli/nvim-colorizer.lua',
  lazy = true,
  ft = { 'python' },
  config = function ()
    require 'colorizer'.setup({
      'python',
    })
  end
}
