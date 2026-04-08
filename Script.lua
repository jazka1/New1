-- 1. FIX ASSET: Membuat part "Brick" palsu di ReplicatedStorage
local rs = game:GetService("ReplicatedStorage")
if not rs:FindFirstChild("Brick") then
    local fakeBrick = Instance.new("Part")
    fakeBrick.Name = "Brick"
    fakeBrick.Parent = rs
    print("Sistem: Brick palsu berhasil dibuat di ReplicatedStorage")
end

-- 2. FIX GUI: Memaksa semua ScreenGui agar aktif dan terlihat
local player = game.Players.LocalPlayer
local pGui = player:WaitForChild("PlayerGui")

for _, gui in pairs(pGui:GetDescendants()) do
    if gui:IsA("ScreenGui") then
        gui.Enabled = true
        print("Sistem: Mengaktifkan GUI -> " .. gui.Name)
    end
end

-- 3. FORCE CLONE: Mencoba mencari master GUI jika belum ada di PlayerGui
-- (Mencari di seluruh game untuk ScreenGui yang mungkin milik Admin)
for _, v in pairs(game:GetDescendants()) do
    if v:IsA("ScreenGui") and (v.Name:lower():find("admin") or v.Name:lower():find("main")) then
        if not pGui:FindFirstChild(v.Name) then
            v:Clone().Parent = pGui
            print("Sistem: Memaksa clone GUI master: " .. v.Name)
        end
    end
end

-- 4. CLEANUP: Membersihkan tas dari tool yang error
player.Backpack:ClearAllChildren()
print("Sistem: Backpack telah dibersihkan. Silakan Reset atau Refresh.")
