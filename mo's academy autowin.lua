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

-- Wait until game info: time is night
-- Wait amount of seconds before hint

fireclickdetector(workspace.Window1.SelectBox.ClickDetector)
fireclickdetector(workspace.Window2.SelectBox.ClickDetector)
fireclickdetector(workspace.Window3.SelectBox.ClickDetector)
rootPart.CFrame = game.Workspace.Playground.Slide1.Main.CFrame

-- Wait until playground replaces
-- Teleport to the chase end

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

-- Wait until gate opens

queueteleport = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport) -- Execute lobby script when teleported
game:GetService("Players").LocalPlayer.OnTeleport:Connect(function(State)
    queueteleport("loadstring(game:HttpGet('https://raw.githubusercontent.com/superrowan002/scripts/refs/heads/main/mo's%20academy%20autowin%20lobby.lua'))()")
end)
game:GetService("TeleportService"):Teleport(8929050629) -- Teleport to lobby
