local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local TextChatService = game:GetService("TextChatService")
local StarterGui = game:GetService("StarterGui")

local player = Players.LocalPlayer

-------------------------------------------------
-- SYSTEM CHAT (DARK GREY)
-------------------------------------------------
local function system(msg)
	if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
		local channel = TextChatService:WaitForChild("TextChannels"):WaitForChild("RBXGeneral")
		channel:DisplaySystemMessage(msg)
	else
		StarterGui:SetCore("ChatMakeSystemMessage", {
			Text = msg,
			Color = Color3.fromRGB(110,110,110), -- kelabu gelap
			Font = Enum.Font.GothamMedium,
			TextSize = 18
		})
	end
end

system("Thank you for using PhantomV4 | Owner Script: EinsteinGoos (Phan11zz)")

-------------------------------------------------
-- INTRO UI
-------------------------------------------------
local gui = Instance.new("ScreenGui")
gui.Parent = player:WaitForChild("PlayerGui")
gui.ResetOnSpawn = false

local text = Instance.new("TextLabel")
text.Parent = gui
text.Size = UDim2.new(0,240,0,35)
text.Position = UDim2.new(0.5,-120,0.5,-17)
text.BackgroundTransparency = 1
text.Text = "PHANTOM HUB V4"
text.TextScaled = true
text.Font = Enum.Font.GothamBold
text.TextTransparency = 1
text.TextStrokeTransparency = 0.4

local fadeIn = TweenService:Create(text,TweenInfo.new(1,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{
	TextTransparency = 0
})

local fadeOut = TweenService:Create(text,TweenInfo.new(1,Enum.EasingStyle.Sine,Enum.EasingDirection.In),{
	TextTransparency = 1
})

fadeIn:Play()

-------------------------------------------------
-- RAINBOW (RED + BLUE CYCLE)
-------------------------------------------------
task.spawn(function()
	while gui.Parent do
		text.TextColor3 = Color3.fromRGB(255,0,0)
		task.wait(0.25)
		text.TextColor3 = Color3.fromRGB(0,170,255)
		task.wait(0.25)
	end
end)

fadeIn.Completed:Wait()
wait(2)

fadeOut:Play()
fadeOut.Completed:Wait()

gui:Destroy()
