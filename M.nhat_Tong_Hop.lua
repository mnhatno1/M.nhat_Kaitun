repeat task.wait() until game:IsLoaded()

local player = game.Players.LocalPlayer

-- KEY SYSTEM
local Key = "MNHAT_VIP_30DAY"

local KeyGui = Instance.new("ScreenGui",player.PlayerGui)
KeyGui.Name = "KeySystem"

local Frame = Instance.new("Frame",KeyGui)
Frame.Size = UDim2.new(0,300,0,180)
Frame.Position = UDim2.new(0.5,-150,0.5,-90)
Frame.BackgroundColor3 = Color3.fromRGB(20,20,20)
Frame.Active = true
Frame.Draggable = true
Instance.new("UICorner",Frame)

local Title = Instance.new("TextLabel",Frame)
Title.Size = UDim2.new(1,0,0,40)
Title.Text = "MNhat Hub Key"
Title.TextColor3 = Color3.fromRGB(255,0,0)
Title.BackgroundTransparency = 1
Title.TextScaled = true

local Box = Instance.new("TextBox",Frame)
Box.Size = UDim2.new(0.8,0,0,35)
Box.Position = UDim2.new(0.1,0,0.4,0)
Box.PlaceholderText = "Enter Key"
Box.BackgroundColor3 = Color3.fromRGB(40,40,40)
Box.TextColor3 = Color3.new(1,1,1)
Instance.new("UICorner",Box)

local Button = Instance.new("TextButton",Frame)
Button.Size = UDim2.new(0.5,0,0,35)
Button.Position = UDim2.new(0.25,0,0.7,0)
Button.Text = "Check Key"
Button.BackgroundColor3 = Color3.fromRGB(255,0,0)
Button.TextColor3 = Color3.new(1,1,1)
Instance.new("UICorner",Button)

Button.MouseButton1Click:Connect(function()

if Box.Text == Key then
KeyGui:Destroy()
else
Box.Text = ""
Box.PlaceholderText = "Wrong Key"
end

end)

repeat task.wait() until not KeyGui.Parent

------------------------------------------------
-- HUB
------------------------------------------------

local old = player.PlayerGui:FindFirstChild("TeoHubGui")
if old then
old:Destroy()
end

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

local Window = Fluent:CreateWindow({
Title = "M.Nhat Tổng Hợp",
SubTitle = "Script Hub",
Size = UDim2.fromOffset(550,400),
Theme = "Red"
})

local Tabs = {
Main1 = Window:AddTab({Title="Blox Fruit"}),
Main2 = Window:AddTab({Title="Hop Server"}),
Main3 = Window:AddTab({Title="TSB"}),
Main4 = Window:AddTab({Title="99Day"})
}

------------------------------------------------
-- BLOX FRUIT
------------------------------------------------

Tabs.Main1:AddButton({
Title="Bacon Hub",
Callback=function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/vinh129150/hack/refs/heads/main/HopBoss.lua"))()
end
})

------------------------------------------------
-- HDANH SCRIPT
------------------------------------------------

Tabs.Main2:AddButton({
Title="HDanh Hop",
Callback=function()

local hs = game:GetService("HttpService")

local ok,res = pcall(function()
return hs:RequestAsync({
Url="http://eu.leonodes.xyz:24771/api/loader",
Method="POST",
Headers={
["X-HDANH"]="HDANH_SCRIPT_SECRET_2025"
},
Body="{}"
})
end)

if ok and res and res.Success then
loadstring(res.Body)()
else
warn("Không load được HDanh Script")
end

end
})

------------------------------------------------
-- TSB
------------------------------------------------

Tabs.Main3:AddButton({
Title="Boncuti TSB",
Callback=function()
loadstring(game:HttpGet("https://gist.githubusercontent.com/binhvuong2424-ops/cad4bd8cdd705e17778535b7c9dce96a/raw/BONCUTITSBV6.lua"))()
end
})

Tabs.Main3:AddButton({
Title="Duy TSB",
Callback=function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Duytsb1609/TSB-SIGMA/refs/heads/main/Tong%20Hop%20Rayfiel%20ThanhDuy%20No%20Scam.lua"))()
end
})

------------------------------------------------
-- 99DAY
------------------------------------------------

Tabs.Main4:AddButton({
Title="CaoMod 99Day",
Callback=function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/caomod2077/Script/refs/heads/main/Free%20Private%20Server.lua"))()
end
})

Tabs.Main4:AddButton({
Title="CPS Hub",
Callback=function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Rx1m/CpsHub/refs/heads/main/Hub"))()
end
})
