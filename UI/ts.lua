--- Error Page Not Found



































































































getgenv().Stack = true
getgenv().MethodType = "Melee"
getgenv().Mode = "Cyborg"
getgenv().HitsPerSecond = 500
getgenv().FarmNearest = true
getgenv().TweenRotate = true
getgenv().TweenSpeed = 60
getgenv().AntiKick = true

local relevantNPCs = {
    "Pika-Pika User", "Mera-Mera User", "Hie-Hie User", "Dungeon Kiribachi User", 
    "Dungeon Attacker", "Dungeon 1SS User", "Dungeon Gun User", "Dungeon Katana User"
}

-- Função para atacar NPCs
spawn(function()
    while true do
        if getgenv().Stack then
            for _, mob in ipairs(workspace.NPCs:GetChildren()) do
                if mob:FindFirstChild("HumanoidRootPart") and table.find(relevantNPCs, mob.Name) then
                    local attackParams = {
                        [1] = "damage",
                        [2] = {},
                        [3] = getgenv().MethodType,
                        [4] = {1, "Ground", getgenv().Mode},
                        [5] = true,
                        [6] = mob.HumanoidRootPart.CFrame   
                    }

                    for j = 1, getgenv().HitsPerSecond do
                        table.insert(attackParams[2], mob.HumanoidRootPart)
                    end

                    game:GetService("ReplicatedStorage").Events.CombatRegister:InvokeServer(attackParams)
                end
            end
        end
        task.wait()
    end
end)

-- Função de teletransporte com Tween
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local myRoot = LocalPlayer.Character.HumanoidRootPart

function TweenPlayer(Pos)
    local rootPart = LocalPlayer.Character and LocalPlayer.Character.PrimaryPart
    if not rootPart then return warn('Teleport: No root part') end

    local vectorPos
    if typeof(Pos) == 'Vector3' then
        vectorPos = Pos
    elseif typeof(Pos) == 'CFrame' then
        vectorPos = Pos.Position
    else
        return warn('Teleport: Invalid position type')
    end

    local function noClip()
        for i, v in pairs(LocalPlayer.Character:GetDescendants()) do
            if v:IsA("BasePart") and v.CanCollide == true then
                v.CanCollide = false
            end
        end
    end

    local Tweenspeed = getgenv().TweenSpeed
    local Distance = (vectorPos - rootPart.Position).Magnitude
    local tweenInfo = TweenInfo.new(Distance / Tweenspeed, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
    local cframe = typeof(Pos) == 'CFrame' and Pos or CFrame.new(Pos)
    local tween = TweenService:Create(rootPart, tweenInfo, {CFrame = cframe})

    local bodyGyro = Instance.new("BodyGyro")
    bodyGyro.Parent = rootPart
    bodyGyro.Name = "BodyGyrozz"
    bodyGyro.MaxTorque = Vector3.new(0, math.huge, 0)
    bodyGyro.CFrame = CFrame.new(rootPart.Position, vectorPos)

    local NoClip = RunService.Stepped:Connect(noClip)

    local bodyVelocity = Instance.new("BodyVelocity")
    bodyVelocity.Parent = rootPart
    bodyVelocity.Name = "BodyVelocityzz"
    bodyVelocity.MaxForce = Vector3.new(0, math.huge, 0)
    bodyVelocity.Velocity = Vector3.new(0, 0, 0)

    tween:Play()
    tween.Completed:Wait()
    return tween
end

-- Função para mover em torno de NPCs com rotação
function TweenRotate(Obj, Speed)
    if not Obj or not Obj.PrimaryPart then
        warn("Invalid object or nil")
        return
    end
    
    local objPosition = Obj.PrimaryPart.Position

    local targetPosition = objPosition + Vector3.new(0, 17, 0)

    TweenPlayer(CFrame.new(targetPosition))
end

-- Loop para aplicar TweenRotate aos NPCs relevantes
spawn(function()
    while getgenv().TweenRotate and task.wait(0.1) do
        for _, npc in pairs(workspace.NPCs:GetChildren()) do
            if npc and npc:FindFirstChild("HumanoidRootPart") and table.find(relevantNPCs, npc.Name) then
                local speed = 1.5

                TweenRotate(npc, speed)
            end
        end
    end
end)
spawn(function()
    while true do
        task.wait(1.2)
        if getgenv().AntiKick then
            local player = game.Players.LocalPlayer
            local character = player.Character
            local humanoidRootPart = character and character.PrimaryPart;
            
            local ohString1 = "Geppo"
            local ohTable2 = {
                ["cf"] = CFrame.new(humanoidRootPart.Position.X, humanoidRootPart.Position.Y, humanoidRootPart.Position.Z),
                ["char"] = game.Players.LocalPlayer.Character
            }
            if getgenv().AntiKick == true then
                game:GetService("ReplicatedStorage").Events.Skill:InvokeServer(ohString1, ohTable2)
            end
        end
     end
end)    
print("Auto Dungeon Working")
