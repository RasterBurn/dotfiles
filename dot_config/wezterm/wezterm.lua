local wezterm = require 'wezterm'
local config = {}

config.background = {
  {
    source = {
      Gradient={
        colors = {
          '#0f0c29',
          '#302b63',
          '#24243e',
        },
        --preset = "Viridis",
        orientation = { Linear = { angle = -45.0 } },
      },
    },
    height = '100%',
    width = '100%',
    --opacity = 0.95,
  }
}
config.font = wezterm.font_with_fallback {
  'FiraCode Nerd Font Mono',
  'Source Code Pro',
}
config.font_size = 17.0
config.enable_tab_bar = false
config.window_decorations = "RESIZE"

config.keys = {
  {
    key = 'n',
    mods = 'SHIFT|CTRL',
    action = wezterm.action.ToggleFullScreen,
  },
}
return config
