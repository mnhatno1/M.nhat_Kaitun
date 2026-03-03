-- ✅ MẪU CHUẨN CHO NGƯỜI MỚI | TÉO HUB 🍎
-- Giữ nguyên giao diện thật, chỉ thêm hướng dẫn 👈 ngay bên cạnh dòng cần sửa

repeat task.wait() until game:IsLoaded()

-- 🟢 Nút mở menu chính
local ScreenGui = Instance.new("ScreenGui")
local ImageButton = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ImageButton.Parent = ScreenGui
ImageButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.10615778, 0, 0.16217947, 0)
ImageButton.Size = UDim2.new(0, 40, 0, 40)
ImageButton.Draggable = true
ImageButton.Image = "http://www.roblox.com/asset/?id=0987350775"  -- 👈 đổi ID ảnh nút mở menu tại đây (ảnh roblox)

UICorner.CornerRadius = UDim.new(1, 10)
UICorner.Parent = ImageButton

ImageButton.MouseButton1Down:Connect(function()
	game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.End, false, game)
end)

-- 🟣 Giao diện Fluent
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
repeat wait() until game:IsLoaded()

-- 🪟 Cửa sổ chính
local Window = Fluent:CreateWindow({
	Title = "M.nhat Tổng Hợp ®",         -- 👈 đổi thành tên script của bạn
	SubTitle = "Tong hop🍇🍇🍇",              -- 👈 đổi mô tả phụ
	TabWidth = 157,
	Size = UDim2.fromOffset(450, 300),
	Acrylic = true,
	Theme = "Amethyst",                   -- 👈 đổi màu chủ đạo: Amethyst, Dark, Aqua, Light,...
	MinimizeKey = Enum.KeyCode.End
})

-- 📑 Các tab (mục chính)
local Tabs = {
	Main0 = Window:AddTab({ Title = "một số kênh🤓" }),  -- 👈 đổi tên tab 1
	Main1 = Window:AddTab({ Title = "Blox fruit 🍇" }),  -- 👈 đổi tên tab 2
	Main2 = Window:AddTab({ Title = "Chx up" }),     -- 👈 đổi tên tab 3
	Main3 = Window:AddTab({ Title = "Chx up" }),        -- 👈 đổi tên tab 4
	Main4 = Window:AddTab({ Title = "Chx up" }),    -- 👈 đổi tên tab 5
	Main5 = Window:AddTab({ Title = "Chx up" }) -- 👈 đổi tên tab 6
}

------------------------------------------------
-- TAB 1: Các kênh tiktok
------------------------------------------------
Tabs.Main0:AddButton({
	Title = "caythue_24h",              -- 👈 tên nút
	Description = "oách xà lách vô cùng",-- 👈 mô tả nút
	Callback = function()
		setclipboard("https://www.tiktok.com/@jannie3342?_t=ZS-90QsJQ5j0NO&_r=1")  -- 👈 link sao chép
	end
})

Tabs.Main0:AddButton({
	Title = "Tik Tok",
	Description = "Làm cho có",
	Callback = function()
		setclipboard("https://www.tiktok.com/@caythue_24h?_r=1&_t=ZS-94NVHNVEL1Y")     -- 👈 link khác
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
-- TAB 2: Ví dụ thêm script
------------------------------------------------
Tabs.Main1:AddButton({
	Title = "Quan Tum Onyx",                             -- 👈 tên nút hiển thị
	Description = "Farm ổn định (ngon) ",-- 👈 mô tả
	Callback = function()
		local Settings = {
			JoinTeam = "Pirates";   -- 👈 team mặc định: Pirates hoặc Marines
			Translator = true;      -- 👈 bật dịch sang tiếng Việt nếu có
		}
		loadstring(game:HttpGet("https://raw.githubusercontent.com/flazhy/QuantumOnyx/refs/heads/main/QuantumOnyx.lua"))() -- 👈 link script tải
	end
})

Tabs.Main1:AddButton({
	Title = "Omg Hub ",                             -- 👈 tên nút hiển thị
	Description = "Script Farm cần key ",-- 👈 mô tả
	Callback = function()
		local Settings = {
			JoinTeam = "Pirates";   -- 👈 team mặc định: Pirates hoặc Marines
			Translator = true;      -- 👈 bật dịch sang tiếng Việt nếu có
		}
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Omgshit/Scripts/main/MainLoader.lua"))() -- 👈 link script tải
	end
})

Tabs.Main1:AddButton({
	Title = "Banana Premium 🍌",                             -- 👈 tên nút hiển thị
	Description = "Tuy Fake mà ngon vl",-- 👈 mô tả
	Callback = function()
		local Settings = {
			JoinTeam = "Pirates";   -- 👈 team mặc định: Pirates hoặc Marines
			Translator = true;      -- 👈 bật dịch sang tiếng Việt nếu có
		}
		loadstring(game:HttpGet("https://raw.githubusercontent.com/aloaloalo322/sssdas/refs/heads/main/cc"))() -- 👈 link script tải
	end
})

Tabs.Main1:AddButton({
	Title = "Gravity hub",                             -- 👈 tên nút hiển thị
	Description = "Máy lag kp khuyến khích ",-- 👈 mô tả
	Callback = function()
		local Settings = {
			JoinTeam = "Pirates";   -- 👈 team mặc định: Pirates hoặc Marines
			Translator = true;      -- 👈 bật dịch sang tiếng Việt nếu có
		}
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/Main.lua"))() -- 👈 link script tải
	end
})
