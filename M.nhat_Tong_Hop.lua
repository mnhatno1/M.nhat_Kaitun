repeat task.wait() until game:IsLoaded()

-- ===================================
-- 🔐 MNHAT KEY SYSTEM
-- ===================================

local Players = game:GetService("Players")
local Player = Players.LocalPlayer

local CorrectKey = "MNHAT_VIP_TH" -- 🔑 ĐỔI KEY TẠI ĐÂY
local GetKeyLink = "https://link-key-cua-ban.com"

if getgenv().MNHAT_KEY_LOADED then
	return
end
getgenv().MNHAT_KEY_LOADED = true

local KeyGui = Instance.new("ScreenGui")
KeyGui.Name = "MnhatKeySystem"
KeyGui.Parent = Player:WaitForChild("PlayerGui")
KeyGui.ResetOnSpawn = false

local Frame = Instance.new("Frame", KeyGui)
Frame.Size = UDim2.new(0,320,0,200)
Frame.Position = UDim2.new(0.5,-160,0.5,-100)
Frame.BackgroundColor3 = Color3.fromRGB(15,15,15)
Frame.Active = true
Frame.Draggable = true
Instance.new("UICorner", Frame)

local Title = Instance.new("TextLabel", Frame)
Title.Size = UDim2.new(1,0,0,40)
Title.BackgroundTransparency = 1
Title.Text = "🔐 M.NHAT HUB KEY SYSTEM"
Title.TextColor3 = Color3.fromRGB(255,0,0)
Title.TextScaled = true
Title.Font = Enum.Font.GothamBold

local TextBox = Instance.new("TextBox", Frame)
TextBox.Size = UDim2.new(0.85,0,0,40)
TextBox.Position = UDim2.new(0.075,0,0.35,0)
TextBox.PlaceholderText = "Nhập key tại đây..."
TextBox.TextScaled = true
TextBox.BackgroundColor3 = Color3.fromRGB(25,25,25)
TextBox.TextColor3 = Color3.new(1,1,1)
Instance.new("UICorner", TextBox)

local CheckButton = Instance.new("TextButton", Frame)
CheckButton.Size = UDim2.new(0.85,0,0,35)
CheckButton.Position = UDim2.new(0.075,0,0.6,0)
CheckButton.Text = "XÁC NHẬN"
CheckButton.BackgroundColor3 = Color3.fromRGB(255,0,0)
CheckButton.TextColor3 = Color3.new(1,1,1)
CheckButton.TextScaled = true
CheckButton.Font = Enum.Font.GothamBold
Instance.new("UICorner", CheckButton)

local GetKeyButton = Instance.new("TextButton", Frame)
GetKeyButton.Size = UDim2.new(0.85,0,0,30)
GetKeyButton.Position = UDim2.new(0.075,0,0.8,0)
GetKeyButton.Text = "📋 GET KEY"
GetKeyButton.BackgroundColor3 = Color3.fromRGB(40,40,40)
GetKeyButton.TextColor3 = Color3.new(1,1,1)
GetKeyButton.TextScaled = true
Instance.new("UICorner", GetKeyButton)

GetKeyButton.MouseButton1Click:Connect(function()
	if setclipboard then
		setclipboard(GetKeyLink)
	end
	GetKeyButton.Text = "✔ ĐÃ COPY LINK"
	wait(2)
	GetKeyButton.Text = "📋 GET KEY"
end)

CheckButton.MouseButton1Click:Connect(function()
	if TextBox.Text == CorrectKey then
		KeyGui:Destroy()
	else
		TextBox.Text = ""
		TextBox.PlaceholderText = "❌ Sai Key!"
	end
end)

repeat task.wait() until not KeyGui.Parent

-- ===================================
-- 🚀 HUB GỐC CỦA BẠN (GIỮ NGUYÊN)
-- ===================================

-- 🧹 Xoá GUI cũ nếu có
pcall(function()
	Player.PlayerGui:FindFirstChild("TeoHubGui"):Destroy()
end)

-- 🟢 Nút mở menu chính
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "TeoHubGui"
ScreenGui.Parent = Player:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

local ImageButton = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")

ImageButton.Parent = ScreenGui
ImageButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.10615778, 0, 0.16217947, 0)
ImageButton.Size = UDim2.new(0, 40, 0, 40)
ImageButton.Draggable = true
ImageButton.Image = "http://www.roblox.com/asset/?id=97731875228487"

UICorner.CornerRadius = UDim.new(1, 10)
UICorner.Parent = ImageButton

-- 🟣 Load Fluent
local Fluent = loadstring(game:HttpGet(
	"https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"
))()

-- 🪟 Cửa sổ chính
local Window = Fluent:CreateWindow({
	Title = "M.nhat Tổng Hợp ®",
	SubTitle = "Tong hop🍇🍇🍇",
	TabWidth = 157,
	Size = UDim2.fromOffset(550, 400),
	Acrylic = true,
	Theme = "Red",
	MinimizeKey = Enum.KeyCode.End
})

ImageButton.MouseButton1Click:Connect(function()
	Window:Minimize()
end)

-- 📑 Các tab (giữ nguyên như file bạn gửi)
local Tabs = {
	Main0 = Window:AddTab({ Title = "một số kênh🤓" }),
	Main1 = Window:AddTab({ Title = "Blox fruit 🍇" }),
	Main2 = Window:AddTab({ Title = "Hop Sever 🔰" }),
	Main3 = Window:AddTab({ Title = "TSB " }),
	Main4 = Window:AddTab({ Title = "99 Day " }),
	Main5 = Window:AddTab({ Title = "plan vs branro🌲🐘t" })
}

-- (Các nút bên dưới bạn giữ nguyên như file cũ, mình không cắt bớt để tránh lỗi)

------------------------------------------------
-- TAB 1
------------------------------------------------
Tabs.Main0:AddButton({
	Title = "caythue_24h",
	Description = "oách xà lách vô cùng",
	Callback = function()
		setclipboard("https://www.tiktok.com/@jannie3342?_t=ZS-90QsJQ5j0NO&_r=1")
	end
})

Tabs.Main0:AddButton({
	Title = "Tik Tok",
	Description = "Làm cho có",
	Callback = function()
		setclipboard("https://www.tiktok.com/@caythue_24h?_r=1&_t=ZS-94NVHNVEL1Y")
	end
})

Tabs.Main0:AddButton({
	Title = "tiktok",
	Description = "fl tiktok để biết thêm nhiều script",
	Callback = function()
		setclipboard("https://www.tiktok.com/@caythue_24h?_r=1&_t=ZS-94NVHNVEL1Y")
	end
})

------------------------------------------------
-- TAB 2
------------------------------------------------
Tabs.Main1:AddButton({
	Title = "Quan Tum Onyx",
	Description = "Farm ổn định (ngon)",
	Callback = function()
		loadstring(game:HttpGet(
			"https://raw.githubusercontent.com/flazhy/QuantumOnyx/main/QuantumOnyx.lua"
		))()
	end
})

Tabs.Main1:AddButton({
	Title = "Omg Hub",
	Description = "Script Farm cần key",
	Callback = function()
		loadstring(game:HttpGet(
			"https://raw.githubusercontent.com/Omgshit/Scripts/main/MainLoader.lua"
		))()
	end
})

Tabs.Main1:AddButton({
	Title = "Maru hub",
	Description = "ngon",
	Callback = function()
		loadstring(game:HttpGet(
			"https://raw.githubusercontent.com/aloaloalo322/sssdas/main/cc"
		))()
	end
})

Tabs.Main1:AddButton({
	Title = "Gravity hub",
	Description = "Máy lag kp khuyến khích",
	Callback = function()
		loadstring(game:HttpGet(
			"https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/main/Main.lua"
		))()
	end
})

Tabs.Main1:AddButton({
	Title = "Banana hub",
	Description = "Máy lag kp khuyến khích",
	Callback = function()
		getgenv().Team = "Marines"
		loadstring(game:HttpGet(
			"https://raw.githubusercontent.com/obiyeueim/vthangsitink/main/BananaHub.lua"
		))()
	end
})

------------------------------------------------
-- TAB 3
------------------------------------------------
Tabs.Main2:AddButton({
	Title = "Night Hub 🌐",
	Description = "Hop server",
	Callback = function()
		loadstring(game:HttpGet(
			"https://raw.githubusercontent.com/WhiteX1208/Scripts/main/HopScript.luau"
		))()
	end
})

Tabs.Main2:AddButton({
	Title = "HDanh Hop☢️",
	Description = "Hop server",
	Callback = function()
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
		else
			warn("HDanh Hop load thất bại")
		end
	end
})

Tabs.Main1:AddButton({
	Title = "Bacon hub",                             -- 👈 tên nút hiển thị
	Description = "Máy lag kp khuyến khích ",-- 👈 mô tả
	Callback = function()
		local Settings = {
			JoinTeam = "Pirates";   -- 👈 team mặc định: Pirates hoặc Marines
			Translator = true;      -- 👈 bật dịch sang tiếng Việt nếu có
		}
		repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
getgenv().team = "Pirates" -- Pirates or Marines
loadstring(game:HttpGet("https://raw.githubusercontent.com/vinh129150/hack/refs/heads/main/HopBoss.lua"))()- 👈 link script tải
	end
})

Tabs.Main3:AddButton({
	Title = "Boncuti TSB V6",                             -- 👈 tên nút hiển thị
	Description = "Khá ngon",-- 👈 mô tả
	Callback = function()
		local Settings = {
			JoinTeam = "Pirates";   -- 👈 team mặc định: Pirates hoặc Marines
			Translator = true;      -- 👈 bật dịch sang tiếng Việt nếu có
		}
		loadstring(game:HttpGet("https://gist.githubusercontent.com/binhvuong2424-ops/cad4bd8cdd705e17778535b7c9dce96a/raw/a1a22f4d4f999b961a383aad3ce46bf5fe6cef2e/BONCUTITSBV6.lua"))() -- 👈 link script tải
	end
})

Tabs.Main3:AddButton({
	Title = "Duy TSB",                             -- 👈 tên nút hiển thị
	Description = "Ngon vaizz",-- 👈 mô tả
	Callback = function()
		local Settings = {
			JoinTeam = "Pirates";   -- 👈 team mặc định: Pirates hoặc Marines
			Translator = true;      -- 👈 bật dịch sang tiếng Việt nếu có
		}
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Duytsb1609/TSB-SIGMA/refs/heads/main/Tong%20Hop%20Rayfiel%20ThanhDuy%20No%20Scam.lua"))() -- 👈 link script tải
	end
})

Tabs.Main4:AddButton({
	Title = "Cao mod 99day",                             -- 👈 tên nút hiển thị
	Description = "No 🔑keys",-- 👈 mô tả
	Callback = function()
		local Settings = {
			JoinTeam = "Pirates";   -- 👈 team mặc định: Pirates hoặc Marines
			Translator = true;      -- 👈 bật dịch sang tiếng Việt nếu có
		}
		loadstring(game:HttpGet("https://raw.githubusercontent.com/caomod2077/Script/refs/heads/main/Free%20Private%20Server.lua"))(-- 👈 link script tải
	end
})

	Tabs.Main4:AddButton({
	Title = "???",                             -- 👈 tên nút hiển thị
	Description = "No key 🔑",-- 👈 mô tả
	Callback = function()
		local Settings = {
			JoinTeam = "Pirates";   -- 👈 team mặc định: Pirates hoặc Marines
			Translator = true;      -- 👈 bật dịch sang tiếng Việt nếu có
		}
		loadstring(game:HttpGet("https://raw.githubusercontent.com/newbie0z-lol/preprt/refs/heads/main/preprt.lua"))() -- 👈 link script tải
	end
})
