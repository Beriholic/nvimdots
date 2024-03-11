local on_attach = require("nvchad.configs.lspconfig").on_attach
local capabilities = require("nvchad.configs.lspconfig").capabilities
capabilities.offsetEncoding = { "utf-16" }
local util = require "lspconfig/util"

local lspconfig = require "lspconfig"

lspconfig.clangd.setup {
    on_attach = function(client, _)
        client.resolved_capabilities.document_formatting = true
        client.resolved_capabilities.document_range_formatting = true
    end,
}

-- if you just want default config for the servers then put them in a table
local servers = {
    "html",
    "cssls",
    "tsserver",
    "clangd",
    "gopls",
    "pyright",
    "thriftls",
    "marksman",
    "rust_analyzer",
}
for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        on_attach = on_attach,
        capabilities = capabilities,
    }
end

vim.notify = require "notify"
