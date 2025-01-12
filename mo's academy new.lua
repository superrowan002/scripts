if game.PlaceId == 9000622508 then
		local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "🐰 Mo's Academy 🐰", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local GodMode = false
local KillAura = false
local player = game.Players.LocalPlayer
local playerData = game:GetService("ReplicatedStorage").PlayerData:FindFirstChild(player.Name)

local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddToggle({
	Name = "🛡 | God Mode",
	Default = false,
	Callback = function(Value)
GodMode = Value
	end
})

Tab:AddToggle({
	Name = "🗡 | Enemy Kill Aura",
	Default = false,
	Callback = function(Value)
KillAura = Value
	end
})

Tab:AddToggle({
	Name = "🏦 | Infinite Money",
	Default = false,
	Callback = function(Value)
InfMoney = Value
	end
})

game:GetService("RunService").RenderStepped:Connect(function() 
if player.Character:FindFirstChild("HB") and GodMode == true then
     player.Character.HB.Parent = game:GetService("Lighting")
elseif GodMode == false and game:GetService("Lighting"):FindFirstChild("HB") then
     game:GetService("Lighting").HB.Parent = player.Character
end
end)
game:GetService("RunService").RenderStepped:Connect(function() 
if game:GetService("ReplicatedStorage").Remotes:FindFirstChild("SendCount") and GodMode == true then
     game:GetService("ReplicatedStorage").Remotes.SendCount.Parent = playerData
elseif GodMode == false and playerData:FindFirstChild("SendCount") then
     playerData.SendCount.Parent = game:GetService("ReplicatedStorage").Remotes
end
end)
game:GetService("RunService").RenderStepped:Connect(function() 
if GodMode == true then 
    local UI = game:GetService("Players").LocalPlayer.PlayerGui.MetnalHealth.Frame
    local t = 1
	local hue = tick() % (10/t) / (10/t)
	local color1 = Color3.fromHSV(hue, 1, 1)
	local color2 = Color3.fromHSV(hue, 1, 0.8)
	local color3 = Color3.fromHSV(hue, 1, 0.7)
	local color4 = Color3.fromHSV(hue, 1, 0.5)
    local UI = game:GetService("Players").LocalPlayer.PlayerGui.MetnalHealth.Frame
	UI.Border.BackgroundColor3 = color4
	UI.Border.Bar.BackgroundColor3 = color3
	UI.Border.Bar.Health.BackgroundColor3 = color1
	UI.Border.TextLabel.TextColor3 = color2
	UI.ImageLabel.ImageColor3 = color1
    wait()
elseif GodMode == false then
	-- Original colors
end
end)
game:GetService("RunService").RenderStepped:Connect(function() 
if InfMoney == true then
    playerData.Money.Value = 99999
end)
