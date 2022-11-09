-- #############################################################################
-- Load all my configurations
-- #############################################################################

-- Sleep Awake
local Caffeine  = require('awake_sleep')

-- Resize windows
local Windows = require('window_movements')

-- Timer for Pomodoro
local Timer = require('timer')

-- spoons
CH = hs.loadSpoon("Cherry")

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
