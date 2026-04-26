-- SERVICES
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local TextChatService = game:GetService("TextChatService")
local StarterGui = game:GetService("StarterGui")

local player = Players.LocalPlayer

-------------------------------------------------
-- SYSTEM CHAT
-------------------------------------------------
local function system(msg)
	if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
		local channel = TextChatService:WaitForChild("TextChannels"):WaitForChild("RBXGeneral")
		channel:DisplaySystemMessage(msg)
	else
		StarterGui:SetCore("ChatMakeSystemMessage", {
			Text = msg,
			Color = Color3.fromRGB(120,120,120),
			Font = Enum.Font.GothamMedium,
			TextSize = 18
		})
	end
end

system("Thank You for Using Phantom Hub v4 | Owner Script: EinsteinGoos (Phan11zz)")

-------------------------------------------------
-- INTRO (MINIMAL WHITE)
-------------------------------------------------
local introGui = Instance.new("ScreenGui")
introGui.Parent = player:WaitForChild("PlayerGui")
introGui.ResetOnSpawn = false

local logo = Instance.new("TextLabel")
logo.Parent = introGui
logo.Size = UDim2.new(0,80,0,80)
logo.Position = UDim2.new(0.5,-40,0.45,-40)
logo.BackgroundTransparency = 1
logo.Text = "◆"
logo.TextColor3 = Color3.fromRGB(255,255,255)
logo.TextScaled = true
logo.Font = Enum.Font.GothamBold
logo.TextTransparency = 1

local title = Instance.new("TextLabel")
title.Parent = introGui
title.Size = UDim2.new(0,200,0,30)
title.Position = UDim2.new(0.5,-100,0.55,0)
title.BackgroundTransparency = 1
title.Text = "Phantom Hub v4"
title.TextColor3 = Color3.fromRGB(255,255,255)
title.TextScaled = true
title.Font = Enum.Font.GothamBold
title.TextTransparency = 1

TweenService:Create(logo,TweenInfo.new(1),{TextTransparency = 0}):Play()
TweenService:Create(title,TweenInfo.new(1),{TextTransparency = 0}):Play()

task.wait(2)

TweenService:Create(logo,TweenInfo.new(1),{TextTransparency = 1}):Play()
TweenService:Create(title,TweenInfo.new(1),{TextTransparency = 1}):Play()

task.wait(1)
introGui:Destroy()

-------------------------------------------------
-- UI
-------------------------------------------------
local gui = Instance.new("ScreenGui")
gui.Name = "PhantomHubV4"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

local peachPink = Color3.fromRGB(255,150,190)
local bloodRed = Color3.fromRGB(150,0,0)
local dark = Color3.fromRGB(15,15,18)

-------------------------------------------------
-- MAIN FRAME
-------------------------------------------------
local frame = Instance.new("Frame")
frame.Parent = gui
frame.Size = UDim2.new(0,520,0,320)
frame.Position = UDim2.new(0.5,-260,0.5,-160)
frame.BackgroundColor3 = dark
frame.Active = true
frame.Draggable = true
Instance.new("UICorner", frame).CornerRadius = UDim.new(0,18)

local stroke = Instance.new("UIStroke")
stroke.Parent = frame
stroke.Color = peachPink
stroke.Thickness = 3

local titleUI = Instance.new("TextLabel")
titleUI.Parent = frame
titleUI.Size = UDim2.new(1,-50,0,50)
titleUI.Position = UDim2.new(0,15,0,0)
titleUI.BackgroundTransparency = 1
titleUI.Text = "Phantom Hub v4"
titleUI.TextColor3 = peachPink
titleUI.Font = Enum.Font.GothamBold
titleUI.TextSize = 22
titleUI.TextXAlignment = Enum.TextXAlignment.Left

-------------------------------------------------
-- MINIMIZE (-)
-------------------------------------------------
local minBtn = Instance.new("TextButton")
minBtn.Parent = frame
minBtn.Size = UDim2.new(0,35,0,35)
minBtn.Position = UDim2.new(1,-45,0,10)
minBtn.Text = "-"
minBtn.BackgroundColor3 = dark
minBtn.TextColor3 = peachPink
minBtn.Font = Enum.Font.GothamBold
minBtn.TextSize = 20
Instance.new("UICorner", minBtn).CornerRadius = UDim.new(0,10)

-------------------------------------------------
-- TOP BAR
-------------------------------------------------
local topBar = Instance.new("Frame")
topBar.Parent = gui
topBar.Size = UDim2.new(0,520,0,55)
topBar.Position = UDim2.new(0.5,-260,0.05,0)
topBar.BackgroundColor3 = peachPink
topBar.Visible = false
topBar.Active = true
topBar.Draggable = true
Instance.new("UICorner", topBar).CornerRadius = UDim.new(0,18)

local barText = Instance.new("TextLabel")
barText.Parent = topBar
barText.Size = UDim2.new(1,-140,1,0)
barText.Position = UDim2.new(0,15,0,0)
barText.BackgroundTransparency = 1
barText.Text = "Phantom Hub v4"
barText.TextColor3 = bloodRed
barText.Font = Enum.Font.GothamBold
barText.TextSize = 18
barText.TextXAlignment = Enum.TextXAlignment.Left

-------------------------------------------------
-- +
-------------------------------------------------
local openBtn = Instance.new("TextButton")
openBtn.Parent = topBar
openBtn.Size = UDim2.new(0,40,0,35)
openBtn.Position = UDim2.new(1,-90,0.5,-17)
openBtn.Text = "+"
openBtn.BackgroundColor3 = dark
openBtn.TextColor3 = bloodRed
openBtn.Font = Enum.Font.GothamBold
openBtn.TextSize = 22
Instance.new("UICorner", openBtn).CornerRadius = UDim.new(0,10)

-------------------------------------------------
-- X
-------------------------------------------------
local closeAll = Instance.new("TextButton")
closeAll.Parent = topBar
closeAll.Size = UDim2.new(0,40,0,35)
closeAll.Position = UDim2.new(1,-45,0.5,-17)
closeAll.Text = "X"
closeAll.BackgroundColor3 = dark
closeAll.TextColor3 = Color3.fromRGB(255,80,80)
closeAll.Font = Enum.Font.GothamBold
closeAll.TextSize = 20
Instance.new("UICorner", closeAll).CornerRadius = UDim.new(0,10)

-------------------------------------------------
-- SMOOTH MINIMIZE (- -> TOP BAR)
-------------------------------------------------
minBtn.MouseButton1Click:Connect(function()
	local tween = TweenService:Create(frame, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
		Size = UDim2.new(0,520,0,0),
		Position = UDim2.new(0.5,-260,0.05,0),
		BackgroundTransparency = 1
	})

	tween:Play()
	tween.Completed:Wait()

	frame.Visible = false
	topBar.Visible = true
	topBar.BackgroundTransparency = 1

	TweenService:Create(topBar, TweenInfo.new(0.4), {
		BackgroundTransparency = 0
	}):Play()
end)

-------------------------------------------------
-- SMOOTH RESTORE (+)
-------------------------------------------------
openBtn.MouseButton1Click:Connect(function()
	topBar.Visible = false
	frame.Visible = true

	frame.Size = UDim2.new(0,520,0,0)
	frame.Position = UDim2.new(0.5,-260,0.05,0)
	frame.BackgroundTransparency = 1

	TweenService:Create(frame, TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
		Size = UDim2.new(0,520,0,320),
		Position = UDim2.new(0.5,-260,0.5,-160),
		BackgroundTransparency = 0
	}):Play()
end)

-------------------------------------------------
-- DESTROY (X)
-------------------------------------------------
closeAll.MouseButton1Click:Connect(function()
	gui:Destroy()
end)
