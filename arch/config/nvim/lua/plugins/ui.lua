return {
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      routes = {
        {
          filter = { event = "notify", find = "No information available" },
          opts = { skip = true },
        },
      },
      presets = { lsp_doc_border = true },
    },
  },
  dependencies = { "MunifTanjim/nui.nvim" },
  {
    "rcarriga/nvim-notify",
    opts = { background_colour = "#000000", timeout = 5000 },
  },
  {
    "folke/snacks.nvim",
    ---@type snacks.Config
    opts = {
      dashboard = {
        preset = {
          pick = nil,
            -- stylua: ignore
            ---@type snacks.dashboard.Item[]
            keys = {
              { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')", },
              { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
              { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')", },
              { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')", },
              { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})", },
              { icon = " ", key = "s", desc = "Restore Session", section = "session" },
              { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil, },
              { icon = " ", key = "q", desc = "Quit", action = ":qa" },
            },
          header = [[
██╗      █████╗ ███████╗██╗   ██╗██████╗ ███████╗██╗   ██╗
██║     ██╔══██╗╚══███╔╝╚██╗ ██╔╝██╔══██╗██╔════╝██║   ██║
██║     ███████║  ███╔╝  ╚████╔╝ ██║  ██║█████╗  ██║   ██║
██║     ██╔══██║ ███╔╝    ╚██╔╝  ██║  ██║██╔══╝  ╚██╗ ██╔╝
███████╗██║  ██║███████╗   ██║   ██████╔╝███████╗ ╚████╔╝
╚══════╝╚═╝  ╚═╝╚══════╝   ╚═╝   ╚═════╝ ╚══════╝  ╚═══╝ ]],
        },
        sections = {
          { section = "header" },
          { section = "keys", gap = 1, padding = 1 },
          { section = "recent_files", icon = " ", title = "Recent Files", indent = 3, padding = 2 },
          { section = "startup" },
        },
      },
    },
  },
}
