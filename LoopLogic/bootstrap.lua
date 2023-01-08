package.path = package.path .. ';./?.lua'
require('preload')

require('ui/main/ui_main')

UIManager.Show(UIMain)
