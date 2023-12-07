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
  vim.api.nvim_set_option_value("guifont", "agave nerd font mono:h15", {})
  g.neovide_remember_window_size = true
  g.neovide_cursor_trail_length = 0.05
  g.neovide_cursor_antialiasing = true
  g.neovide_cursor_vfx_opacity = 200.0
  g.neovide_cursor_vfx_particle_lifetime = 1.2
  g.neovide_cursor_vfx_particle_speed = 20.0
  g.neovide_cursor_vfx_particle_density = 5.0
  g.neovide_scroll_animation_length = 1
  g.neovide_hide_mouse_when_typing = true
  g.neovide_underline_automatic_scaling = true
  g.neovide_fullscreen = false
  g.neovide_cursor_animation_length = 0.08
  g.neovide_cursor_trail_size = 0.72
  g.neovide_cursor_vfx_mode = "pixiedust"
  g.neovide_transparency = 0.7
  g.neovide_refresh_rate_idle = 5
  if vim.fn.has "mac" == 1 then
    vim.api.nvim_set_option_value("guifont", "agave nerd font mono:h16", {})
    g.neovide_input_macos_alt_is_meta = true
    -- Helper function for transparency formatting
    local alpha = function()
      return string.format("%x", math.floor(255 * vim.g.transparency or 0.8))
    end
    -- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
    g.neovide_transparency = 0
    g.transparency = 1
    g.neovide_background_color = "#0f1117" .. alpha()
  end
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
