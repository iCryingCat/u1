package.path = package.path .. ';./?.lua'
require('u2lua/base/class')

_C.UITest = {}
local UITest = __Class__(_C.UITest)
function UITest:__Ctor__(x, y)
    print(x, y)
end

local uiTest = UITest:__New__(1, 5)
