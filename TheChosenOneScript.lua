local player = game.Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local notify = ReplicatedStorage:WaitForChild("ChosenNotify")
local attackEvent = ReplicatedStorage:WaitForChild("PowerHit")
local sprayEvent = ReplicatedStorage:WaitForChild("SprayEvent")

-- UI utama
local gui = Instance.new("ScreenGui")
gui.Parent = player:WaitForChild("PlayerGui")

-- Frame info atas
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 250, 0, 80)
frame.Position = UDim2.new(0.5, -125, 0, 20)
frame.BackgroundColor3 = Color3.fromRGB(30,30,30)
frame.BackgroundTransparency = 0.2
frame.Parent = gui

local title = Instance.new("TextLabel", frame)
title.Size = UDim2.new(1,0,1,0)
title.BackgroundTransparency = 1
title.Text = "CHOSEN ONE MODE"
title.TextScaled = true
title.TextColor3 = Color3.fromRGB(255,215,0)

frame.Visible = false

-- BUTTON ATTACK
local attackBtn = Instance.new("TextButton")
attackBtn.Size = UDim2.new(0,100,0,100)
attackBtn.Position = UDim2.new(1,-120,1,-120)
attackBtn.Text = "ATTACK"
attackBtn.TextScaled = true
attackBtn.BackgroundColor3 = Color3.fromRGB(255,0,0)
attackBtn.Parent = gui

-- BUTTON SPRAY
local sprayBtn = Instance.new("TextButton")
sprayBtn.Size = UDim2.new(0,100,0,100)
sprayBtn.Position = UDim2.new(1,-240,1,-120)
sprayBtn.Text = "SPRAY"
sprayBtn.TextScaled = true
sprayBtn.BackgroundColor3 = Color3.fromRGB(0,170,255)
sprayBtn.Parent = gui

attackBtn.Visible = false
sprayBtn.Visible = false

local isChosen = false

-- Terima status
notify.OnClientEvent:Connect(function(state)
	isChosen = state
	frame.Visible = state
	attackBtn.Visible = state
	sprayBtn.Visible = state
end)

-- Attack (target nearest)
attackBtn.MouseButton1Click:Connect(function()
	if not isChosen then return end
	
	local char = player.Character
	if not char then return end
	
	local root = char:FindFirstChild("HumanoidRootPart")
	if not root then return end
	
	local closest = nil
	local dist = 20
	
	for _, p in pairs(game.Players:GetPlayers()) do
		if p ~= player and p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
			local d = (p.Character.HumanoidRootPart.Position - root.Position).Magnitude
			if d < dist then
				dist = d
				closest = p.Character
			end
		end
	end
	
	if closest then
		attackEvent:FireServer(closest)
	end
end)

-- Spray depan player
sprayBtn.MouseButton1Click:Connect(function()
	if not isChosen then return end
	
	local char = player.Character
	if not char then return end
	
	local root = char:FindFirstChild("HumanoidRootPart")
	if not root then return end
	
	local pos = root.Position + (root.CFrame.LookVector * 5)
	sprayEvent:FireServer(pos)
end)
