-- 1. MEGA FIX ASSET: Membuat "Brick" sebagai RemoteEvent (biasanya admin pakai ini)
local rs = game:GetService("ReplicatedStorage")

local function createAsset(name, className)
    if not rs:FindFirstChild(name) then
        local obj = Instance.new(className)
        obj.Name = name
        obj.Parent = rs
        print("Sistem: Berhasil membuat " .. name .. " sebagai " .. className)
    end
end

-- Kita buat beberapa kemungkinan tipe objek "Brick"
createAsset("Brick", "RemoteEvent") 
createAsset("Build", "RemoteEvent") -- Kadang script nyari Build juga

-- 2. FORCE RE-ENABLE GUI
local pGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")
local function showAllGuis()
    for _, v in pairs(game:GetDescendants()) do
        if v:IsA("ScreenGui") then
            v.Enabled = true
            -- Jika GUI ada di tempat tersembunyi, kita pindahkan ke PlayerGui kita
            if not v:IsDescendantOf(pGui) then
                v.Parent = pGui
            end
        end
    end
end

showAllGuis()

-- 3. ANTI-CRASH LOOP
-- Script ini akan terus memastikan "Brick" ada meskipun dihapus sistem
spawn(function()
    while wait(1) do
        if not rs:FindFirstChild("Brick") then
            createAsset("Brick", "RemoteEvent")
        end
    end
end)

print("Sistem: Super Fix dijalankan. Ketik ;refresh di chat sekarang!")
