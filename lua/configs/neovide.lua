local g = vim.g
vim.api.nvim_set_option_value("guifont", "agave nerd font mono:h14", {})
-- vim.api.nvim_set_option_value("guifont", "monocraft:h13", {})
g.neovide_remember_window_size = true
g.neovide_cursor_trail_length = 0.05
g.neovide_cursor_antialiasing = true
g.neovide_cursor_vfx_opacity = 200.0
g.neovide_cursor_vfx_particle_lifetime = 1.2
g.neovide_cursor_vfx_particle_speed = 20.0
g.neovide_cursor_vfx_particle_density = 5.0
g.neovide_scroll_animation_length = 0.3
g.neovide_hide_mouse_when_typing = true
g.neovide_underline_automatic_scaling = true
g.neovide_fullscreen = false
g.neovide_cursor_animation_length = 0.08
g.neovide_cursor_trail_size = 0.72
g.neovide_cursor_vfx_mode = "pixiedust"
g.neovide_transparency = 0.9
g.neovide_refresh_rate_idle = 5
g.neovide_fullscreen = true
-- show fps
g.neovide_profiler = false

g.neovide_cursor_vfx_mode = "pixiedust"
g.neovide_cursor_vfx_mode = "wireframe"



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
