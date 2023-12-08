local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- colors and appearance
config.color_scheme = 'Material (base16)'
-- material colors
color_bg      = '#263238'
color_fg      = '#eeffff'
color_sel     = '#2c3b41'
color_black   = '#000000'
color_red     = '#ff5370'
color_green   = '#c3e88d'
color_yellow  = '#ffcb6b'
color_blue    = '#82aaff'
color_magenta = '#c792ea'
color_cyan    = '#89ddff'
color_white   = '#eeffff'
-- window frame
config.window_frame = {
    font = wezterm.font({
        family = 'MesloLGM Nerd Font',
        harfbuzz_features = {'calt=0', 'clig=0', 'liga=0'}
    }),
}
-- tab bar
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.tab_max_width = 24
config.colors = {
    tab_bar = {
        background = color_bg,
        -- active tab
        active_tab = {
            bg_color = color_sel,
            fg_color = color_fg,
            intensity = 'Bold'
        },
        -- inactive tab
        inactive_tab = {
            bg_color = color_bg,
            fg_color = color_fg,
        },
        inactive_tab_hover = {
            bg_color = color_sel,
            fg_color = color_fg,
        },
        -- new tab
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
