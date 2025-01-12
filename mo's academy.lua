local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "🐰 Mo's Academy Script 🐰",
   LoadingTitle = "Mo's Academy Hub",
   LoadingSubtitle = "lol",
   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil,
      FileName = "Mosacademyhub"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink",
      RememberJoins = true
   },
   KeySystem = false,
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided",
      FileName = "Key",
      SaveKey = true,
      GrabKeyFromSite = false,
      Key = {"Hello"}
   }
})

local MainTab = Window:CreateTab("Main", nil)
local MainSection = MainTab:CreateSection("Main")

local Toggle = MainTab:CreateToggle({
    Name = "Inf Money",
    CurrentValue = false,
    Flag = "InfMoney",
    Callback = function(InfMoney)
while InfMoney == true do
    local player = game.Players.LocalPlayer
    local playerData = game:GetService("ReplicatedStorage").PlayerData:FindFirstChild(player.Name)
    playerData.Money.Value = 999
    wait()
end
    end,
 })

 local Toggle = MainTab:CreateToggle({
    Name = "No Damage",
    CurrentValue = false,
    Flag = "NoDamage",
    Callback = function(NoDamage)
while NoDamage == true do
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
end
    end,
 })

local Button = MainTab:CreateButton({
    Name = "Delete Hitbox",
    Callback = function()
        local player = game.Players.LocalPlayer
        local playerWorkspace = game.Workspace:FindFirstChild(player.Name)
        playerWorkspace.HB:Destroy()
    end,
 })
