getgenv().kill = true

while getgenv().kill do
    for i,v in pairs(game.Players:GetChildren()) do
        if v ~= game.Players.LocalPlayer then
            while v.Character.Humanoid.Health ~= 0 do
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0, -5, 0)
                game:GetService("Players").LocalPlayer.Backpack:GetChildren()[1].Knife.Remote:FireServer("Hit", game.Workspace[tostring(v)].Humanoid);
                wait()
            end
        end
    end
end
