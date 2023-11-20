-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
--
local opt = vim.opt
opt.tabstop = 4
require "custom.run"

if vim.g.neovide then
	vim.api.nvim_set_option_value("guifont", "agave nerd font mono:h15", {})
	vim.g.neovide_remember_window_size = false
	vim.g.neovide_refresh_rate = 165
	vim.g.neovide_no_idle = true
	vim.g.neovide_cursor_trail_length = 0.05
	vim.g.neovide_cursor_antialiasing = true
	vim.g.neovide_cursor_vfx_opacity = 200.0
	vim.g.neovide_cursor_vfx_particle_lifetime = 1.2
	vim.g.neovide_cursor_vfx_particle_speed = 20.0
	vim.g.neovide_cursor_vfx_particle_density = 5.0
	vim.g.neovide_scroll_animation_length = 1
	vim.g.neovide_hide_mouse_when_typing = true
	vim.g.neovide_underline_automatic_scaling = true
	vim.g.neovide_confirm_quit = true
	vim.g.neovide_fullscreen = false
	vim.g.neovide_cursor_animation_length = 0.08
	vim.g.neovide_cursor_trail_size = 0.72
	vim.g.neovide_cursor_vfx_mode = "pixiedust"
	vim.g.neovide_transparency = 0.7
end

