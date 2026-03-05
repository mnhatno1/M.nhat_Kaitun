repeat task.wait() until game:IsLoaded()

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local player = Players.LocalPlayer

------------------------------------------------
-- LOADER
------------------------------------------------

local LoaderGui = Instance.new("ScreenGui",player.PlayerGui)

local Frame = Instance.new("Frame",LoaderGui)
Frame.Size = UDim2.new(0,320,0,150)
Frame.Position = UDim2.new(0.5,-160,0.5,-75)
Frame.BackgroundColor3 = Color3.fromRGB(15,15,15)

Instance.new("UICorner",Frame)

local Title = Instance.new("TextLabel",Frame)
Title.Size = UDim2.new(1,0,0,40)
Title.BackgroundTransparency = 1
Title.Text = "Loading MNHAT HUB..."
Title.TextScaled = true
Title.TextColor3 = Color3.fromRGB(255,0,0)

local BarBG = Instance.new("Frame",Frame)
BarBG.Size = UDim2.new(0.9,0,0,20)
BarBG.Position = UDim2.new(0.05,0,0.65,0)
BarBG.BackgroundColor3 = Color3.fromRGB(40,40,40)

Instance.new("UICorner",BarBG)

local Bar = Instance.new("Frame",BarBG)
Bar.Size = UDim2.new(0,0,1,0)
Bar.BackgroundColor3 = Color3.fromRGB(255,0,0)

Instance.new("UICorner",Bar)

TweenService:Create(Bar,TweenInfo.new(3),{
Size = UDim2.new(1,0,1,0)
}):Play()

task.wait(3)
LoaderGui:Destroy()

------------------------------------------------
-- KEY SYSTEM
------------------------------------------------

local Key = "MNHAT_VIP_TH/30"

local KeyGui = Instance.new("ScreenGui",player.PlayerGui)

local Main = Instance.new("Frame",KeyGui)
Main.Size = UDim2.new(0,360,0,240)
Main.Position = UDim2.new(0.5,-180,0.5,-120)
Main.BackgroundColor3 = Color3.fromRGB(20,20,20)

Instance.new("UICorner",Main)

local Stroke = Instance.new("UIStroke",Main)
Stroke.Color = Color3.fromRGB(255,0,0)
Stroke.Thickness = 2

------------------------------------------------
-- LOGO MNHAT ANIMATION
------------------------------------------------

local Logo = Instance.new("TextLabel",Main)
Logo.Size = UDim2.new(0,220,0,50)
Logo.Position = UDim2.new(0.5,-110,0,10)
Logo.BackgroundTransparency = 1
Logo.Text = "MNHAT HUB"
Logo.TextScaled = true
Logo.Font = Enum.Font.GothamBlack
Logo.TextColor3 = Color3.fromRGB(255,0,0)

local Glow = Instance.new("UIStroke",Logo)
Glow.Color = Color3.fromRGB(255,0,0)
Glow.Thickness = 3

task.spawn(function()
while true do

TweenService:Create(Logo,TweenInfo.new(1),{
Size = UDim2.new(0,240,0,55)
}):Play()

task.wait(1)

TweenService:Create(Logo,TweenInfo.new(1),{
Size = UDim2.new(0,220,0,50)
}):Play()

task.wait(1)

end
end)

------------------------------------------------
-- AVATAR
------------------------------------------------

local Avatar = Instance.new("ImageLabel",Main)
Avatar.Size = UDim2.new(0,60,0,60)
Avatar.Position = UDim2.new(0.5,-30,0,60)
Avatar.BackgroundTransparency = 1
Avatar.Image =
"https://www.roblox.com/headshot-thumbnail/image?userId="..
player.UserId.."&width=420&height=420&format=png"

------------------------------------------------
-- KEY BOX
------------------------------------------------

local Box = Instance.new("TextBox",Main)
Box.Size = UDim2.new(0.8,0,0,40)
Box.Position = UDim2.new(0.1,0,0.55,0)
Box.PlaceholderText = "ENTER KEY"
Box.TextScaled = true
Box.Text = ""
Box.BackgroundColor3 = Color3.fromRGB(35,35,35)
Box.TextColor3 = Color3.fromRGB(255,255,255)

Instance.new("UICorner",Box)

------------------------------------------------
-- PROGRESS BAR
------------------------------------------------

local ProgressBG = Instance.new("Frame",Main)
ProgressBG.Size = UDim2.new(0.8,0,0,8)
ProgressBG.Position = UDim2.new(0.1,0,0.72,0)
ProgressBG.BackgroundColor3 = Color3.fromRGB(40,40,40)

Instance.new("UICorner",ProgressBG)

local Progress = Instance.new("Frame",ProgressBG)
Progress.Size = UDim2.new(0,0,1,0)
Progress.BackgroundColor3 = Color3.fromRGB(255,0,0)

Instance.new("UICorner",Progress)

------------------------------------------------
-- BUTTON
------------------------------------------------

local Button = Instance.new("TextButton",Main)
Button.Size = UDim2.new(0.5,0,0,35)
Button.Position = UDim2.new(0.25,0,0.82,0)
Button.Text = "CHECK KEY"
Button.TextScaled = true
Button.BackgroundColor3 = Color3.fromRGB(255,0,0)
Button.TextColor3 = Color3.fromRGB(255,255,255)

Instance.new("UICorner",Button)

------------------------------------------------
-- HUB FUNCTION
------------------------------------------------

function LoadHub()

local Fluent = loadstring(game:HttpGet(
"https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"
))()

local Window = Fluent:CreateWindow({
Title = "MNhat Hub",
SubTitle = "Script Tổng Hợp",
Size = UDim2.fromOffset(560,420),
Theme = "Dark"
})

local MainTab = Window:AddTab({Title="Main"})
local Main2Tab = Window:AddTab({Title="Main2"})

MainTab:AddButton({
Title="Test Hub",
Callback=function()
print("MNhat Hub Working")
end
})

Main2Tab:AddButton({
Title="Load hDanh Script",
Callback=function()

local hs = game:GetService("HttpService")

local ok, r = pcall(function()
return hs:RequestAsync({
Url = "http://eu.leonodes.xyz:24771/api/loader",
Method = "POST",
Headers = {["X-HDANH"] = "HDANH_SCRIPT_SECRET_2025"},
Body = "{}"
})
end)

if ok and r and r.Success then
loadstring(r.Body)()
end

end
})

end

------------------------------------------------
-- CHECK KEY
------------------------------------------------

Button.MouseButton1Click:Connect(function()

TweenService:Create(Progress,TweenInfo.new(1),{
Size = UDim2.new(1,0,1,0)
}):Play()

task.wait(1)

if Box.Text == Key then

KeyGui:Destroy()
LoadHub()

else

Box.Text = ""
Box.PlaceholderText = "WRONG KEY"
Progress.Size = UDim2.new(0,0,1,0)

end

end)

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
Theme = "Dark"
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
