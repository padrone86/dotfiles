
-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()



local config = {

  -- Font
  font = wezterm.font {
    family = 'Monaco', weight = 'Bold',
    -- family = 'Hack Nerd Font Mono', weight = 'Bold',
  },
  font_size = 16.0,

  -- ime
  use_ime = true,

  -- Color Scheme: https://wezfurlong.org/wezterm/colorschemes/index.html
  color_scheme = 'Whimsy',

  -- KeyBindings
  leader = { key = 'o', mods = 'CTRL', timeout_milliseconds = 2000 },

  -- Split pane
  keys = {
    {
      key = '|',
      mods = 'LEADER|SHIFT',
      action = wezterm.action.SplitPane {
        direction = 'Right',
        size = { Percent = 50 },
      },
    },
    {
      key = '-',
      mods = 'LEADER',
      action = wezterm.action.SplitPane {
        direction = 'Down',
        size = { Percent = 50 },
      },
    },

    -- Backslash workaround
    {
      key = "¥",
      action = wezterm.action.SendKey { key = '\\' }
    },
    {
        key = "¥",
        mods = "ALT",
        action = wezterm.action.SendKey { key = '¥' }
    },

    -- Enable copy mode
    { key = 'v', mods = 'LEADER', action = wezterm.action.ActivateCopyMode },
  },

  -- Window
  window_background_opacity = 0.90
}

-- and finally, return the configuration to wezterm
return config

