local wezterm = require 'wezterm';

local function get_file_name(path)
    local start, finish = path:find('[%w%s!-={-|]+[_%.].+')
    pcall(function()
        return path:sub(start,#path)
    end)
end


wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
  local lbl
  for shlindex = 1, #custom_shells do
    if tab.active_pane.title:match(custom_shells[shlindex].args[1], 1, true) then
      lbl = custom_shells[shlindex].label
      break
    end
  end
  return string.format(" %-15s ", lbl or get_file_name(tab.active_pane.title) or tab.active_pane.title);
end)

return {
    default_prog = {"powershell"},
    font = wezterm.font("JetBrains Mono Regular"),
    send_composed_key_when_left_alt_is_pressed=true,
    send_composed_key_when_right_alt_is_pressed=false,
    keys = {
        {key="1", mods="ALT", action="DisableDefaultAssignment"},
        {key="2", mods="ALT", action="DisableDefaultAssignment"},
        {key="3", mods="ALT", action="DisableDefaultAssignment"},
        {key="4", mods="ALT", action="DisableDefaultAssignment"},
        {key="5", mods="ALT", action="DisableDefaultAssignment"},
        {key="6", mods="ALT", action="DisableDefaultAssignment"},
        {key="7", mods="ALT", action="DisableDefaultAssignment"},
        {key="8", mods="ALT", action="DisableDefaultAssignment"},
        {key="9", mods="ALT", action="DisableDefaultAssignment"},
        {key="0", mods="ALT", action="DisableDefaultAssignment"},
        {key="1", mods="CTRL|SHIFT", action="DisableDefaultAssignment"},
        {key="2", mods="CTRL|SHIFT", action="DisableDefaultAssignment"},
        {key="3", mods="CTRL|SHIFT", action="DisableDefaultAssignment"},
        {key="4", mods="CTRL|SHIFT", action="DisableDefaultAssignment"},
        {key="5", mods="CTRL|SHIFT", action="DisableDefaultAssignment"},
        {key="6", mods="CTRL|SHIFT", action="DisableDefaultAssignment"},
        {key="7", mods="CTRL|SHIFT", action="DisableDefaultAssignment"},
        {key="8", mods="CTRL|SHIFT", action="DisableDefaultAssignment"},
        {key="9", mods="CTRL|SHIFT", action="DisableDefaultAssignment"},
        {key="0", mods="CTRL|SHIFT", action="DisableDefaultAssignment"},
        {key="1", mods="CTRL", action=wezterm.action{ActivateTab=0}},
        {key="2", mods="CTRL", action=wezterm.action{ActivateTab=1}},
        {key="3", mods="CTRL", action=wezterm.action{ActivateTab=2}},
        {key="4", mods="CTRL", action=wezterm.action{ActivateTab=3}},
        {key="5", mods="CTRL", action=wezterm.action{ActivateTab=4}},
        {key="6", mods="CTRL", action=wezterm.action{ActivateTab=5}},
        {key="7", mods="CTRL", action=wezterm.action{ActivateTab=6}},
        {key="8", mods="CTRL", action=wezterm.action{ActivateTab=7}},
        {key="9", mods="CTRL", action=wezterm.action{ActivateTab=8}},
        {key="0", mods="CTRL", action=wezterm.action{ActivateTab=-1}},
        {key="PageUp",   mods="CTRL", action=wezterm.action{ActivateTabRelative=-1}},
        {key="PageDown", mods="CTRL", action=wezterm.action{ActivateTabRelative=1}},
    }
}
