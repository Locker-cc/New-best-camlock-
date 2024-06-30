-- Load the Orion Library
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

-- Function to create the main script window and functionalities
local function showMainScript()
    -- Create the main GUI window with name "locker.lol"
    local Window = OrionLib:MakeWindow({Name = "locker.lol", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionConfig"})

    -- Create a Tab
    local Tab = Window:MakeTab({
        Name = "Main",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    -- Add a Camlock Button with name "locker.lol camlock (beta)"
    Tab:AddButton({
        Name = "locker.lol camlock (beta)",
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

    -- Add an Anti Mod Button
    Tab:AddButton({
        Name = "Anti Mod",
        Callback = function()
            local modIds = {
                163721789, 15427717, 201454243, 822999, 63794379, 17260230, 28357488,
                93101606, 8195210, 89473551, 16917269, 85989579, 1553950697, 476537893,
                155627580, 31163456, 7200829, 25717070, 201454243, 15427717, 63794379,
                16138978, 60660789, 17260230, 16138978, 1161411094, 9125623, 11319153,
                34758833, 194109750, 35616559, 1257271138, 28885841, 23558830, 25717070,
            }
            
            for _, player in pairs(game.Players:GetPlayers()) do
                for _, modId in pairs(modIds) do
                    if player.UserId == modId then
                        game.Players.LocalPlayer:Kick("Moderator Detected")
                    end
                end
            end
            
            game.Players.PlayerAdded:Connect(function(player)
                for _, modId in pairs(modIds) do
                    if player.UserId == modId then
                        game.Players.LocalPlayer:Kick("Moderator Detected")
                    end
                end
            end)
        end
    })

    -- Initialize the library
    OrionLib:Init()
end

-- Call the function to show the main script window
showMainScript()
