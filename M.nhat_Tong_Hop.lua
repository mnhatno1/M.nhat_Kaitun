-- ✅ MẪU CHUẨN CHO NGƯỜI MỚI | TÉO HUB 🍎

repeat task.wait() until game:IsLoaded()

------------------------------------------------
-- NÚT ICON MỞ / ẨN UI
------------------------------------------------

local player = game.Players.LocalPlayer

local ScreenGui = Instance.new("ScreenGui")
local ImageButton = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")

ScreenGui.Parent = player:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ImageButton.Parent = ScreenGui
ImageButton.BackgroundColor3 = Color3.fromRGB(0,0,0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.10615778,0,0.16217947,0)
ImageButton.Size = UDim2.new(0,40,0,40)
ImageButton.Draggable = true
ImageButton.Image = "http://www.roblox.com/asset/?id=106820031338222"

UICorner.CornerRadius = UDim.new(1,10)
UICorner.Parent = ImageButton

------------------------------------------------
-- FLUENT UI
------------------------------------------------

local Fluent = loadstring(game:HttpGet(
"https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

local Window = Fluent:CreateWindow({
	Title = "M.nhat Tổng Hợp ®",
	SubTitle = "Tong hop🍇🍇🍇",
	TabWidth = 157,
	Size = UDim2.fromOffset(550,400),
	Acrylic = true,
	Theme = "Red",
	MinimizeKey = Enum.KeyCode.End
})

------------------------------------------------
-- FIX ICON ẨN / HIỆN UI
------------------------------------------------

ImageButton.MouseButton1Click:Connect(function()
	if Window then
		Window:Minimize()
	end
end)

------------------------------------------------
-- TABS
------------------------------------------------

local Tabs = {
	Main0 = Window:AddTab({ Title = "một số kênh🤓" }),
	Main1 = Window:AddTab({ Title = "Blox fruit 🍇" }),
	Main2 = Window:AddTab({ Title = "Hop Sever 🔰" }),
	Main3 = Window:AddTab({ Title = "99 đêm🥷" }),
	Main4 = Window:AddTab({ Title = "blox fruit🍎" }),
	Main5 = Window:AddTab({ Title = "plan vs branro🌲🐘t" })
}

------------------------------------------------
-- TAB 1
------------------------------------------------

Tabs.Main0:AddButton({
	Title = "caythue_24h",
	Description = "oách xà lách vô cùng",
	Callback = function()
		setclipboard("https://www.tiktok.com/@jannie3342")
	end
})

Tabs.Main0:AddButton({
	Title = "Tik Tok",
	Description = "Làm cho có",
	Callback = function()
		setclipboard("https://www.tiktok.com/@caythue_24h")
	end
})

------------------------------------------------
-- TAB BLOX FRUIT
------------------------------------------------

Tabs.Main1:AddButton({
	Title = "Quantum Onyx",
	Description = "Farm ổn định",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/flazhy/QuantumOnyx/main/QuantumOnyx.lua"))()
	end
})

Tabs.Main1:AddButton({
	Title = "Omg Hub",
	Description = "Script cần key",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Omgshit/Scripts/main/MainLoader.lua"))()
	end
})

Tabs.Main1:AddButton({
	Title = "Maru Hub",
	Description = "Farm ngon",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/aloaloalo322/sssdas/main/cc"))()
	end
})

Tabs.Main1:AddButton({
	Title = "Gravity Hub",
	Description = "Máy yếu dễ lag",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/main/Main.lua"))()
	end
})

Tabs.Main1:AddButton({
	Title = "Banana Hub",
	Description = "Farm tự động",
	Callback = function()
		repeat wait() until game:IsLoaded()
		getgenv().Team = "Marines"
		loadstring(game:HttpGet("https://raw.githubusercontent.com/obiyeueim/vthangsitink/main/BananaHub.lua"))()
	end
})

------------------------------------------------
-- HOP SERVER
------------------------------------------------

Tabs.Main2:AddButton({
	Title = "Night Hub Hop",
	Description = "Hop server tự động",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/WhiteX1208/Scripts/main/HopScript.luau"))()
	end
})

Tabs.Main2:AddButton({
	Title = "Bacon Hub",
	Description = "Máy lag kp khuyến khích",
	Callback = function()
		repeat wait() until game:IsLoaded()
		getgenv().team = "Pirates"
		loadstring(game:HttpGet("https://raw.githubusercontent.com/vinh129150/hack/refs/heads/main/HopBoss.lua"))()
	end
})

------------------------------------------------
-- M.NHAT HUB
------------------------------------------------

Tabs.Main1:AddButton({
	Title = "M.nhat hub",
	Description = "Máy lag kp khuyến khích",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/Main.lua"))()
	end
})
