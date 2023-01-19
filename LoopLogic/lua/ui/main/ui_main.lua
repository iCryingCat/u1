UIMain = {
    --[[UNITY LUA AUTO INJECT THEN]]
    btnButton = 0, --Button
    txtTest = 1, --TextMeshProUGUI
    pathAsset = "main/main.prefab",
    --[[UNITY LUA AUTO INJECT END]]
}

function UIMain:OnShowed()
    print("main ui showed")
end

function UIMain:OnBindEvents()
    self.btnButton.onClick:AddListener(function()
        print("click")
    end)
end
