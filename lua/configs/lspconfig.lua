local lspconfig = require "lspconfig"
local nvlsp = require "nvchad.configs.lspconfig"

---@type lspconfig.Config
local default_lspconfig_setup_options = {
  on_attach = function(client, bufnr)
    nvlsp.on_attach(client, bufnr)

    if client.supports_method("textDocument/inlayHint", { bufnr = bufnr }) then
      vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
    end

    if client.supports_method("textDocument/codeLens", { bufnr = bufnr }) then
      vim.lsp.codelens.refresh { bufnr = bufnr }
      vim.api.nvim_create_autocmd({ "BufEnter", "InsertLeave" }, {
        buffer = bufnr,
        callback = function()
          vim.lsp.codelens.refresh { bufnr = bufnr }
        end,
      })
    end
  end,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
}



---@type MasonLspconfigSettings
local options = {
  handlers = {
    ---@param server_name string
    function(server_name)
      ---@diagnostic disable-next-line: undefined-field
      lspconfig[server_name].setup(default_lspconfig_setup_options)
    end,

    lua_ls = function()
      require("nvchad.configs.lspconfig").defaults()
      local settings = {
        Lua = {
          hint = {
            enable = true,
            paramName = "Literal",
          },
          codeLens ={
            enable=true
          }
        },
      }
    end,
  },
}

return options;
