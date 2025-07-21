local wezterm = require("wezterm")

return {
    enable_tab_bar = false,
    window_padding = {
        left = 0,
        right = 0,
        top = 0,
        bottom = 0,
    },
    font = wezterm.font("FiraCode Nerd Font"),
    font_size = 20.0,
    colors = {
        background = "#191825"
    },
    window_frame = {
        active_titlebar_bg = "#191825",
        inactive_titlebar_bg = "#191825",
    },
}
