require 'u2lua/framework/ui/base_view'

_CLS.UIMain = {}
UIMain = __Class(_CLS.UIMain):__Extends(BaseView)
local btn = nil

function UIMain:OnBindEvents()
    btn.onClick:AddListener(function()
    end)
end

function UIMain:OnShowed()
    print("main ui showed")
end

UIMain.BindingPath = function()
    return "main/main"
end

function UIMain:BindVars()
    btn = self:GetVar(0)
end
