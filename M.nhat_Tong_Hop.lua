-- ✅ MẪU CHUẨN CHO NGƯỜI MỚI | TÉO HUB 🍎
repeat task.wait() until game:IsLoaded()

local Player = game.Players.LocalPlayer

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

-- ✅ FIX: Nút tròn thu nhỏ/mở lại đúng cách
ImageButton.MouseButton1Click:Connect(function()
	Window:Minimize()
end)

-- 📑 Các tab
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
