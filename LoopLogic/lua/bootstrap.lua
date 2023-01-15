package.path = package.path .. ';./?.lua'
require('module/preload')

require('ui/main/ui_main')

print(UIMain)
UIManager.Show(UIMain)
