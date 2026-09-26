-- Personal Hyprland window rules.
-- Add o.window(...) rules here to customize how applications open and behave.

-- Steam main window
o.window(
  {
    class = "^steam$",
    title = "^Steam$",
  },
  {
    size = { 1600, 1000 },
    center = true,
  }
)

