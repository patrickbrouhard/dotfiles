-- Keep only your personal keybinding overrides here. Add new bindings or
-- unbind defaults before replacing them.

-- See current bindings and descriptions:
--   omarchy menu keybindings --print

-- To disable every Omarchy default binding, set this in
-- ~/.config/hypr/hyprland.lua before require("default.hypr.omarchy"), then add
-- only the bindings you want below:
--   omarchy_default_bindings = false

-- To disable all preinstalled app/webapp bindings, set:
--   omarchy_preinstalled_bindings = false

-- Add a new binding.
-- o.bind("SUPER + SHIFT + R", "SSH", "alacritty -e ssh your-server")

-- Change an existing binding by unbinding it first, then binding the key again.
-- This example changes SUPER+SPACE from the launcher to the Omarchy root menu.
-- hl.unbind("SUPER + SPACE")
-- o.bind("SUPER + SPACE", "Omarchy menu", "omarchy-menu toggle root")

-- Disable a default binding without replacing it.
-- hl.unbind("SUPER + SHIFT + B")

-- Logitech MX Keys examples:
-- o.bind("SUPER + SHIFT + S", nil, "omarchy-capture-screenshot")
-- o.bind("SUPER + H", nil, "voxtype record toggle")
-- o.bind("SUPER + PERIOD", nil, "omarchy-shell shell toggle omarchy.emojis")
--

-- Use the MX Keys S dictation key to toggle VoxType recording.

o.bind("SUPER + H", nil, "voxtype record toggle")

-- Workspace navigation
hl.unbind("SUPER + mouse_down")
hl.unbind("SUPER + mouse_up")

o.bind(
  "SUPER + mouse_down",
  "Next workspace on current monitor",
  hl.dsp.focus({ workspace = "m+1" })
)

o.bind(
  "SUPER + mouse_up",
  "Previous workspace on current monitor",
  hl.dsp.focus({ workspace = "m-1" })
)

o.bind(
  "SUPER + N",
  "Next empty workspace on current monitor",
  hl.dsp.focus({ workspace = "emptynm" })
)

-- Secondary monitor workspaces (numpad 1-0 -> workspaces 11-20)
o.bind("SUPER + code:87", "Workspace 11", hl.dsp.focus({ workspace = "11" }))
o.bind("SUPER + code:88", "Workspace 12", hl.dsp.focus({ workspace = "12" }))
o.bind("SUPER + code:89", "Workspace 13", hl.dsp.focus({ workspace = "13" }))
o.bind("SUPER + code:83", "Workspace 14", hl.dsp.focus({ workspace = "14" }))
o.bind("SUPER + code:84", "Workspace 15", hl.dsp.focus({ workspace = "15" }))
o.bind("SUPER + code:85", "Workspace 16", hl.dsp.focus({ workspace = "16" }))
o.bind("SUPER + code:79", "Workspace 17", hl.dsp.focus({ workspace = "17" }))
o.bind("SUPER + code:80", "Workspace 18", hl.dsp.focus({ workspace = "18" }))
o.bind("SUPER + code:81", "Workspace 19", hl.dsp.focus({ workspace = "19" }))
o.bind("SUPER + code:90", "Workspace 20", hl.dsp.focus({ workspace = "20" }))

------------------------------------------------------------------------------
-----------------
-- config Wuwa --
-----------------
local wuwa_class = "steam_app_3513350"

local function wuwa_number_bind(input_code, number)
  hl.bind("code:" .. input_code, function()
    local window = hl.get_active_window()

    if not window or window.class ~= wuwa_class then
      return { ok = false }
    end

    hl.dispatch(
      hl.dsp.exec_cmd(
        "xdotool keyup Shift_L Shift_R; xdotool key " .. number
      )
    )
  end, {
    auto_consuming = true,
    dont_inhibit = true,
    allow_input_capture = true,
  })
end

wuwa_number_bind("10", "1")
wuwa_number_bind("11", "2")
wuwa_number_bind("12", "3")
wuwa_number_bind("13", "4")

