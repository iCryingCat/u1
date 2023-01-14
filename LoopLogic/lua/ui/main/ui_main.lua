require 'u2lua/framework/ui/base_ui_entity'

_CLS.UIMain = {}
_CLS.UIMain.pathAsset = 'main/main.prefab'
UIMain = __Class(_CLS.UIMain):__Extends(BaseUIEntity)

local btn = nil

function UIMain:OnBindEvents()
    btn.onClick:AddListener(function()
    end)
end

function UIMain:OnShowed()
    print("main ui showed")
end

function UIMain:BindComponentUnits()
    btn = self:GetComponentUnit(0)
end
