-- Indentacion para Java
vim.bo.tabstop = 4
vim.bo.softtabstop = 4
vim.bo.shiftwidth = 4

local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
local workspace_dir = '/home/sopapo/.eclipse-workspace/' .. project_name

local config = {
  cmd = {
    'java',

    '-Declipse.application=org.eclipse.jdt.ls.core.id1',
    '-Dosgi.bundles.defaultStartLevel=4',
    '-Declipse.product=org.eclipse.jdt.ls.core.product',
    '-Dlog.protocol=true',
    '-Dlog.level=ALL',
    '-Xmx1g',
    '--add-modules=ALL-SYSTEM',
    '--add-opens',
    'java.base/java.util=ALL-UNNAMED',
    '--add-opens',
    'java.base/java.lang=ALL-UNNAMED',

    '-jar',
    '/home/sopapo/.java/jdtls-1.9/plugins/org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar',

    '-configuration',
    '/home/sopapo/.java/jdtls-1.9/config_linux',

    '-data',
    workspace_dir,
  },

  root_dir = vim.fs.root(0, {
    '.git',
    'mvnw',
    'gradlew',
    'pom.xml',
    '.project',
  }),

  settings = {
    java = {
      configuration = {
        runtimes = {
          name = "JavaSE-21",
          path = '/home/sopapo/.java/jdk-21/'
        }
      },
    },
  },

  init_options = {
    bundles = {
    },
  },
}

require('jdtls').start_or_attach(config)

---@format disable
vim.keymap.set('n', '<leader>co' , "<Cmd>lua require'jdtls'.organize_imports()<CR>"           , { desc = 'Organize Imports' })
vim.keymap.set('n', '<leader>crv', "<Cmd>lua require('jdtls').extract_variable()<CR>"         , { desc = 'Extract Variable' })
vim.keymap.set('v', '<leader>crv', "<Esc><Cmd>lua require('jdtls').extract_variable(true)<CR>", { desc = 'Extract Variable' })
vim.keymap.set('n', '<leader>crc', "<Cmd>lua require('jdtls').extract_constant()<CR>"         , { desc = 'Extract Constant' })
vim.keymap.set('v', '<leader>crc', "<Esc><Cmd>lua require('jdtls').extract_constant(true)<CR>", { desc = 'Extract Constant' })
vim.keymap.set('v', '<leader>crm', "<Esc><Cmd>lua require('jdtls').extract_method(true)<CR>"  , { desc = 'Extract Method' })
---@format enable
