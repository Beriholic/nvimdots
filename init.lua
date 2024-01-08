-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
--
local opt = vim.opt
local g = vim.g
opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4
require "custom.run"

if g.neovide then
    require("custom.configs.neovide")
end

g.vscode_snippets_path = vim.fn.stdpath "config" .. "/lua/custom/snips"

local format_sync_grp = vim.api.nvim_create_augroup("GoImport", {})
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*.go",
    callback = function()
        require("go.format").goimport()
    end,
    group = format_sync_grp,
})

for i = 1, 9, 1 do
    vim.keymap.set("n", string.format("<A-%s>", i), function()
        vim.api.nvim_set_current_buf(vim.t.bufs[i])
    end)
end

