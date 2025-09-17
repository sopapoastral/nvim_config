-- lsp.lua - LSP configs for neovim
-- luacheck: globals vim

local M = {}

-- Open next/previous diagnostic
local function open_diagnostic(direction)
  local count = direction == "next" and 1 or direction == "previous" and -1
  if not count then
    vim.notify("Invalid direction: " .. tostring(direction), vim.log.levels.ERROR)
    return
  end

  -- Check if there are any diagnostics before jumping
  local diagnostics = vim.diagnostic.get(0)
  if #diagnostics == 0 then
    vim.notify("No diagnostics found in current buffer", vim.log.levels.INFO)
    return
  end

  vim.diagnostic.jump({
    count = count,
    wrap = true,  -- Wrap around when reaching end/beginning
    on_jump = function()
      vim.diagnostic.open_float({
        focusable = false,
        border = "rounded"
      })
    end
  })
end

-- Show LSP info and keymaps in a popup
local function show_lsp_info()
  local lines = { "" }

  -- Get active LSP clients for current buffer
  local clients = vim.lsp.get_clients({ bufnr = 0 })
  if #clients > 0 then
    table.insert(lines, "Active LSP Clients:")
    for _, client in ipairs(clients) do
      local status = "running"
      table.insert(lines, string.format("  • %s (%s)", client.name, status))
    end
    table.insert(lines, "")
  else
    table.insert(lines, "No active LSP clients")
    table.insert(lines, "")
  end

  -- Add diagnostics count
  local error_count = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.ERROR })
  local warn_count = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.WARN })
  local info_count = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.INFO })
  local hint_count = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.HINT })

  table.insert(lines, "Diagnostics:")
  table.insert(lines, string.format("  Errors: %d", error_count))
  table.insert(lines, string.format("  Warnings: %d", warn_count))
  table.insert(lines, string.format("  Info: %d", info_count))
  table.insert(lines, string.format("  Hints: %d", hint_count))
  table.insert(lines, "")

  -- Create a scratch buffer
  local buf = vim.api.nvim_create_buf(false, true)
  vim.api.nvim_buf_set_lines(buf, 0, -1, false, lines)
  vim.api.nvim_buf_set_option(buf, "modifiable", false)
  vim.api.nvim_buf_set_option(buf, "filetype", "help")

  -- Calculate window size
  local width = math.max(60, math.min(90, vim.api.nvim_get_option("columns") - 10))
  local height = math.min(#lines + 2, math.floor(vim.api.nvim_get_option("lines") * 0.8))

  -- Create floating window
  vim.api.nvim_open_win(buf, true, {
    relative = "editor",
    width = width,
    height = height,
    col = math.floor((vim.api.nvim_get_option("columns") - width) / 2),
    row = math.floor((vim.api.nvim_get_option("lines") - height) / 2),
    style = "minimal",
    border = "rounded",
    title = " LSP Info ",
    title_pos = "center"
  })

  -- Set up keymaps to close the window
  local opts = { buffer = buf, silent = true }
  vim.keymap.set("n", "q", "<cmd>close<cr>", opts)
  vim.keymap.set("n", "<Esc>", "<cmd>close<cr>", opts)
end

-- LSP attach function
local function on_lsp_attach(args)
  local client = vim.lsp.get_client_by_id(args.data.client_id)
  if not client then return end

  -- Enable completion for all LSP servers
  vim.lsp.completion.enable(true, client.id, args.buf, {
    autotrigger = true,
    convert = function(item)
      return { abbr = item.label:gsub("%b()", "") }
    end,
  })
end

function M.setup(opts)
  opts = opts or {}
  local servers = opts.servers or {}

  -- Set up the LspAttach autocmd
  vim.api.nvim_create_autocmd("LspAttach", {
    callback = on_lsp_attach
  })

  -- Enable all configured LSP servers
  for _, server in ipairs(servers) do
    vim.lsp.enable(server)
  end
end

-- LSP info
vim.keymap.set("n", "<leader>l", show_lsp_info, {desc = "Show LSP info"})

return M


