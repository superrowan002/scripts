local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
local function findFirstBus()
    local busNames = {"Bus1", "Bus2", "Bus3"}
    for _, busName in ipairs(busNames) do
        local bus = workspace:FindFirstChild(busName)
        if bus and bus:FindFirstChild("Teleporting") and bus.Teleporting:IsA("BoolValue") and bus.Teleporting.Value == false then
            if busName == "Bus1" then
                rootPart.CFrame = game.Workspace.JoinSensors.BusOneTouch.CFrame
            elseif busName == "Bus2" then
                rootPart.CFrame = game.Workspace.JoinSensors.BusTwoTouch.CFrame
            elseif busName == "Bus3" then
                rootPart.CFrame = game.Workspace.JoinSensors.BusThreeTouch.CFrame
            end
            return
        end
    end
end
findFirstBus()

queueteleport = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport) -- Execute script on teleport
game:GetService("Players").LocalPlayer.OnTeleport:Connect(function(State)
    queueteleport("loadstring(game:HttpGet(('https://raw.githubusercontent.com/superrowan002/scripts/refs/heads/main/mos%20academy%20autowin.lua')))()")
end)
