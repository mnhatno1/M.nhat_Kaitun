repeat task.wait() until game:IsLoaded()

local player = game.Players.LocalPlayer
local TweenService = game:GetService("TweenService")

------------------------------------------------
-- LOADER
------------------------------------------------

local Loader = Instance.new("ScreenGui")
Loader.Parent = game.CoreGui

local Frame = Instance.new("Frame",Loader)
Frame.Size = UDim2.new(0,300,0,120)
Frame.Position = UDim2.new(0.5,-150,0.5,-60)
Frame.BackgroundColor3 = Color3.fromRGB(15,15,15)

Instance.new("UICorner",Frame)

local Text = Instance.new("TextLabel",Frame)
Text.Size = UDim2.new(1,0,0,40)
Text.BackgroundTransparency = 1
Text.Text = "Loading MNHAT HUB..."
Text.TextScaled = true
Text.TextColor3 = Color3.fromRGB(255,0,0)

local BarBG = Instance.new("Frame",Frame)
BarBG.Size = UDim2.new(0.9,0,0,20)
BarBG.Position = UDim2.new(0.05,0,0.6,0)
BarBG.BackgroundColor3 = Color3.fromRGB(40,40,40)

local Bar = Instance.new("Frame",BarBG)
Bar.Size = UDim2.new(0,0,1,0)
Bar.BackgroundColor3 = Color3.fromRGB(255,0,0)

TweenService:Create(Bar,TweenInfo.new(3),{
Size = UDim2.new(1,0,1,0)
}):Play()

task.wait(3)
Loader:Destroy()

------------------------------------------------
-- KEY SYSTEM
------------------------------------------------

local Key = "MNHAT_VIP_TH/30"

local KeyGui = Instance.new("ScreenGui")
KeyGui.Parent = game.CoreGui

local Main = Instance.new("Frame",KeyGui)
Main.Size = UDim2.new(0,340,0,200)
Main.Position = UDim2.new(0.5,-170,0.5,-100)
Main.BackgroundColor3 = Color3.fromRGB(20,20,20)

Instance.new("UICorner",Main)

local Title = Instance.new("TextLabel",Main)
Title.Size = UDim2.new(1,0,0,50)
Title.BackgroundTransparency = 1
Title.Text = "MNHAT KEY SYSTEM"
Title.TextScaled = true
Title.TextColor3 = Color3.fromRGB(255,0,0)

local Box = Instance.new("TextBox",Main)
Box.Size = UDim2.new(0.8,0,0,40)
Box.Position = UDim2.new(0.1,0,0.4,0)
Box.PlaceholderText = "ENTER KEY"
Box.TextScaled = true

local Button = Instance.new("TextButton",Main)
Button.Size = UDim2.new(0.5,0,0,35)
Button.Position = UDim2.new(0.25,0,0.7,0)
Button.Text = "CHECK KEY"
Button.TextScaled = true
Button.BackgroundColor3 = Color3.fromRGB(255,0,0)

------------------------------------------------
-- MỞ HUB GỐC
------------------------------------------------

local function OpenHub()

KeyGui:Destroy()

-- HUB GỐC CỦA BẠN
loadstring(game:HttpGet("https://raw.githubusercontent.com/mnhatno1/M.nhat_Kaitun/main/M.nhat_Tong_Hop.lua"))()

end

------------------------------------------------
-- CHECK KEY
------------------------------------------------

Button.MouseButton1Click:Connect(function()

if Box.Text == Key then

Box.Text = "KEY CORRECT"
task.wait(1)

OpenHub()

else

Box.Text = ""
Box.PlaceholderText = "WRONG KEY"

end

end)
