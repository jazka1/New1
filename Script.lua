-- Membuat part palsu agar script tidak error
local rs = game:GetService("ReplicatedStorage")
if not rs:FindFirstChild("Brick") then
    local fakeBrick = Instance.new("Part")
    fakeBrick.Name = "Brick"
    fakeBrick.Parent = rs
    print("Brick palsu berhasil dibuat!")
end
-- Mencari semua GUI yang tersembunyi dan menampilkannya
for _, gui in pairs(game:GetService("PlayerGui"):GetDescendants()) do
    if gui:IsA("ScreenGui") then
        gui.Enabled = true
    end
end
game.Players.LocalPlayer.Backpack:ClearAllChildren()
