-- SCRIPT PELINDUNG (Anti-Delete Brick)
local rs = game:GetService("ReplicatedStorage")

-- Fungsi untuk mengunci Brick agar tidak bisa dihapus
rs.ChildRemoved:Connect(function(child)
    if child.Name == "Brick" then
        print("Sistem: Ada script jahat mencoba menghapus Brick! Membuat ulang...")
        local b = Instance.new("RemoteEvent")
        b.Name = "Brick"
        b.Parent = rs
    end
end)

-- Versi Ringan (Anti-Disconnect)
local rs = game:GetService("ReplicatedStorage")
local pGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- 1. Buat "Brick" langsung tanpa looping berat
if not rs:FindFirstChild("Brick") then
    local b = Instance.new("RemoteEvent")
    b.Name = "Brick"
    b.Parent = rs
end

-- 2. Aktifkan GUI yang cuma ada di PlayerGui saja (biar nggak berat)
for _, gui in pairs(pGui:GetChildren()) do
    if gui:IsA("ScreenGui") then
        gui.Enabled = true
    end
end

print("Sistem: Fix ringan berhasil. Silakan coba lagi!")
