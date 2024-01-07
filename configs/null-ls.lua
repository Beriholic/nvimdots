local null_ls = require "null-ls"

local b = null_ls.builtins

local sources = {

    -- webdev stuff
    b.formatting.deno_fmt,                                                  -- choosed deno for ts/js files cuz its very fast!
    b.formatting.prettier.with { filetypes = { "html", "markdown", "css" } }, -- so prettier works only on these filetypes

    -- Lua
    b.formatting.stylua,

    -- cpp
    b.formatting.clang_format,
    b.formatting.clang_format.with {
        extra_args = { "--style={IndentWidth: 4}" },
    },

    -- go
    b.formatting.gofmt,

    -- python
    b.formatting.yapf,

    -- bash
    b.formatting.shfmt,
}

null_ls.setup {
    debug = false,
    sources = sources,
    -- on_attach = function()
    -- vim.api.nvim_create_autocmd("BufWritePost", {
    --   callback = function()
    --     vim.lsp.buf.format()
    --   end,
    -- })
    -- end,
}
