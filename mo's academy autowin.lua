local args = {
    [1] = "Bat"
}
game:GetService("ReplicatedStorage").Remotes.TakeItem:FireServer(unpack(args))
	end
game:GetService("Players").LocalPlayer.Character.HB.Parent = game:GetService("Lighting")
game:GetService("ReplicatedStorage").Remotes.SendCount.Parent = game:GetService("StarterPlayer")
while wait() do
    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
        local args = {
            [1] = v,
            [2] = workspace.Bat
        }
        game:GetService("ReplicatedStorage").Remotes.SendD:FireServer(unpack(args))
    end
end