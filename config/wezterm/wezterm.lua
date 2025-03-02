-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.font = wezterm.font("JetBrainsMono Nerd Font Mono")
config.font_size = 15.0

-- For example, changing the color scheme:
-- config.color_scheme = "Catppuccin Frappe"
config.color_scheme = "dayfox"

config.keys = {
  { key = "Enter", mods = "CMD", action = wezterm.action.ToggleFullScreen },
  {
    key = "d",
    mods = "CMD",
    action = wezterm.action.SplitPane({
      direction = "Right",
    }),
  },
  {
    key = "d",
    mods = "CMD|SHIFT",
    action = wezterm.action.SplitPane({
      direction = "Down",
    }),
  },
}

-- and finally, return the configuration to wezterm
return config
