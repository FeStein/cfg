-- #############################################################################
-- Load all my configurations
-- #############################################################################

-- Sleep Awake
local Caffeine  = require('awake_sleep')

-- Resize windows
local Windows = require('window_movements')

-- Timer for Pomodoro
-- local Timer = require('timer')

-- spoons
-- CH = hs.loadSpoon("Cherry")

-- #############################################################################
-- Fancy Config Reloading
-- #############################################################################
function reloadConfig(files)
    doReload = false
    for _,file in pairs(files) do
        if file:sub(-4) == ".lua" then
            doReload = true
        end
    end
    if doReload then
        hs.reload()
    end
end
myWatcher = hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reloadConfig):start()
hs.alert.show("Config loaded")

-- #############################################################################
-- Move Mouse every X minutes
-- #############################################################################
--
function movemouse(x1,y1,x2,y2,sleep)
local xdiff = x2 - x1
local ydiff = y2 - y1
local loop = math.floor( math.sqrt((xdiff*xdiff)+(ydiff*ydiff)) )
local xinc = xdiff / loop
local yinc = ydiff / loop
sleep = math.floor((sleep * 1000000) / loop)
for i=1,loop do
x1 = x1 + xinc
y1 = y1 + yinc
hs.mouse.absolutePosition({x = math.floor(x1), y = math.floor(y1)})
hs.timer.usleep(sleep)
end
hs.mouse.absolutePosition({x = math.floor(x2), y = math.floor(y2)})
end
--movemouse(0,0,1920,1080,2)
--dwtimer = hs.timer.doEvery(10, function() movemouse(0,0,1920,1080,2) end)
--dwtimer:start()
