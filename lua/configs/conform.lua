---@module "conform.init"
---@diagnostic disable-next-line: assign-type-mismatch
local conform = require "conform"

---@type conform.setupOpts
local options = {
  formatters = {
    beautysh = {
      prepend_args = { "--indent-size", "2" },
    },
  },
  formatters_by_ft = {
    astro = { "stylelint", "prettierd", "eslint_d" },
    bash = { "shellcheck", "shfmt" },
    c = { "clang-format", lsp_format = "last" },
    cpp = { "clang-format", lsp_format = "last" },
    css = { "stylelint", "prettierd" },
    go = { "goimports", "gofmt" },
    html = { "prettierd" },
    javascript = { "stylelint", "prettierd", "eslint_d" },
    javascriptreact = { "stylelint", "prettierd", "eslint_d" },
    lua = { "stylua" }, -- Stylua is already configured as the default formatter for Lua in NvChad, but keeping it here for reference
    python = function(bufnr)
      if conform.get_formatter_info("ruff_format", bufnr).available then
        return { "ruff_format" }
      else
        return { "isort", "black" }
      end
    end,
    rust = { "rustfmt" },
    sh = { "shellcheck", "shfmt" },
    typescript = { "stylelint", "prettierd", "eslint_d" },
    typescriptreact = { "stylelint", "prettierd", "eslint_d" },
    vue = { "stylelint", "prettierd", "eslint_d" },
    nix = { "nixfmt" },
  },

  format_on_save = {
    timeout_ms = 2000,
    lsp_format = "fallback",
  },
}

return options
