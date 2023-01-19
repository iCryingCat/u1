package.path = package.path .. ';./?.lua'
require('u2lua/framework/unity/d')
require('u2lua/base/class')
require('u2lua/framework/ui/ui_manager')
require('ui/main/ui_main')

UIManager.ShowUI(UIMain)
