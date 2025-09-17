-- Harpoon

local harpoon = require 'harpoon'
harpoon:setup()

-- Basic Function
vim.keymap.set('n', '<leader>a', function()
  harpoon:list():add()
end, { desc = 'Append to Harpoon menu.' })
vim.keymap.set('n', '<leader>da', function()
  harpoon:list():clear()
end, { desc = 'Delete Harpoon menu.' })
vim.keymap.set('n', '<C-d>', function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end)

-- no se medio al pedo esto
vim.keymap.set('n', '<C-1>', function()
  harpoon:list():select(1)
end)
vim.keymap.set('n', '<C-2>', function()
  harpoon:list():select(2)
end)
vim.keymap.set('n', '<C-3>', function()
  harpoon:list():select(3)
end)
vim.keymap.set('n', '<C-4>', function()
  harpoon:list():select(4)
end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set('n', '<leader>hp', function()
  harpoon:list():prev()
end)
vim.keymap.set('n', '<leader>hn', function()
  harpoon:list():next()
end)
