-- Open Window1
fireclickdetector(workspace.Window1.SelectBox.ClickDetector)

-- Teleport to the main game
game:GetService("TeleportService"):Teleport(8929050629)

-- Wait until a door opened
repeat
	print("Waiting for lesson 1...")
	wait(5)
until workspace.MathDoors:FindFirstChild("DoorOpen") or workspace.HistoryDoors:FindFirstChild("DoorOpen")
if workspace.MathDoors:FindFirstChild("DoorOpen") then
	print("Math started!")
elseif workspace.HistoryDoors:FindFirstChild("DoorOpen") then
	print("History started!")
end

-- Run script on teleport
queueteleport = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)

game:GetService("Players").LocalPlayer.OnTeleport:Connect(function(State)
    queueteleport("loadstring(game:HttpGet('link'))()")
end)