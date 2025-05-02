-- To avoid getting TAB indentation, make sure to explicitly use a formatter file
-- ex. stylua.toml, .prettierc .clang-format
return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      python = { "isort", "black" },
      rust = { "rustfmt" },
      javascript = { "prettierd", "prettier", stop_after_first = true },
      typescript = { "prettierd", "prettier", stop_after_first = true },
      go = { "gofumpt" },
      sh = { "beautysh" },
      bash = { "beautysh" },
      zsh = { "beautysh" },
      json = { "prettierd" },
      jsonc = { "prettierd" },
      blade = { "blade-formatter" },
      php = { "php_cs_fixer" },
      c = { "clang-format" },
      cpp = { "clang-format" },
      markdown = { "mdformat", "injected" },
    },
    format_on_save = {
      -- These options will be passed to conform.format()
      timeout_ms = 500,
      lsp_format = "fallback",
    },
  },
}
