local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Mo's Academy", "DarkTheme")
local MainTab = Window:NewTab("Main")
local MainSection = MainTab:NewSection("Main")
local FunTab = Window:NewTab("Fun")
local FunSection = FunTab:NewSection("Fun")
local TeleportTab = Window:NewTab("Teleport")
local TeleportSection = TeleportTab:NewSection("Teleport")

MainSection:NewTextBox("Give Item", "Give yourself Items", function(GiveItem)
    local args = {
        [1] = GiveItem
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TakeItem"):FireServer(unpack(args))    
end)

MainSection:NewButton("Always Boosted", "Always have a fast attack speed", function()
    local player = game.Players.LocalPlayer
    local playerData = game:GetService("ReplicatedStorage").PlayerData:FindFirstChild(player.Name)
    while wait() do
        playerData.Boosted.Value = true
    end
end)

MainSection:NewButton("Collect Keys", "Collect All Keys During the Scavenger Hunt", function()
    local args = {
        [1] = "BlueKey"
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Key"):FireServer(unpack(args))

    local args = {
        [1] = "GreenKey"
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Key"):FireServer(unpack(args))

    local args = {
        [1] = "RedKey"
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Key"):FireServer(unpack(args))
end)

MainSection:NewButton("Give Money", "Quickly give money", function()
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CCo"):FireServer()
end)

MainSection:NewButton("Give Best Food", "Quickly give chicken", function()
    local args = {
        [1] = "Chicken"
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TakeItem"):FireServer(unpack(args))   
end)

MainSection:NewButton("Give Coffee", "Quickly give coffee", function()
    local args = {
        [1] = "Coffee"
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TakeItem"):FireServer(unpack(args))   
end)

MainSection:NewButton("Buy Gym", "Buy Gym Access from anywhere", function()
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("PayBully"):FireServer()
end)

MainSection:NewButton("Work Out", "Doesn't work after all lessons in a day finished or if gym isn't owned", function()
    local args = {
        [1] = workspace:WaitForChild("Benches"):WaitForChild("Bench")
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("UseBench"):FireServer(unpack(args))
end)

MainSection:NewButton("Insta Damage Enemies", "Can't be toggled off (may cause lag) | Needs a Bat to work", function()
    while wait() do
        local enemiesFolder = workspace:WaitForChild("Enemies")
        local enemies = enemiesFolder:GetChildren()
        local args = {}
        for i, enemy in ipairs(enemies) do
            args[i] = enemy
        end
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("SendD"):FireServer(unpack(args))
    end    
end)

MainSection:NewButton("Remove Mo in Chase / Hallway", "Remove Mo from the game in the Chase and in the Hallway", function()
    game.Workspace.MoChase:Destroy()
    game.Workspace.MoHall:Destroy()
end)

MainSection:NewColorPicker("Get Flask", "Get a Flask with a custom color", Color3.fromRGB(0,0,0), function(GetFlask)
    local args = {
        [1] = GetFlask
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Flask"):FireServer(unpack(args))
end)



FunSection:NewButton("Tame Hamster", "Make Puffy the Hamster stay with you (need cheese)", function()
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Hamster"):FireServer()
end)

FunSection:NewButton("Hold Football", "Hold a Football", function()
    local args = {
        [1] = 1
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GetBall"):FireServer(unpack(args))
end)

FunSection:NewButton("Drop Football", "Drop the Football", function()
    local args = {
        [1] = 2
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GetBall"):FireServer(unpack(args))
end)



TeleportSection:NewButton("Teleport Outside", "Teleport Outside", function()
    local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
    rootPart.CFrame = game.Workspace.GateSense.CFrame
end)

TeleportSection:NewButton("Teleport Spawn", "Teleport to the Spawn", function()
    local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
    rootPart.CFrame = game.Workspace.SpawnLocation.CFrame
end)

TeleportSection:NewButton("Teleport Cafeteria", "Teleport to the Cafeteria", function()
    local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
    rootPart.CFrame = game.Workspace.CafeteriaSmall.CafeteriaTables.CafeteriaTable.Chair.Seat.Part.CFrame
end)

TeleportSection:NewButton("Teleport Math", "Teleport to the Math Classroom", function()
    local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
    rootPart.CFrame = game.Workspace.MathDesks.Desk.Chair.Seat.Part.CFrame
end)

TeleportSection:NewButton("Teleport Reading", "Teleport to the Reading Classroom", function()
    local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
    rootPart.CFrame = game.Workspace.ReadingDesks.Desk.Chair.Seat.Part.CFrame
end)

TeleportSection:NewButton("Teleport Chemistry", "Teleport to the Chemistry Classroom", function()
    local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
    rootPart.CFrame = game.Workspace.ChemistryDesks.Desk.Chair.Seat.Part.CFrame
end)

TeleportSection:NewButton("Teleport History", "Teleport to the History Classroom", function()
    local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
    rootPart.CFrame = game.Workspace.HistoryDesks.Desk.Chair.Seat.Part.CFrame
end)

TeleportSection:NewButton("Teleport Computers", "Teleport to the Computers Classroom", function()
    local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
    rootPart.CFrame = game.Workspace.ComputersDesks.Desk.Chair.Seat.Part.CFrame
end)

TeleportSection:NewButton("Teleport Detention", "Teleport to the Detention Classroom", function()
    local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
    rootPart.CFrame = game.Workspace.DetentionDesks.Desk.Chair.Seat.Part.CFrame
end)

TeleportSection:NewButton("Teleport Playground", "Teleport to the Playground", function()
    local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
    rootPart.CFrame = game.Workspace.Playground.Slide1.Main.CFrame
end)

TeleportSection:NewButton("Teleport Chase End", "Teleport to the Chase End", function()
    local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
    rootPart.CFrame = game.Workspace.Junctions.TubeSlide.SlideMain2.TouchSense.CFrame
end)



for i = 1, #workspace.Enemies:GetChildren() do
    game.Workspace.Enemies.Bully:Destroy()
end




game.Workspace.MathDoors:Destroy()
game.Workspace.ReadingDoors:Destroy()
game.Workspace.ChemistryDoors:Destroy()
game.Workspace.CafeteriaDoors:Destroy()
game.Workspace.HistoryDoors:Destroy()
game.Workspace.ComputersDoors:Destroy()
game.Workspace.DetentionDoors:Destroy()