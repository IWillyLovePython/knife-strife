local knifeScript = getsenv(game:GetService("Players").LocalPlayer.Backpack:GetChildren()[1].Knife)
local knifeSwing = debug.getupvalues(knifeScript["swing"])[1]
while wait() do
    knifeSwing["CanSwing"] = true
end
