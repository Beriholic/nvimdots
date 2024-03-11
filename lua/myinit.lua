--   command = "tabdo wincmd =",
-- })
--
local opt = vim.opt
local g = vim.g
opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4
require "run"

if g.neovide then
    require "configs.neovide"
end

g.vscode_snippets_path = vim.fn.stdpath "config" .. "/lua/snips"

for i = 1, 9, 1 do
    vim.keymap.set("n", string.format("<A-%s>", i), function()
        vim.api.nvim_set_current_buf(vim.t.bufs[i])
    end)
end

