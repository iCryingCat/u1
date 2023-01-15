require 'u2lua/framework/ui/base_ui_entity'
UIMain = {}
local property = __Class(UIMain):__Extends(BaseUIEntity)

function property:OnShowed()
    print("main ui showed")
end

function property:OnBindEvents()
    self.btnButton.onClick:AddListener(function()
        print("click")
    end)
end

--[[Unity Lua Auto Define++]]
UIMain.pathAsset = "main/main.prefab"
function UIMain:BindComponentUnits()
    self.btnButton = self:GetComponentUnit(0) --Button
end

--[[Unity Lua Auto Define--]]
