package.path = package.path .. ';./?.lua'
require('module/preload')

require('ui/main/ui_main')

UIManager.Show(UIMain)
