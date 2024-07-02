-- #############################################################################
-- Window Movements
-- #############################################################################

-- Window FullScreen
hs.hotkey.bind({"ctrl", "alt"}, "return", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = 0 -- offset from status bar
  f.w = max.w
  f.h = max.h - 0
  win:setFrame(f)
end)

-- Move window to left half of the screen
hs.hotkey.bind({"ctrl", "alt"}, "Left", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = 0 -- offset from status bar
  f.w = max.w / 2
  f.h = max.h - 0
  win:setFrame(f)
end)

-- Move window to right half of the screen
hs.hotkey.bind({"ctrl", "alt"}, "Right", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x  + (max.w / 2)
  f.y = 0 -- offset from status bar
  f.w = max.w / 2
  f.h = max.h - 0
  win:setFrame(f)
end)

-- Move window to left third of the screen
hs.hotkey.bind({"ctrl", "alt"}, "D", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = 0 -- offset from status bar
  f.w = max.w / 3
  f.h = max.h - 0
  win:setFrame(f)
end)

-- Move window to middle third of the screen
hs.hotkey.bind({"ctrl", "alt"}, "F", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w / 3)
  f.y = 0 -- offset from status bar
  f.w = max.w / 3
  f.h = max.h - 0
  win:setFrame(f)
end)

-- Move window to right third of the screen
hs.hotkey.bind({"ctrl", "alt"}, "G", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + 2 * (max.w / 3)
  f.y = 0 -- offset from status bar
  f.w = max.w / 3
  f.h = max.h - 0
  win:setFrame(f)
end)

-- Move window to two left thirds of the screen
hs.hotkey.bind({"ctrl", "alt"}, "E", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = 0 -- offset from status bar
  f.w = 2*(max.w / 3)
  f.h = max.h - 0
  win:setFrame(f)
end)

-- Move window to two right thirds of the screen
hs.hotkey.bind({"ctrl", "alt"}, "T", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w / 3)
  f.y = 0 -- offset from status bar
  f.w = 2*(max.w / 3)
  f.h = max.h - 0
  win:setFrame(f)
end)

