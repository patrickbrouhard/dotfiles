-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
-- List current monitors and supported resolutions with: hyprctl monitors all

local omarchy_gdk_scale = 2
local omarchy_monitor_scale = 1

hl.env("GDK_SCALE", tostring(omarchy_gdk_scale))

-- LG 4K principal
hl.monitor({
  output = "DP-1",
  mode = "3840x2160@60",
  position = "0x0",
  scale = 1.5,
})

-- Iiyama 1080p à droite
hl.monitor({
  output = "HDMI-A-2",
  mode = "1920x1080@60",
  position = "2560x0",
  scale = 1,
})

-- Workspaces par défaut
hl.workspace_rule({
  workspace = "1",
  monitor = "DP-1",
  default = true,
})

hl.workspace_rule({
  workspace = "11",
  monitor = "HDMI-A-2",
  default = true,
})

-- Fallback pour un éventuel autre écran
hl.monitor({
  output = "",
  mode = "preferred",
  position = "auto",
  scale = omarchy_monitor_scale,
})

-- Workspaces 1-10 sur l'écran principal
for workspace = 1, 10 do
  hl.workspace_rule({
    workspace = tostring(workspace),
    monitor = "DP-1",
    default = (workspace == 1),
  })
end

-- Workspaces 11-20 sur l'écran secondaire
for workspace = 11, 20 do
  hl.workspace_rule({
    workspace = tostring(workspace),
    monitor = "HDMI-A-2",
    default = (workspace == 11),
  })
end

-- Configure a specific monitor.
-- hl.monitor({ output = "DP-2", mode = "2560x1440@144", position = "0x0", scale = 1 })

-- Portrait/rotated secondary monitor (transform: 1 = 90°, 3 = 270°).
-- hl.monitor({ output = "DP-2", mode = "preferred", position = "auto", scale = 1, transform = 1 })
