local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local rt = require "rust-tools"

rt.setup {
    server = {
        on_attach = function(_, bufnr)
            -- Code action groups
            vim.keymap.set("n", "<Leader>k", rt.code_action_group.code_action_group, { buffer = bufnr })
            vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
        end,
    },
}

local options = {
    server = {
        on_attach = on_attach,
        capabilities = capabilities,
    },
}
return options
