-- Load the Orion Library
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

-- Create a Window with the name "locker.lol"
local Window = OrionLib:MakeWindow({Name = "locker.lol", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionConfig"})

-- Create a Tab
local Tab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- Add a Camlock Button (renamed to "My Camlock")
Tab:AddButton({
    Name = "My Camlock",
    Callback = function()
        loadstring(game:HttpGet("https://paste.gg/p/anonymous/28d3b134d86c48eda0574279621e88f9/files/19abe06c6c584fd68036970ef70e9fbf/raw"))()
    end
})

-- Add a Fake Headless Button
Tab:AddButton({
    Name = "Fake Headless",
    Callback = function()
        game.Players.LocalPlayer.Character.Head.Transparency = 1
        for _, v in pairs(game.Players.LocalPlayer.Character.Head:GetChildren()) do
            if v:IsA("Decal") then
                v.Transparency = 1
            end
        end
    end
})

-- Add a Korblox Button
Tab:AddButton({
    Name = "Korblox",
    Callback = function()
        local chr = game.Players.LocalPlayer.Character
        chr.RightLowerLeg.MeshId = "902942093"
        chr.RightLowerLeg.Transparency = 1
        chr.RightUpperLeg.MeshId = "http://www.roblox.com/asset/?id=902942096"
        chr.RightUpperLeg.TextureID = "http://roblox.com/asset/?id=902843398"
        chr.RightFoot.MeshId = "902942089"
        chr.RightFoot.Transparency = 1
    end
})

-- Add a Zombie Animation Button
Tab:AddButton({
    Name = "Zombie Animation",
    Callback = function()
        if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character.Animate and game.Players.LocalPlayer.Character.Animate.run.RunAnim then
            game:GetService("RunService").Stepped:Connect(function()
                game.Players.LocalPlayer.Character.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616163682"
            end)
        end
    end
})

-- Initialize the library
OrionLib:Init()
