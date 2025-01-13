game:GetService("RunService").RenderStepped:Connect(function() 
	for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
		local args = {
		[1] = v,
		[2] = workspace.Bat
	}
	game:GetService("ReplicatedStorage").Remotes.SendD:FireServer(unpack(args))
		end
	end)
local firstLesson
local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
local args = {
    [1] = "Bat"
}
game:GetService("ReplicatedStorage").Remotes.TakeItem:FireServer(unpack(args))
game:GetService("Players").LocalPlayer.Character.HB.Parent = game:GetService("Lighting")
game:GetService("ReplicatedStorage").Remotes.SendCount.Parent = game:GetService("StarterPlayer")
repeat -- Wait lesson 1
	task.wait()
until workspace.MathDoors:FindFirstChild("DoorOpen") or workspace.HistoryDoors:FindFirstChild("DoorOpen")
if workspace.MathDoors:FindFirstChild("DoorOpen") then
	rootPart.CFrame = game.Workspace.MathDesks.Desk.Chair.Seat.Part.CFrame
	local firstLesson = "Math"
elseif workspace.HistoryDoors:FindFirstChild("DoorOpen") then
	rootPart.CFrame = game.Workspace.HistoryDesks.Desk.Chair.Seat.Part.CFrame
	local firstLesson = "History"
end
repeat -- Wait cafeteria
	task.wait()
until workspace.CafeteriaDoors:FindFirstChild("DoorsOpen")
rootPart.CFrame = game.Workspace.CafeteriaSmall.CafeteriaTables.CafeteriaTable.Chair.Seat.Part.CFrame
repeat -- Wait lesson 2
	task.wait()
until workspace.ReadingDoors:FindFirstChild("DoorOpen")
rootPart.CFrame = game.Workspace.ReadingDesks.Desk.Chair.Seat.Part.CFrame
repeat -- Wait detention
	task.wait()
until workspace.DetentionDoors:FindFirstChild("DoorOpen")
rootPart.CFrame = game.Workspace.DetentionDesks.Desk.Chair.Seat.Part.CFrame
repeat -- Wait night
	task.wait()
until workspace.DetentionDoors:FindFirstChild("DoorClosed")
repeat -- Wait leave detention
	task.wait()
until workspace.DetentionDoors:FindFirstChild("DoorOpen")
rootPart.CFrame = game.Workspace.SpawnLocation.CFrame
repeat -- Wait security system
	task.wait()
until workspace:FindFirstChild("Security")
rootPart.CFrame = game.Workspace.SpawnLocation.CFrame
wait(40)
local args = {
    [1] = "RedKey"
}
game:GetService("ReplicatedStorage").Remotes.Key:FireServer(unpack(args))
local args = {
    [1] = "GreenKey"
}
game:GetService("ReplicatedStorage").Remotes.Key:FireServer(unpack(args))
local args = {
    [1] = "BlueKey"
}
game:GetService("ReplicatedStorage").Remotes.Key:FireServer(unpack(args))
rootPart.CFrame = game.Workspace.GateSense.CFrame
repeat -- Wait lesson 3
	task.wait()
until workspace.ComputersDoors:FindFirstChild("DoorOpen")
rootPart.CFrame = game.Workspace.ComputersDesks.Desk.Chair.Seat.Part.CFrame
repeat -- Wait cafeteria
	task.wait()
until workspace.CafeteriaDoors:FindFirstChild("DoorsOpen")
rootPart.CFrame = game.Workspace.CafeteriaSmall.CafeteriaTables.CafeteriaTable.Chair.Seat.Part.CFramed
repeat -- Wait lesson 4
	task.wait()
until workspace.MathDoors:FindFirstChild("DoorOpen") or workspace.HistoryDoors:FindFirstChild("DoorOpen")
if firstLesson == "Math" then
	rootPart.CFrame = game.Workspace.HistoryDesks.Desk.Chair.Seat.Part.CFrame
else
	rootPart.CFrame = game.Workspace.MathDesks.Desk.Chair.Seat.Part.CFrame
end
repeat -- Wait detention
	task.wait()
until workspace.DetentionDoors:FindFirstChild("DoorOpen")
rootPart.CFrame = game.Workspace.DetentionDesks.Desk.Chair.Seat.Part.CFrame
repeat -- Wait night
	task.wait()
until game:GetService("ReplicatedStorage").Data.TimeOfDay.Value == "Night"
rootPart.CFrame = game.Workspace.DetentionDesks.Desk.Chair.Seat.Part.CFrame
wait(36)
fireclickdetector(workspace.Window1.SelectBox.ClickDetector)
fireclickdetector(workspace.Window2.SelectBox.ClickDetector)
fireclickdetector(workspace.Window3.SelectBox.ClickDetector)
rootPart.CFrame = game.Workspace.Playground.Slide1.Main.CFrame

repeat -- Wait playground chase
	task.wait()
until not game.Workspace.Playground
rootPart.CFrame = game:GetService("ReplicatedStorage").Regions.EscapedRegion.CFrame

repeat -- Wait lesson 5
	task.wait()
until workspace.MathDoors:FindFirstChild("DoorOpen") or workspace.HistoryDoors:FindFirstChild("DoorOpen")
if firstLesson == "Math" then
	rootPart.CFrame = game.Workspace.MathDesks.Desk.Chair.Seat.Part.CFrame
else
	rootPart.CFrame = game.Workspace.HistoryDesks.Desk.Chair.Seat.Part.CFrame
end
repeat -- Wait cafeteria
	task.wait()
until workspace.CafeteriaDoors:FindFirstChild("DoorsOpen")
rootPart.CFrame = game.Workspace.CafeteriaSmall.CafeteriaTables.CafeteriaTable.Chair.Seat.Part.CFrame
repeat -- Wait lesson 6
	task.wait()
until workspace.ChemistryDoors:FindFirstChild("DoorOpen")
rootPart.CFrame = game.Workspace.ChemistryDesks.Desk.Chair.Seat.Part.CFrame
repeat -- Wait detention
	task.wait()
until workspace.DetentionDoors:FindFirstChild("DoorOpen")
rootPart.CFrame = game.Workspace.DetentionDesks.Desk.Chair.Seat.Part.CFrame
repeat -- Wait Mo Spawn
	task.wait()
until workspace:FindFirstChild("MoHall")
rootPart.CFrame = game.Workspace.GateSense.CFrame
repeat -- Wait Mo dead
	task.wait()
until game.Workspace.Enemies.MoBoss.Health == 0
wait(12)
queueteleport = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport) -- Execute lobby script when teleported
game:GetService("Players").LocalPlayer.OnTeleport:Connect(function(State)
    queueteleport("loadstring(game:HttpGet(('https://raw.githubusercontent.com/superrowan002/scripts/refs/heads/main/mos%20academy%20autowin%20lobby.lua')))()")
end)
game:GetService("TeleportService"):Teleport(8929050629) -- Teleport to lobby
