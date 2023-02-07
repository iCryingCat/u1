local UIMain = {
    uiTag = {
        layer = UILayer.common,
        node = UINode.middle,
        isSingleton = true,
    },
    --[[UNITY LUA AUTO INJECT THEN]]
    slug = "Main/Main.prefab",
    --[[UNITY LUA AUTO INJECT END]]
}

function UIMain:OnShowed()
    print("main ui showed")
end

function UIMain:OnBindEvents()
end

return UIMain
