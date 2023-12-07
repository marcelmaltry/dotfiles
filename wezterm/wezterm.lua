local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- colors and appearance
config.color_scheme = 'Material (base16)'
color_bg = '#263238'
color_fg = '#eeffff'
color_sel = '#2c3b41'
-- tab bar
config.use_fancy_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true
config.window_frame = {
    font = wezterm.font({
        family = 'MesloLGM Nerd Font',
        harfbuzz_features = {"calt=0", "clig=0", "liga=0"}
    }),
    font_size = 12.0,
    active_titlebar_bg = color_bg,
    inactive_titlebar_bg = color_bg,
}
config.colors = {
    tab_bar = {
        inactive_tab_edge = color_bg,
        active_tab = {
            bg_color = color_sel,
            fg_color = color_fg,
        },
        inactive_tab = {
            bg_color = color_bg,
            fg_color = color_fg,
        },
        inactive_tab_hover = {
            bg_color = color_sel,
            fg_color = color_fg,
        },
        new_tab = {
            bg_color = color_bg,
            fg_color = color_fg,
        },
        new_tab_hover = {
            bg_color = color_sel,
            fg_color = color_fg,
        },
    },
    scrollbar_thumb = color_sel,
}

-- scrollback and scrollbar
config.scrollback_lines = 10000
config.enable_scroll_bar = true

-- cursor
config.default_cursor_style = 'BlinkingBar'

-- font
config.font = wezterm.font({
    family = 'MesloLGM Nerd Font',
    harfbuzz_features = {"calt=0", "clig=0", "liga=0"}
})

-- key binding
config.keys = {
    -- OPT + Left -> backward-word
    {key="LeftArrow", mods="OPT", action=wezterm.action{SendString="\x1bb"}},
    -- OPT + Right -> forward-word
    {key="RightArrow", mods="OPT", action=wezterm.action{SendString="\x1bf"}},
}

return config
