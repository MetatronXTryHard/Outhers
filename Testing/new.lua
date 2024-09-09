getgenv().Config = {
	["Misc"] = {
		["Click Delay"] = 0.15,
		["Enable Lock Bounty"] = false,
		["Lock Bounty"] = {0, 300000000},
		["Lock Camera"] = false,
		["Enable Cam Farm"] = false,
		["White Screen"] = false,
		["FPS Boost"] = false,
		["Tween"] = true,
		["Random & Store Fruit"] = false,
}}


-- loadstring(game:HttpGet("https://raw.githubusercontent.com/MetatronXTryHard/Outhers/main/Testing/new.lua", true))();

local player = game:GetService("Players").LocalPlayer;
local playerGui = player.PlayerGui;
local userInputService = game:GetService("UserInputService");

if playerGui.Main:FindFirstChild("ChooseTeam") then
    local chooseTeamGui = playerGui:WaitForChild("Main").ChooseTeam

    if chooseTeamGui.Visible == true then
        if getgenv().Setting["TeamMode"] == "Marines" then
            local marinesButton = chooseTeamGui.Container["Marines"].Frame.TextButton

            for _, marinesConnection in pairs(getconnections(marinesButton.Activated)) do
                for _, touchTapConnection in pairs(getconnections(userInputService.TouchTapInWorld)) do
                    touchTapConnection:Fire()
                end
                marinesConnection.Function()
            end
        else
            local piratesButton = chooseTeamGui.Container["Pirates"].Frame.TextButton

            for _, piratesConnection in pairs(getconnections(piratesButton.Activated)) do
                for _, touchTapConnection in pairs(getconnections(userInputService.TouchTapInWorld)) do
                    touchTapConnection:Fire()
                end
                piratesConnection.Function()
            end
        end
    end
end

getgenv().AutoRejoin = true

spawn(function()
	while task.wait() do
		if getgenv().AutoRejoin then
			getgenv().rejoin = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(LagBack);
				if LagBack.Name == "ErrorPrompt" and LagBack:FindFirstChild("MessageArea") and LagBack.MessageArea:FindFirstChild("ErrorFrame") then
					game:GetService("TeleportService"):Teleport(game.PlaceId);
				end
			end)
		end
	end
end);

repeat task.wait() until game:IsLoaded();
repeat task.wait() until game:GetService("Players");
repeat task.wait() until game:GetService("Players").LocalPlayer;
repeat task.wait() until game:GetService("Players").LocalPlayer:FindFirstChild("PlayerGui");
repeat task.wait() until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Main");

local Players = game:GetService("Players");
local LocalPlayer = Players.LocalPlayer;

if getgenv().Config.Misc["Random & Store Fruit"] then
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin", "Buy")
	for i, Store in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if Store:IsA("Tool") and string.find(Store.Name, "Fruit") then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", Store:GetAttribute("OriginalName"), Store)
		end
	end

	for i, Fruit in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
		if Fruit:IsA("Tool") and string.find(Fruit.Name, "Fruit") then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", Fruit:GetAttribute("OriginalName"), Fruit)
		end
	end
end

if getgenv().Config.Misc["Enable Lock Bounty"] and not (LocalPlayer.leaderstats["Bounty/Honor"].Value > tonumber(getgenv().Config.Misc["Lock Bounty"][1])) or not (LocalPlayer.leaderstats["Bounty/Honor"].Value < tonumber(getgenv().Config.Misc["Lock Bounty"][2])) then
	LocalPlayer:Kick("Lock Bounty")
end

local Workspace = game:GetService("Workspace")

local LocalPlayer_ = {}

for v36, v37 in pairs(Workspace.NPCs:GetChildren()) do
	if string.find(string.lower(v37.Name), "home point") then
		table.insert(LocalPlayer_, v37:GetModelCFrame())
	end
end

for v38, v39 in pairs(getnilinstances()) do
	if string.find(string.lower(v39.Name), "home point") then
		table.insert(LocalPlayer_, v39:GetModelCFrame())
	end
end

local CheckID = game.PlaceId

if CheckID == 2753915549 then
	Sea1 = true
	Pos = {
		Vector3.new(- 7894.6201171875, 5545.49169921875, - 380.246346191406),
		Vector3.new(- 4607.82275390625, 872.5422973632812, - 1667.556884765625),
		Vector3.new(61163.8515625, 11.759522438049316, 1819.7841796875),
		Vector3.new(3876.280517578125, 35.10614013671875, - 1939.3201904296875)
    }

elseif CheckID == 4442272183 then
	Sea2 = true
	Pos = {
		Vector3.new(- 288.46246337890625, 306.130615234375, 597.9988403320312),
		Vector3.new(2284.912109375, 15.152046203613281, 905.48291015625),
		Vector3.new(923.21252441406, 126.9760055542, 32852.83203125),
		Vector3.new(- 6508.5581054688, 89.034996032715, - 132.83953857422)
	}
	
elseif CheckID == 7449423635 then
	Sea3 = true
	Pos = {
		Vector3.new(- 5058.77490234519, 314.5155029297924, - 3155.88330079218),
		Vector3.new(5756.83740234375, 610.4240112304688, - 253.9253692627321),
		Vector3.new(- 12463.8740234375, 374.9144592287017, - 7523.77392579431),
		Vector3.new(28282.5704095, 14896.8505859375, 105.1042709351036),
		Vector3.new(- 11993.580079045, 334.7812805176547, - 8844.1826173214),
		Vector3.new(5314.58204105, 25.419387817383522, - 125.94227600143541)
	}

end

function FindClosestPosition(target)
    local targetPosition = target.Position
    local closestPosition = Vector3.new(0, 0, 0)
    local shortestDistance = math.huge

    for _, currentPos in pairs(Pos) do
        local distance = (currentPos - targetPosition).Magnitude
        if distance < shortestDistance and closestPosition ~= currentPos then
            closestPosition = currentPos
            shortestDistance = distance
        end
    end

    return closestPosition
end

function TPToPosition(targetPosition)
    local character = LocalPlayer.Character
    local partTele = character:FindFirstChild("PartTele")

    if partTele then
        partTele.CFrame = CFrame.new(partTele.CFrame.X, 1000, partTele.CFrame.Z)
        task.wait(0.5)

        if CheckInCombat() then
            return
        end

        partTele.CFrame = targetPosition
        task.wait(0.5)
        character.PrimaryPart.CFrame = targetPosition
        character:WaitForChild("Humanoid"):ChangeState(15)
        task.wait(1)

        repeat
            task.wait(1.5)
        until character:FindFirstChild("Humanoid") and character.Humanoid.Health <= 0

        repeat
            task.wait()

            if partTele then
                partTele.CFrame = targetPosition
            end

            if character:FindFirstChild("PrimaryPart") then
                character.PrimaryPart.CFrame = targetPosition
            end

        until character:FindFirstChild("Humanoid") and character.Humanoid.Health > 0
    end
end

function CheckMagnitude(targetPosition)
    targetPosition = Vector3.new(targetPosition.X, targetPosition.Y, targetPosition.Z)

    local closestPoint = nil
    local shortestDistance = math.huge

    for _, currentPoint in pairs(LocalPlayer_) do
        local distance = (currentPoint.p - targetPosition).Magnitude

        if distance < shortestDistance then
            closestPoint = currentPoint
            shortestDistance = distance
        end
    end

    return closestPoint
end

function getTeleportCFrame(player)
    if player and player.Character and player.Character.PrimaryPart then
        return player.Character.PrimaryPart.CFrame
    else
        return CFrame.new(0, 0, 0)
    end
end

function requestEntranceAndTeleport(entranceID)
    game.ReplicatedStorage.Remotes.CommF_:InvokeServer(unpack({"requestEntrance", entranceID}))

    local character = LocalPlayer.Character
    if character:FindFirstChild("PartTele") then
        character.PartTele.CFrame = getTeleportCFrame(LocalPlayer)
    end
    task.wait(0.01)
end

function getHumanoidRootPart(player)
    if not player then
        return
    end

	return player.Character:WaitForChild("HumanoidRootPart", 9)
end

function calculateDistance(position1, referenceCFrame)
    if not referenceCFrame then
        referenceCFrame = LocalPlayer.Character.PrimaryPart.CFrame
    end

    -- Calcula a distância no plano XZ (ignorando a altura Y) OMG TILLI
    return (Vector3.new(position1.X, 0, position1.Z) - Vector3.new(referenceCFrame.X, 0, referenceCFrame.Z)).Magnitude
end

function CheckInCombat()
	return LocalPlayer.PlayerGui.Main.InCombat.Visible and LocalPlayer.PlayerGui.Main.InCombat.Text and (string.find(string.lower(LocalPlayer.PlayerGui.Main.InCombat.Text), "risk"))
end 

local playerPlatform = Instance.new("Part", Workspace)
playerPlatform.Size = Vector3.new(1, 1, 1)
playerPlatform.Name = "_PlayerPlatform"
playerPlatform.Anchored = true
playerPlatform.CanCollide = false
playerPlatform.CanTouch = false
playerPlatform.Transparency = 1
local blockfind = Workspace:FindFirstChild(playerPlatform.Name)
if blockfind and blockfind ~= playerPlatform then
	blockfind:Destroy()
end

getgenv().Tween = true

task.spawn(function()
    repeat task.wait(0) until LocalPlayer.Character and LocalPlayer.Character.PrimaryPart
    playerPlatform.CFrame = LocalPlayer.Character.PrimaryPart.CFrame

    while task.wait(0) do
        pcall(function()
            if getgenv().Tween then
                if playerPlatform and playerPlatform.Parent == Workspace then
                    local primaryPart = LocalPlayer.Character and LocalPlayer.Character.PrimaryPart

                    if primaryPart and (primaryPart.Position - playerPlatform.Position).Magnitude <= 200 then
                        primaryPart.CFrame = playerPlatform.CFrame
                    else
                        playerPlatform.CFrame = primaryPart.CFrame
                    end
                end

                local playerCharacter = playerPlatform.Character

                if playerCharacter then
                    for _, part in pairs(playerCharacter:GetChildren()) do
                        if part:IsA("BasePart") then
                            part.CanCollide = false
                        end
                    end

                    if playerCharacter:FindFirstChild("Stun") and playerCharacter.Stun.Value ~= 0 then
                        playerCharacter.Stun.Value = 0
                    end

                    if playerCharacter:FindFirstChild("Busy") and playerCharacter.Busy.Value then
                        playerCharacter.Busy.Value = false
                    end
                end

            else
                local playerCharacter = LocalPlayer.Character

                if playerCharacter then
                    for _, part in pairs(playerCharacter:GetChildren()) do
                        if part:IsA("BasePart") then
                            part.CanCollide = true
                        end
                    end
                end
            end
        end)
    end
end)

function handleTeleport(targetPosition)
    if not targetPosition then
        return
    end

    LocalPlayer.Character:WaitForChild("HumanoidRootPart", 9)
    LocalPlayer.Character:WaitForChild("Head", 9)

    if not LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Hold") then
        local bodyVelocity = Instance.new("BodyVelocity", LocalPlayer.Character.HumanoidRootPart)
        bodyVelocity.Name = "Hold"
        bodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
        bodyVelocity.Velocity = Vector3.new(0, 0, 0)
    end

    local teleportPosition = targetPosition.p
    local primaryPart = LocalPlayer.Character and LocalPlayer.Character.PrimaryPart

    if not primaryPart then
        return
    end

    local distanceToTarget = (primaryPart.Position - teleportPosition).Magnitude

    if not LocalPlayer.Character:FindFirstChild("PartTele") then
        local telePart = Instance.new("Part", LocalPlayer.Character)
        telePart.Size = Vector3.new(10, 1, 10)
        telePart.Name = "PartTele"
        telePart.Anchored = true
        telePart.Transparency = 1
        telePart.CanCollide = false
        telePart.CFrame = getHumanoidRootPart(LocalPlayer).CFrame
        telePart:GetPropertyChangedSignal("CFrame"):Connect(function()
            task.wait(0.01)
            getHumanoidRootPart(LocalPlayer).CFrame = telePart.CFrame
        end)
    end

    local closestPosition = FindClosestPosition(targetPosition)
    local secondPosition = CheckMagnitude(targetPosition)
    local currentCFrame = getHumanoidRootPart(LocalPlayer).CFrame
    local distanceToCurrentCFrame = calculateDistance(currentCFrame, targetPosition)

    if calculateDistance(closestPosition, targetPosition) < calculateDistance(targetPosition) and calculateDistance(closestPosition) > 500 then
        return requestEntranceAndTeleport(closestPosition)
    end

    if not CheckInCombat() and calculateDistance(targetPosition) - calculateDistance(secondPosition, targetPosition) > 1000 and calculateDistance(secondPosition) > 1000 then
        return TPToPosition(secondPosition)
    end

    if LocalPlayer.Character:FindFirstChild("Humanoid") and LocalPlayer.Character.Humanoid:FindFirstChild("Sit") and LocalPlayer.Character.Humanoid.Sit == true then
        LocalPlayer.Character.Humanoid.Sit = false
    end

    if distanceToCurrentCFrame <= 150 then
        playerPlatform.CFrame = targetPosition
    else
        local tween = game:GetService("TweenService"):Create(playerPlatform, TweenInfo.new(distanceToCurrentCFrame / 350, Enum.EasingStyle.Linear), {
            CFrame = targetPosition
        })
        tween:Play()
    end
end

--// Equip

function LocalPlayer9_(v59)

	local v60 = game.Players.LocalPlayer

	local v61 = v60.Character or v60.CharacterAdded:Wait()

	for v62, v63 in pairs(v60.Backpack:GetChildren()) do

		if tostring(v63.ToolTip) == "" then

			v63.Parent = v61

		end

		if v63:IsA("Tool") and v63.ToolTip == v59 then

			local v64 = v61:FindFirstChildOfClass("Humanoid")

			if v64 and not v64:IsDescendantOf(v63) then

				if not game.Players.LocalPlayer.Character:FindFirstChild(v63.Name) then

					game.Players.LocalPlayer.Character.Humanoid:EquipTool(v63)

					return v63

				end

			end

		end

	end 

end

--// Attack

Workspace0_ = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)

Workspace1_ = debug.getupvalues(Workspace0_)[2]

spawn(function()

	game:GetService("RunService").RenderStepped:Connect(function()

		if typeof(Workspace1_) == "table" then

			pcall(function()

				local v65 = Workspace2_

				if v65 and getgenv().Config.Misc["Lock Camera"] then

					local v66 = v65.Character

					if v66 then

						game.Workspace.CurrentCamera.CFrame = CFrame.new(game.Workspace.CurrentCamera.CFrame.Position, v66.HumanoidRootPart.Position)

					end

				end

				Workspace1_.activeController.hitboxMagnitude = 60

				Workspace1_.activeController.active = false

				Workspace1_.activeController.timeToNextBlock = 0

				Workspace1_.activeController.focusStart = 1655503339.0980349

				Workspace1_.activeController.increment = 1

				Workspace1_.activeController.blocking = false

				Workspace1_.activeController.attacking = false

				Workspace1_.activeController.humanoid.AutoRotate = true

			end)

		end

	end)

end)

function Workspace3_()

	local v67 = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework))

	local v68 = v67[2]

	local v69 = v68.activeController

	local v70 = v69.blades[1]

	if not v70 then

		return v70

	end

	while v70 ~= nil and v70.Parent ~= game.Players.LocalPlayer.Character do

		v70 = v70.Parent

	end

	return v70

end

function Workspace4_()

	local v71 = debug.getupvalues(require(LocalPlayer.PlayerScripts.CombatFramework))

	local v72 = v71[2]

	local v73 = v72.activeController

	for v74 = 1, 1 do

		if v73 ~= nil then

			local v75 = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(

            LocalPlayer.Character, {

				LocalPlayer.Character.HumanoidRootPart

			}, 60)

			local v76 = {}

			local v77 = {}

			for v78, v79 in pairs(v75) do

				if v79.Parent:FindFirstChild("HumanoidRootPart") and not v77[v79.Parent] then

					table.insert(v76, v79.Parent.HumanoidRootPart)

					v77[v79.Parent] = true

				end

			end

			v75 = v76

			if # v75 > 0 then

				local v80 = debug.getupvalue(v73.attack, 5)

				local v81 = debug.getupvalue(v73.attack, 6)

				local v82 = debug.getupvalue(v73.attack, 4)

				local v83 = debug.getupvalue(v73.attack, 7)

				local v84 = (v80 * 798405 + v82 * 727595) % v81

				local v85 = v82 * 798405

				(function()

					v84 = (v84 * v81 + v85) % 1099511627776

					v80 = math.floor(v84 / v81)

					v82 = v84 - v80 * v81

				end)()

				v83 = v83 + 1

				debug.setupvalue(v73.attack, 5, v80)

				debug.setupvalue(v73.attack, 6, v81)

				debug.setupvalue(v73.attack, 4, v82)

				debug.setupvalue(v73.attack, 7, v83)

				pcall(function()

					for v86, v87 in pairs(v73.animator.anims.basic) do

						v87:Play()

					end

				end)

				if LocalPlayer.Character:FindFirstChildOfClass("Tool") and v73.blades and v73.blades[1] then

					game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange", tostring(Workspace3_()))

					game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(v84 / 1099511627776 * 16777215), v83)

					game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", v75, v74, "")

				end

			end

		end

	end

end

--// Use Skill

function Workspace5_(v88, v89)

	pcall(function()

		game:GetService("VirtualInputManager"):SendKeyEvent(true, v88, false, game.Players.LocalPlayer.Character.HumanoidRootPart)

		task.wait(v89)

		game:GetService("VirtualInputManager"):SendKeyEvent(false, v88, false, game.Players.LocalPlayer.Character.HumanoidRootPart)

	end)

end

function Workspace6_()

	game:GetService("VirtualUser"):CaptureController()

	game:GetService("VirtualUser"):Button1Down(Vector2.new(0, 1, 0, 1))

end

local v5 = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"))

local v6 = getupvalues(v5)[2]

local v7 = Instance.new("Animation")

local function v8()

	local v90 = v6.activeController

	local v91 = v90.blades[1]

	if not v91 then

		return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name

	end

	pcall(

        function()

		while v91.Parent ~= game.Players.LocalPlayer.Character do

			v91 = v91.Parent

		end

	end)

	if not v91 then

		return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name

	end

	return v91

end

local function v9()

	if game.Players.LocalPlayer.Character.Stun.Value ~= 0 then

		return nil

	end

	local v92 = v6.activeController

	v92.hitboxMagnitude = 600

	if v92 and v92.equipped then

		for v93 = 1, 1 do

			local v94 = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(game.Players.LocalPlayer.Character, {

				game.Players.LocalPlayer.Character.HumanoidRootPart

			}, 120)

			if # v94 > 0 then

				local v95 = debug.getupvalue(v92.attack, 5)

				local v96 = debug.getupvalue(v92.attack, 6)

				local v97 = debug.getupvalue(v92.attack, 4)

				local v98 = debug.getupvalue(v92.attack, 7)

				local v99 = (v95 * 798405 + v97 * 727595) % v96

				local LocalPlayer00 = v97 * 798405

				(function()

					v99 = (v99 * v96 + LocalPlayer00) % 1099511627776

					v95 = math.floor(v99 / v96)

					v97 = v99 - v95 * v96

				end)()

				v98 = v98 + 1

				debug.setupvalue(v92.attack, 5, v95)

				debug.setupvalue(v92.attack, 6, v96)

				debug.setupvalue(v92.attack, 4, v97)

				debug.setupvalue(v92.attack, 7, v98)

				if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and v92.blades and v92.blades[1] then

					v7.AnimationId = v92.anims.basic[2]

					v92.humanoid:LoadAnimation(v7):Play(1, 1)

					game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(v99 / 1099511627776 * 16777215), v98)

					game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange", tostring(v8()))

					game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", v94, 2, "")

				end

			end

		end

	end

end



Workspace7_ = 0  

Workspace8_ = tick()

spawn(function()

	local LocalPlayer01 = getrawmetatable(game)

	local LocalPlayer02 = LocalPlayer01.__namecall

	setreadonly(LocalPlayer01, false)

	LocalPlayer01.__namecall = newcclosure(function(LocalPlayer03, ...)

		local LocalPlayer04 = getnamecallmethod()

		local LocalPlayer05 = {

			...

		}

		if LocalPlayer04 == 'FireServer' and LocalPlayer03.Name == "RigControllerEvent" and LocalPlayer05[1] == "hit" then

			Workspace7_ = Workspace7_ + 1

			Workspace8_ = tick()

		end

		return LocalPlayer02(LocalPlayer03, unpack(LocalPlayer05))

	end)

end)



local function LocalPlayer0()

	pcall(function()

		v9()

	end)

end



local function LocalPlayer1()

	if Workspace7_ <= 70 then

		LocalPlayer0()

		Workspace7_ = Workspace7_ + 1

	elseif Workspace7_ >= 70 then

		LocalPlayer0()

		task.wait(.5)

	end

end

task.spawn(function()

	while task.wait(0.5) do

		LocalPlayer1()

	end 

end)

function Workspace9_(LocalPlayer06)

	local LocalPlayer07 = game.Players.LocalPlayer.PlayerGui.Main.Skills

	local LocalPlayer08 = {}

	for LocalPlayer09, LocalPlayer10 in pairs(LocalPlayer.Character:GetChildren()) do

		if LocalPlayer10:IsA("Tool") then

			table.insert(LocalPlayer08, LocalPlayer10)

		end

	end

	for LocalPlayer11, LocalPlayer12 in pairs(LocalPlayer.Backpack:GetChildren()) do

		if LocalPlayer12:IsA("Tool") then

			table.insert(LocalPlayer08, LocalPlayer12)

		end

	end

	for LocalPlayer13, LocalPlayer14 in pairs(LocalPlayer08) do 

		if LocalPlayer14.ToolTip and LocalPlayer06.Inventory[LocalPlayer14.ToolTip] and LocalPlayer06.Inventory[LocalPlayer14.ToolTip].Enable then

            -- warn(1)

			for LocalPlayer15, LocalPlayer16 in pairs(LocalPlayer06.Inventory[LocalPlayer14.ToolTip]) do

				if LocalPlayer15 ~= "Enable" and LocalPlayer16.Enable then

					if LocalPlayer07:FindFirstChild(LocalPlayer14.Name) and LocalPlayer07[LocalPlayer14.Name]:FindFirstChild(LocalPlayer15) then

						local LocalPlayer17 = LocalPlayer07[LocalPlayer14.Name][LocalPlayer15]

						if LocalPlayer17.Cooldown.AbsoluteSize.X <= 0 then

							return {

								LocalPlayer15,

								LocalPlayer16,

								LocalPlayer14.ToolTip

							}

						end

					else

						LocalPlayer9_(LocalPlayer14.ToolTip)

					end

				end

			end

		end

	end

	return false

end

--// Fps Boost

if getgenv().Config.Misc["FPS Boost"] then

	for LocalPlayer18, LocalPlayer19 in pairs(game:GetService("Workspace"):GetDescendants()) do

		pcall(function()

			if LocalPlayer19.Transparency and LocalPlayer19.Parent ~= game.Players.LocalPlayer.Character then

				LocalPlayer19.Transparency = 1

			end

		end)

	end

end

--// Aim

v30_ = true

spawn(function()

	local LocalPlayer20 = getrawmetatable(game)

	local LocalPlayer21 = LocalPlayer20.__namecall

	setreadonly(LocalPlayer20, false)

	LocalPlayer20.__namecall = newcclosure(function(...)

		local LocalPlayer22 = getnamecallmethod()

		local LocalPlayer23 = {

			...

		}

		if tostring(LocalPlayer22) == "FireServer" then

			if tostring(LocalPlayer23[1]) == "RemoteEvent" then

				if tostring(LocalPlayer23[2]) ~= "true" and tostring(LocalPlayer23[2]) ~= "false" then

					if v30_ and v31_ ~= nil then

						LocalPlayer23[2] = v31_.Position

						return LocalPlayer21(unpack(LocalPlayer23))

					end

				end

			end

		end

		return LocalPlayer21(...)

	end)

end)

--// Main Target

function v32_(LocalPlayer24)

if not CheckInCombat() then

	local LocalPlayer25 = game.PlaceId;

	local LocalPlayer26 = {}

	local LocalPlayer27 = ""

	local LocalPlayer28 = os.date("!*t").hour;

	local LocalPlayer29 = false;

	local function LocalPlayer30()

		local LocalPlayer32;

		if LocalPlayer27 == "" then

			LocalPlayer32 = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/LocalPlayer/games/" .. LocalPlayer25 .. "/servers/Public?sortOrder=Asc&limit=100"))

		else

			LocalPlayer32 = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/LocalPlayer/games/" .. LocalPlayer25 .. "/servers/Public?sortOrder=Asc&limit=100&cursor=" .. LocalPlayer27))

		end;

		local LocalPlayer33 = ""

		if LocalPlayer32.nextPageCursor and LocalPlayer32.nextPageCursor ~= "null" and LocalPlayer32.nextPageCursor ~= nil then

			LocalPlayer27 = LocalPlayer32.nextPageCursor

		end;

		local LocalPlayer34 = 0;

		for LocalPlayer35, LocalPlayer36 in pairs(LocalPlayer32.data) do

			local LocalPlayer37 = true;

			LocalPlayer33 = tostring(LocalPlayer36.id)

			if tonumber(LocalPlayer36.maxPlayers) > tonumber(LocalPlayer36.playing) then

				for LocalPlayer38, LocalPlayer39 in pairs(LocalPlayer26) do

					if LocalPlayer34 ~= 0 then

						if LocalPlayer33 == tostring(LocalPlayer39) then

							LocalPlayer37 = false

						end

					else

						if tonumber(LocalPlayer28) ~= tonumber(LocalPlayer39) then

							local LocalPlayer40 = pcall(function()

								LocalPlayer26 = {}

								table.insert(LocalPlayer26, LocalPlayer28)

							end)

						end

					end;

					LocalPlayer34 = LocalPlayer34 + 1

				end;

				if LocalPlayer37 == true then

					table.insert(LocalPlayer26, LocalPlayer33)

					wait(0.1)

					pcall(function()

						wait(0.1)

						game:GetService("TeleportService"):TeleportToPlaceInstance(LocalPlayer25, LocalPlayer33, game.Players.LocalPlayer)

					end)

					wait(4)

				end

			end

		end

	end;

	local function LocalPlayer31()

		while wait(.5) do

			pcall(function()

				LocalPlayer30()

				if LocalPlayer27 ~= "" then

					LocalPlayer30()

				end

			end)

		end

	end;

	LocalPlayer31()

	end

end

v33_ = {} 

table.insert(v33_, LocalPlayer)

function v34_()

	v35_ = {}

	for LocalPlayer41, LocalPlayer42 in pairs(game.Players:GetPlayers()) do

		if LocalPlayer42 and LocalPlayer42.Team and LocalPlayer42.Character and LocalPlayer42.Character:FindFirstChild("Head") and string.find(string.lower(tostring(LocalPlayer42.Team)), "es") and (tostring(LocalPlayer.Team) == "Pirates" or tostring(LocalPlayer42.Team) == "Pirates") and LocalPlayer.Data.Level.Value - LocalPlayer42.Data.Level.Value < 300 and calculateDistance(CheckMagnitude(LocalPlayer42.Character.HumanoidRootPart.CFrame), LocalPlayer42.Character.HumanoidRootPart.CFrame) < 3500 and not ({["Portal-Portal"] = true,["Leopard-Leopard"] = true,["Buddha-Buddha"] = true,["Kitsune-Kitsune"] = true})[tostring(LocalPlayer42.Data.DevilFruit.Value)] and not table.find(v33_, LocalPlayer42) and not table.find(v35_, LocalPlayer42) and ((getgenv().Setting["Skip Player V4"] and not (LocalPlayer42.Backpack:FindFirstChild("Awakening") or LocalPlayer42.Character:FindFirstChild("Awakening"))) or not getgenv().Setting["Skip Player V4"]) then

			table.insert(v35_, LocalPlayer42)

		end

	end

	return v35_

end

function v36_()

	v37_ = math.huge

	v38_ = nil

	for LocalPlayer43, LocalPlayer44 in pairs(v34_()) do

		if LocalPlayer44 and LocalPlayer44.Parent and LocalPlayer44.Character and LocalPlayer44.Character:FindFirstChild("HumanoidRootPart") then

			if LocalPlayer and LocalPlayer.Parent and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then

				if calculateDistance(LocalPlayer44.Character.HumanoidRootPart.CFrame, LocalPlayer.Character.HumanoidRootPart.CFrame) < v37_ then

					v38_ = LocalPlayer44

					v37_ = calculateDistance(LocalPlayer44.Character.HumanoidRootPart.CFrame, LocalPlayer.Character.HumanoidRootPart.CFrame)

				end

			end

		end

	end

	if v38_ ~= nil then

		table.insert(v33_, v38_)

		Workspace2_ = v38_

	else

		v39_ = true

		v32_()

	end

end

function v40_(LocalPlayer45)

	for LocalPlayer46 = 1, 5, 1 do

		local LocalPlayer47 = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island" .. LocalPlayer46)

		if LocalPlayer47 and getHumanoidRootPart(LocalPlayer45, LocalPlayer47:GetModelCFrame()) < 3000 then

			return true

		end

	end

	return false

end 

v41_ = {}

function v42_(LocalPlayer48)

	for LocalPlayer49, LocalPlayer50 in pairs(game.Players.LocalPlayer.PlayerGui.Notifications:GetChildren()) do

		if LocalPlayer50 and LocalPlayer50.Text and string.find(string.lower(LocalPlayer50.Text), LocalPlayer48) and not table.find(v41_, LocalPlayer50) then

			table.insert(v41_, LocalPlayer50)

			return true

		end

	end

	return false

end

v43_ = 0

function v44_()

	if not Workspace2_ then

		return v36_()

	end

	if not Workspace2_.Parent then

		return v36_()

	end

	if not Workspace2_.Character then

		return v36_()

	end

	if Workspace2_.Character.Humanoid.Health <= 0 then

		return v36_()

	end

	if (v42_("died") or v42_("tử trận") or v42_("safe") or v42_("an toàn")) and Workspace2_:DistanceFromCharacter(LocalPlayer.Character:WaitForChild("Head", 9).Position) <= 15 then

		return v36_()

	end

	if v40_(Workspace2_) then

		return v36_()

	end

	if LocalPlayer.PlayerGui.Main.BottomHUDList.SafeZone.Visible and Workspace2_:DistanceFromCharacter(LocalPlayer.Character:WaitForChild("Head", 9).Position) <= 15 then

		return v36_()

	end

	if Workspace2_:DistanceFromCharacter(LocalPlayer.Character:WaitForChild("Head").Position) < 300 then

		if os.time() - v43_ > 100 then

			if not CheckInCombat() then

				return v36_()

			end

		end

	else

		v43_ = os.time()

	end

	return true

end

v45_ = getgenv().Config.Misc["Enable Cam Farm"]

if v45_ == false then

	game.Players.LocalPlayer.CameraMinZoomDistance = 127

	game.Players.LocalPlayer.CameraMaxZoomDistance = 127

	game.Players.LocalPlayer.CameraMaxZoomDistance = 127

	game.Players.LocalPlayer.CameraMinZoomDistance = 0

else

	v45_ = true

	game.Players.LocalPlayer.CameraMinZoomDistance = 0

	game.Players.LocalPlayer.CameraMaxZoomDistance = 0

	game.Players.LocalPlayer.CameraMaxZoomDistance = 127

	game.Players.LocalPlayer.CameraMinZoomDistance = 0

end

local ConfigFolder = "StarHubAutoBouty"
local ConfigFile = ConfigFolder .. "/Config.json"

function saveGlobalConfig()
    local httpService = game:GetService("HttpService")
    local jsonConfig = httpService:JSONEncode(ConfigFile)

    if not isfolder(ConfigFolder) then
        makefolder(ConfigFolder)
    end

    writefile(ConfigFile, jsonConfig)
end

function loadGlobalConfig()
    local httpService = game:GetService("HttpService")

    if isfolder(ConfigFolder) and isfile(ConfigFile) then
        _G = httpService:JSONDecode(readfile(ConfigFile))
    end
end

getgenv().Total = 0

getgenv().Time = 0

v47_()

v48_ = game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].value

v49_ = game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].value - v48_

v50_ = game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].value - v48_

v51_ = tick() - getgenv().Time

v52_ = getgenv().Total 

v53_ = getgenv().Total

function v54_(LocalPlayer54)

	local LocalPlayer55 = tick() - LocalPlayer54

	local LocalPlayer56 = math.floor(LocalPlayer55 / 3600)

	local LocalPlayer57 = math.floor((LocalPlayer55 % 3600) / 60)

	local LocalPlayer58 = math.floor(LocalPlayer55 % 60)

	getgenv().Time = LocalPlayer55

	local LocalPlayer59 = string.format("%dh:%dm:%ds", LocalPlayer56, LocalPlayer57, LocalPlayer58)

	return LocalPlayer59

end

v55_ = tick()

function v54_(LocalPlayer60)

	local LocalPlayer61 = tick() - LocalPlayer60

	local LocalPlayer62 = math.floor(LocalPlayer61 / 3600)

	local LocalPlayer63 = math.floor((LocalPlayer61 % 3600) / 60)

	local LocalPlayer64 = math.floor(LocalPlayer61 % 60)

	local LocalPlayer65 = string.format("%dh:%dm:%ds", LocalPlayer62, LocalPlayer63, LocalPlayer64)

	return LocalPlayer65

end

spawn(function()

	while task.wait() do

		if v44_() then

			if Workspace2_:DistanceFromCharacter(getHumanoidRootPart(LocalPlayer).Position) <= 30 then

				local LocalPlayer66 = Workspace9_(getgenv().Setting)

				if LocalPlayer66 then

					LocalPlayer9_(LocalPlayer66[3])

					Workspace5_(LocalPlayer66[1], LocalPlayer66[2]["Holding Time"])

				end

			end

		end

	end

end)

local LocalPlayer4 = 15

local LocalPlayer5 = 0

function v56_(LocalPlayer67)

	LocalPlayer5 = LocalPlayer5 + 20

	return LocalPlayer67 + Vector3.new(math.sin(math.rad(LocalPlayer5)) * LocalPlayer4, 20, math.cos(math.rad(LocalPlayer5)) * LocalPlayer4)

end

function v57_()

	for LocalPlayer68, LocalPlayer69 in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do

		if LocalPlayer69:IsA("LocalScript") then

			if LocalPlayer69.Name == "General" or LocalPlayer69.Name == "Shiftlock" or LocalPlayer69.Name == "FallDamage" or LocalPlayer69.Name == "4444" or LocalPlayer69.Name == "CamBob" or LocalPlayer69.Name == "JumpCD" or LocalPlayer69.Name == "Looking" or LocalPlayer69.Name == "Run" then

				LocalPlayer69:Destroy()

			end

		end

	end

	for LocalPlayer70, LocalPlayer71 in pairs(game:GetService("Players").LocalPlayer.PlayerScripts:GetDescendants()) do

		if LocalPlayer71:IsA("LocalScript") then

			if LocalPlayer71.Name == "RobloxMotor6DBugFix" or LocalPlayer71.Name == "Clans" or LocalPlayer71.Name == "Codes" or LocalPlayer71.Name == "CustomForceField" or LocalPlayer71.Name == "MenuBloodSp" or LocalPlayer71.Name == "PlayerList" then

				LocalPlayer71:Destroy()

			end

		end

	end

end

v57_()

spawn(function()

	while task.wait() do

		if v39_ then

			handleTeleport(CFrame.new(0, 9000, 0))

		else

			if Workspace2_ and Workspace2_.Character and Workspace2_.Character:FindFirstChild("Humanoid") and Workspace2_.Character.Humanoid.Health > 4 then

				if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then

					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")

				end

				if (not (game.Players.LocalPlayer.Character:FindFirstChild("HasBuso"))) then

					local LocalPlayer72 = game.ReplicatedStorage

					LocalPlayer72.Remotes.CommF_:InvokeServer("Buso")

				end

				if game:GetService("Players").LocalPlayer:FindFirstChild("PlayerGui") and game.Players.LocalPlayer.PlayerGui:FindFirstChild("ScreenGui") and game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then

					v58_ = true

				else

					game:service("VirtualUser"):CaptureController()

					game:service("VirtualUser"):SetKeyDown("0x65")

					game:service("VirtualUser"):SetKeyUp("0x65")

				end

				if tonumber(LocalPlayer.Character.Humanoid.Health) > 0 and (tonumber(LocalPlayer.Character.Humanoid.Health) < getgenv().Setting["Safe Health"][1] or (v59_ and tonumber(LocalPlayer.Character.Humanoid.Health) < getgenv().Setting["Safe Health"][2])) then

					v59_ = true

					handleTeleport(getHumanoidRootPart(Workspace2_).CFrame + Vector3.new(0, math.random(9999, 99999), 0))

				else

					v59_ = false

					local LocalPlayer73 = getHumanoidRootPart(Workspace2_).CFrame + (getHumanoidRootPart(Workspace2_).Velocity / 2)

					if LocalPlayer73.Y < 10 then

						LocalPlayer73 = CFrame.new(LocalPlayer73.X, 10, LocalPlayer73.Z)

					end

					v31_ = getHumanoidRootPart(Workspace2_).CFrame

					if Workspace2_.Character:FindFirstChild("Busy") and Workspace2_.Character.Busy.Value then

						handleTeleport(v56_(v31_))

					else

						if Workspace2_.Character:FindFirstChild("Humanoid") and Workspace2_.Character.Humanoid.MoveDirection.Magnitude > 0 then

							handleTeleport(LocalPlayer73 + Vector3.new(1, 4, 1))

							if (not LocalPlayer.Character:FindFirstChild("Busy") or not LocalPlayer.Character.Busy.Value) and not game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible then

								Workspace6_()

							end

						else

							handleTeleport(v31_ + Vector3.new(1, 4, 1))

						end

						task.wait(0.1)

					end

				end

			end

		end

	end

end)
