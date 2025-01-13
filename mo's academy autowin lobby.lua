-- Teleport to most full bus

queueteleport = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport) -- Execute script on teleport
game:GetService("Players").LocalPlayer.OnTeleport:Connect(function(State)
    queueteleport("loadstring(game:HttpGet('https://raw.githubusercontent.com/superrowan002/scripts/refs/heads/main/mo's%20academy%20autowin.lua'))()")
end)
