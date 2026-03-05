repeat task.wait() until game:IsLoaded()

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

local player = Players.LocalPlayer

local CorrectKey = "MNHAT_VIP_TH/30"
local ExpireDays = 30
local FileName = "MNHAT_KEY"

-- kiểm tra key đã lưu
local saved
pcall(function()
	saved = readfile(FileName..".txt")
end)

local function Expired(time)
	return (os.time() - tonumber(time)) > (ExpireDays*24*60*60)
end

if saved then

	local data = string.split(saved,"|")
	local key = data[1]
	local time = data[2]

	if key == CorrectKey and not Expired(time) then
		return
	end

end

-- GUI
local Gui = Instance.new("ScreenGui")
Gui.Parent = player:WaitForChild("PlayerGui")
Gui.ResetOnSpawn = false

local Frame = Instance.new("Frame",Gui)
Frame.Size = UDim2.new(0,0,0,0)
Frame.Position = UDim2.new(0.5,-170,0.5,-110)
Frame.BackgroundColor3 = Color3.fromRGB(18,18,18)
Frame.Active = true
Frame.Draggable = true

Instance.new("UICorner",Frame)

TweenService:Create(
	Frame,
	TweenInfo.new(0.5,Enum.EasingStyle.Back),
	{Size = UDim2.new(0,340,0,220)}
):Play()

-- neon border
local Stroke = Instance.new("UIStroke",Frame)
Stroke.Color = Color3.fromRGB(255,0,0)
Stroke.Thickness = 2

task.spawn(function()

	while true do

		TweenService:Create(
			Stroke,
			TweenInfo.new(1.5),
			{Color = Color3.fromRGB(255,60,60)}
		):Play()

		task.wait(1.5)

		TweenService:Create(
			Stroke,
			TweenInfo.new(1.5),
			{Color = Color3.fromRGB(255,0,0)}
		):Play()

		task.wait(1.5)

	end

end)

-- avatar
local userId = player.UserId

local content = Players:GetUserThumbnailAsync(
	userId,
	Enum.ThumbnailType.HeadShot,
	Enum.ThumbnailSize.Size100x100
)

local Avatar = Instance.new("ImageLabel",Frame)
Avatar.Size = UDim2.new(0,60,0,60)
Avatar.Position = UDim2.new(0.5,-30,0,10)
Avatar.BackgroundTransparency = 1
Avatar.Image = content

Instance.new("UICorner",Avatar).CornerRadius = UDim.new(1,0)

-- title
local Title = Instance.new("TextLabel",Frame)
Title.Size = UDim2.new(1,0,0,30)
Title.Position = UDim2.new(0,0,0,70)
Title.BackgroundTransparency = 1
Title.Text = "🔐 M.NHAT HUB"
Title.TextColor3 = Color3.fromRGB(255,0,0)
Title.Font = Enum.Font.GothamBold
Title.TextScaled = true

-- textbox
local Box = Instance.new("TextBox",Frame)
Box.Size = UDim2.new(0.8,0,0,35)
Box.Position = UDim2.new(0.1,0,0.5,0)
Box.PlaceholderText = "Enter Key..."
Box.TextScaled = true
Box.BackgroundColor3 = Color3.fromRGB(30,30,30)
Box.TextColor3 = Color3.new(1,1,1)

Instance.new("UICorner",Box)

-- progress bar
local ProgressBG = Instance.new("Frame",Frame)
ProgressBG.Size = UDim2.new(0.8,0,0,6)
ProgressBG.Position = UDim2.new(0.1,0,0.65,0)
ProgressBG.BackgroundColor3 = Color3.fromRGB(40,40,40)

Instance.new("UICorner",ProgressBG)

local Progress = Instance.new("Frame",ProgressBG)
Progress.Size = UDim2.new(0,0,1,0)
Progress.BackgroundColor3 = Color3.fromRGB(255,0,0)

Instance.new("UICorner",Progress)

local Glow = Instance.new("UIStroke",Progress)
Glow.Color = Color3.fromRGB(255,0,0)

-- submit
local Check = Instance.new("TextButton",Frame)
Check.Size = UDim2.new(0.35,0,0,35)
Check.Position = UDim2.new(0.1,0,0.75,0)
Check.Text = "Submit"
Check.BackgroundColor3 = Color3.fromRGB(255,0,0)
Check.TextColor3 = Color3.new(1,1,1)
Check.TextScaled = true

Instance.new("UICorner",Check)

-- get key
local GetKey = Instance.new("TextButton",Frame)
GetKey.Size = UDim2.new(0.35,0,0,35)
GetKey.Position = UDim2.new(0.55,0,0.75,0)
GetKey.Text = "Get Key"
GetKey.BackgroundColor3 = Color3.fromRGB(40,40,40)
GetKey.TextColor3 = Color3.new(1,1,1)
GetKey.TextScaled = true

Instance.new("UICorner",GetKey)

GetKey.MouseButton1Click:Connect(function()

	if setclipboard then
		setclipboard("https://your-key-link.com")
	end

	GetKey.Text="Copied!"
	task.wait(2)
	GetKey.Text="Get Key"

end)

-- kiểm tra key
Check.MouseButton1Click:Connect(function()

	for i=1,100 do

		Progress.Size = UDim2.new(i/100,0,1,0)
		task.wait(0.01)

	end

	if Box.Text == CorrectKey then

		pcall(function()
			writefile(FileName..".txt",CorrectKey.."|"..os.time())
		end)

		TweenService:Create(
			Frame,
			TweenInfo.new(0.4),
			{Size = UDim2.new(0,0,0,0)}
		):Play()

		task.wait(0.4)

		Gui:Destroy()

	else

		Progress.Size = UDim2.new(0,0,1,0)

		Box.Text=""
		Box.PlaceholderText="Wrong Key!"

	end

end)

repeat task.wait() until not Gui.Parent

-- ===================================
-- 🚀 HUB CHÍNH
-- ===================================

-- Xoá GUI cũ an toàn
local old = Player.PlayerGui:FindFirstChild("TeoHubGui")
if old then
	old:Destroy()
end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "TeoHubGui"
ScreenGui.Parent = Player:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

local ImageButton = Instance.new("ImageButton")
ImageButton.Parent = ScreenGui
ImageButton.BackgroundColor3 = Color3.fromRGB(0,0,0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.1,0,0.16,0)
ImageButton.Size = UDim2.new(0,40,0,40)
ImageButton.Image = "http://www.roblox.com/asset/?id=97731875228487"
ImageButton.Draggable = true

local UICorner = Instance.new("UICorner", ImageButton)
UICorner.CornerRadius = UDim.new(1,10)

-- Load Fluent
local Fluent = loadstring(game:HttpGet(
	"https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"
))()

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

local Tabs = {
	Main1 = Window:AddTab({ Title = "Blox fruit 🍇" }),
	Main2 = Window:AddTab({ Title = "Hop Sever 🔰" }),
	Main3 = Window:AddTab({ Title = "TSB" }),
	Main4 = Window:AddTab({ Title = "99 Day" })
}

-- ==============================
-- FIX 1: BACON HUB
-- ==============================
Tabs.Main1:AddButton({
	Title = "Bacon hub",
	Description = "Máy lag kp khuyến khích",
	Callback = function()
		repeat task.wait() until game:IsLoaded()
		getgenv().team = "Pirates"
		loadstring(game:HttpGet(
			"https://raw.githubusercontent.com/vinh129150/hack/refs/heads/main/HopBoss.lua"
		))()
	end
})

-- ==============================
-- FIX 2: CAO MOD 99DAY
-- ==============================
Tabs.Main4:AddButton({
	Title = "Cao mod 99day",
	Description = "No 🔑keys",
	Callback = function()
		loadstring(game:HttpGet(
			"https://raw.githubusercontent.com/caomod2077/Script/refs/heads/main/Free%20Private%20Server.lua"
		))()
	end
})

Tabs.Main3:AddButton({
	Title = "Boncuti TSB",                             -- 👈 tên nút hiển thị
	Description = "Máy lag kp khuyến khích ",-- 👈 mô tả
	Callback = function()
		local Settings = {
			JoinTeam = "Pirates";   -- 👈 team mặc định: Pirates hoặc Marines
			Translator = true;      -- 👈 bật dịch sang tiếng Việt nếu có
		}
		loadstring(game:HttpGet("https://gist.githubusercontent.com/binhvuong2424-ops/cad4bd8cdd705e17778535b7c9dce96a/raw/a1a22f4d4f999b961a383aad3ce46bf5fe6cef2e/BONCUTITSBV6.lua"))() -- 👈 link script tải
	end
})

Tabs.Main3:AddButton({
	Title = "Duy Tsb",                             -- 👈 tên nút hiển thị
	Description = "Máy lag kp khuyến khích ",-- 👈 mô tả
	Callback = function()
		local Settings = {
			JoinTeam = "Pirates";   -- 👈 team mặc định: Pirates hoặc Marines
			Translator = true;      -- 👈 bật dịch sang tiếng Việt nếu có
		}
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Duytsb1609/TSB-SIGMA/refs/heads/main/Tong%20Hop%20Rayfiel%20ThanhDuy%20No%20Scam.lua"))()
	end
})

Tabs.Main4:AddButton({
	Title = "CPS hub",                             -- 👈 tên nút hiển thị
	Description = "Máy lag kp khuyến khích ",-- 👈 mô tả
	Callback = function()
		local Settings = {
			JoinTeam = "Pirates";   -- 👈 team mặc định: Pirates hoặc Marines
			Translator = true;      -- 👈 bật dịch sang tiếng Việt nếu có
loadstring(game:HttpGet("https://raw.githubusercontent.com/Rx1m/CpsHub/refs/heads/main/Hub",true))() -- 👈 link script tải
	end
})
