// .wezterm.lua

```
local wezterm = require 'wezterm'
local act = wezterm.action

local config = {
  font_size = 14,
}

config.window_background_opacity = 0.85

config.keys = {
  {
    key = 'f',
    mods = 'SHIFT|META',
    action = wezterm.action.ToggleFullScreen,
  },
  {
    key = 't',
    mods = 'SHIFT|CTRL',
    action = wezterm.action.SpawnTab 'CurrentPaneDomain',
  },
  {
    key = 'd',
    mods = 'SHIFT|CTRL',
    action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
  {
    key='v',
    mods='CTRL',
    action = wezterm.action.PasteFrom 'Clipboard',
  },
  -- {
  --   key='c',
  --   mods='CTRL',
  --   action = wezterm.action.CopyTo 'ClipboardAndPrimarySelection',
  -- },
  {
    key='LeftArrow',
    mods='SHIFT|CTRL',
    action = wezterm.action {ActivateTabRelative=-1}
  },
  {
    key='RightArrow',
    mods='SHIFT|CTRL',
    action=wezterm.action {ActivateTabRelative=1}
  },
  {
    key = '"',
    mods = 'CTRL|SHIFT|ALT',
    action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
  },
  {
    key = '%',
    mods = 'CTRL|SHIFT|ALT',
    action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
}

if wezterm.has_action 'HasSelection' then
  config.keys = {
    {
      key='c',
      mods='CTRL',
      action = wezterm.action.CopyTo 'ClipboardAndPrimarySelection',
    }
  }
end

local mux = wezterm.mux

wezterm.on("gui-startup", function()
  local tab, pane, window = mux.spawn_window{}
  window:gui_window():maximize()
end)

return config
```
