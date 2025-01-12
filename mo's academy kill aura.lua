while wait() do
    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
        local args = {
            [1] = v,
            [2] = workspace.Bat
        }
        game:GetService("ReplicatedStorage").Remotes.SendD:FireServer(unpack(args))
    end
end
