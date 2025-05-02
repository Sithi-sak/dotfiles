return {
  -- {
  --     "catppuccin/nvim",
  --     lazy = false,
  --     name = "catppuccin",
  --     priority = 1000,
  --     config = function()
  --         require("catppuccin").setup({
  --             transparent_background = true,
  --         })
  --         vim.cmd.colorscheme("catppuccin-mocha")
  --     end,
  -- },
  {
    "navarasu/onedark.nvim",
    lazy = false,
    name = "onedark",
    priority = 1000,
    config = function()
      require("onedark").setup({
        style = "deep",
        transparent = false,
      })
      vim.cmd.colorscheme("onedark")
    end,
  },
}
