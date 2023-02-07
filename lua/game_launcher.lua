package.path = package.path .. ';./?.lua'
require("u2lua/lib/preload")
local UIMain = require('ui/main/ui_main')

UICanvas.LoadCanvas()
UIManager.ShowUI(UIMain)
