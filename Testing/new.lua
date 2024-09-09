
if not getgenv().Config then
getgenv().Config = {
	["Chat"] = {
		""
	},

	["Misc"] = {
		["Click Delay"] = 0.15,
		["Enable Lock Bounty"] = false,
		["Lock Bounty"] = {0, 300000000},
		["Lock Camera"] = false,
		["Enable Cam Farm"] = false,
		["White Screen"] = false,
		["FPS Boost"] = false,
		["Tween"] = true,
		["Random & Store Fruit"] = false
}};
end

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
	while wait() do
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
	for v32, v33 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if v33:IsA("Tool") and string.find(v33.Name, "Fruit") then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", v33:GetAttribute("OriginalName"), v33)
		end
	end

	for v34, v35 in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
		if v35:IsA("Tool") and string.find(v35.Name, "Fruit") then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", v35:GetAttribute("OriginalName"), v35)
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

local v3 = game.PlaceId

if v3 == 2753915549 then

	Workspace_ = true

	v3_ = {

		Vector3.new(- 7894.6201171875, 5545.49169921875, - 380.246346191406),

		Vector3.new(- 4607.82275390625, 872.5422973632812, - 1667.556884765625),

		Vector3.new(61163.8515625, 11.759522438049316, 1819.7841796875),

		Vector3.new(3876.280517578125, 35.10614013671875, - 1939.3201904296875)

	}

elseif v3 == 4442272183 then

	v4_ = true

	v3_ = {

		Vector3.new(- 288.46246337890625, 306.130615234375, 597.9988403320312),

		Vector3.new(2284.912109375, 15.152046203613281, 905.48291015625),

		Vector3.new(923.21252441406, 126.9760055542, 32852.83203125),

		Vector3.new(- 6508.5581054688, 89.034996032715, - 132.83953857422)

	}

elseif v3 == 7449423635 then

	v5_ = true

	v3_ = {

		Vector3.new(- 5058.77490234519, 314.5155029297924, - 3155.88330079218),

		Vector3.new(5756.83740234375, 610.4240112304688, - 253.9253692627321),

		Vector3.new(- 12463.8740234375, 374.9144592287017, - 7523.77392579431),

		Vector3.new(28282.5704095, 14896.8505859375, 105.1042709351036),

		Vector3.new(- 11993.580079045, 334.7812805176547, - 8844.1826173214),

		Vector3.new(5314.58204105, 25.419387817383522, - 125.94227600143541)

	}

end

function v6_(v40)

	local v41 = v40.Position

	local v42, v43 = Vector3.new(0, 0, 0), math.huge

	for v44, v45 in pairs(v3_) do

		if (v45 - v41).Magnitude < v43 and v42 ~= v45 then

			v42, v43 = v45, (v45 - v41).Magnitude

		end

	end

	return v42

end 

function v7_(v46)

	if LocalPlayer.Character:FindFirstChild("PartTele") then

		LocalPlayer.Character.PartTele.CFrame = CFrame.new(LocalPlayer.Character.PartTele.CFrame.X, 1000, LocalPlayer.Character.PartTele.CFrame.Z)

		task.wait(0.5)

		if v8_() then

			return

		end

		LocalPlayer.Character.PartTele.CFrame = v46

		task.wait(0.5)

		LocalPlayer.Character.PrimaryPart.CFrame = v46

		LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)

		task.wait(1)

		repeat

			task.wait(1.5)

		until LocalPlayer.Character:FindFirstChild("Humanoid") and LocalPlayer.Character.Humanoid.Health <= 0

		repeat

			task.wait()

			if LocalPlayer.Character:FindFirstChild("PartTele") then

				LocalPlayer.Character.PartTele.CFrame = v46

			end

			if LocalPlayer.Character:FindFirstChild("PrimaryPart") then

				LocalPlayer.Character.PrimaryPart.CFrame = v46

			end

		until LocalPlayer.Character:FindFirstChild("Humanoid") and LocalPlayer.Character.Humanoid.Health > 0

	end

end

function v9_(v47)

	v47 = Vector3.new(v47.X, v47.Y, v47.Z)

	local v48, v49 = nil, math.huge

	for v50, v51 in pairs(LocalPlayer_) do

		if (v51.p - v47).Magnitude < v49 then

			v48 = v51

			v49 = (v51.p - v47).Magnitude

		end

	end

	return v48

end

function LocalPlayer0_(v52)

	game.ReplicatedStorage.Remotes.CommF_:InvokeServer(unpack({

		"requestEntrance",

		v52

	}))

	if LocalPlayer.Character:FindFirstChild("PartTele") then

		LocalPlayer.Character.PartTele.CFrame = LocalPlayer1_(LocalPlayer).CFrame

	end

	task.wait(0.01)

end

function LocalPlayer1_(v53)

	if not v53 then

		return

	end

	return v53.Character:WaitForChild("HumanoidRootPart", 9) 

end 

function LocalPlayer2_(v54, v55)

	if not v55 then

		v55 = LocalPlayer.Character.PrimaryPart.CFrame

	end

	return (Vector3.new(v54.X, 0, v54.Z) - Vector3.new(v55.X, 0, v55.Z)).Magnitude 

end 

function v8_()

	return LocalPlayer.PlayerGui.Main.InCombat.Visible and LocalPlayer.PlayerGui.Main.InCombat.Text and (string.find(string.lower(LocalPlayer.PlayerGui.Main.InCombat.Text), "risk"))

end 

local Players = game:GetService("Players")

local Player = Players.LocalPlayer

local block = Instance.new("Part", workspace)

block.Size = Vector3.new(1, 1, 1)

block.Name = "player platform ............."

block.Anchored = true

block.CanCollide = false

block.CanTouch = false

block.Transparency = 1



local blockfind = workspace:FindFirstChild(block.Name)

if blockfind and blockfind ~= block then

	blockfind:Destroy()

end

getgenv().Tween = true

task.spawn(function()

	repeat

		task.wait(0)

	until Player.Character and Player.Character.PrimaryPart

	block.CFrame = Player.Character.PrimaryPart.CFrame

	while task.wait(0) do

		pcall(function()

			if getgenv().Tween then

				if block and block.Parent == workspace then

					local plrPP = Player.Character and Player.Character.PrimaryPart

					if plrPP and (plrPP.Position - block.Position).Magnitude <= 200 then

						plrPP.CFrame = block.CFrame

					else

						block.CFrame = plrPP.CFrame

					end

				end

				local plrChar = Player.Character

				if plrChar then

					for _, part in pairs(plrChar:GetChildren()) do

						if part:IsA("BasePart") then

							part.CanCollide = false

						end

					end

					if plrChar:FindFirstChild("Stun") and plrChar.Stun.Value ~= 0 then

						plrChar.Stun.Value = 0

					end

					if plrChar:FindFirstChild("Busy") and plrChar.Busy.Value then

						plrChar.Busy.Value = false

					end

				end

			else

				local plrChar = Player.Character

				if plrChar then

					for _, part in pairs(plrChar:GetChildren()) do

						if part:IsA("BasePart") then

							part.CanCollide = true

						end

					end

				end

			end

		end)

	end

end)



function LocalPlayer3_(v56)

	if not v56 then

		return

	end

	LocalPlayer.Character:WaitForChild("HumanoidRootPart", 9)

	LocalPlayer.Character:WaitForChild("Head", 9)

	if not LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Hold") then

		local v57 = Instance.new("BodyVelocity", LocalPlayer.Character.HumanoidRootPart)

		v57.Name = "Hold"

		v57.MaxForce = Vector3.new(math.huge, math.huge, math.huge)

		v57.Velocity = Vector3.new(0, 0, 0)

	end

	TeleportPos = v56.p

	local plrPP = Player.Character and Player.Character.PrimaryPart

	if not plrPP then

		return

	end

	local Distance = (plrPP.Position - v56.p).Magnitude

	if not LocalPlayer.Character:FindFirstChild("PartTele") then

		local v58 = Instance.new("Part", LocalPlayer.Character)

		v58.Size = Vector3.new(10, 1, 10)

		v58.Name = "PartTele"

		v58.Anchored = true

		v58.Transparency = 1

		v58.CanCollide = false

		v58.CFrame = LocalPlayer1_(LocalPlayer).CFrame

		v58:GetPropertyChangedSignal("CFrame"):Connect(function()

			task.wait(0.01)

			LocalPlayer1_(LocalPlayer).CFrame = v58.CFrame

		end)

	end

	LocalPlayer4_ = v6_(v56)

	LocalPlayer5_ = v9_(v56)

	LocalPlayer6_ = LocalPlayer1_(LocalPlayer).CFrame

	LocalPlayer7_ = LocalPlayer2_(LocalPlayer6_, v56)

	if LocalPlayer2_(LocalPlayer4_, v56) < LocalPlayer2_(v56) and LocalPlayer2_(LocalPlayer4_) > 500 then

		return LocalPlayer0_(LocalPlayer4_)

	end

	if not v8_() and LocalPlayer2_(v56) - LocalPlayer2_(LocalPlayer5_, v56) > 1000 and LocalPlayer2_(LocalPlayer5_) > 1000 then

		return v7_(LocalPlayer5_)

	end

	if LocalPlayer.Character:FindFirstChild("Humanoid") and LocalPlayer.Character.Humanoid:FindFirstChild("Sit") and LocalPlayer.Character.Humanoid.Sit == true then

		LocalPlayer.Character.Humanoid.Sit = false

	end

	if LocalPlayer7_ <= 150 then

		block.CFrame = v56

	else

		LocalPlayer8_ = game:GetService("TweenService"):Create(block, TweenInfo.new(LocalPlayer7_ / 350, Enum.EasingStyle.Linear), {

			CFrame = v56

		})

		LocalPlayer8_:Play()

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

if not v8_() then

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

		if LocalPlayer42 and LocalPlayer42.Team and LocalPlayer42.Character and LocalPlayer42.Character:FindFirstChild("Head") and string.find(string.lower(tostring(LocalPlayer42.Team)), "es") and (tostring(LocalPlayer.Team) == "Pirates" or tostring(LocalPlayer42.Team) == "Pirates") and LocalPlayer.Data.Level.Value - LocalPlayer42.Data.Level.Value < 300 and LocalPlayer2_(v9_(LocalPlayer42.Character.HumanoidRootPart.CFrame), LocalPlayer42.Character.HumanoidRootPart.CFrame) < 3500 and not ({["Portal-Portal"] = true,["Leopard-Leopard"] = true,["Buddha-Buddha"] = true,["Kitsune-Kitsune"] = true})[tostring(LocalPlayer42.Data.DevilFruit.Value)] and not table.find(v33_, LocalPlayer42) and not table.find(v35_, LocalPlayer42) and ((getgenv().Setting["Skip Player V4"] and not (LocalPlayer42.Backpack:FindFirstChild("Awakening") or LocalPlayer42.Character:FindFirstChild("Awakening"))) or not getgenv().Setting["Skip Player V4"]) then

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

				if LocalPlayer2_(LocalPlayer44.Character.HumanoidRootPart.CFrame, LocalPlayer.Character.HumanoidRootPart.CFrame) < v37_ then

					v38_ = LocalPlayer44

					v37_ = LocalPlayer2_(LocalPlayer44.Character.HumanoidRootPart.CFrame, LocalPlayer.Character.HumanoidRootPart.CFrame)

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

		if LocalPlayer47 and LocalPlayer1_(LocalPlayer45, LocalPlayer47:GetModelCFrame()) < 3000 then

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

			if not v8_() then

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



local LocalPlayer2 = "RinXHubAutoBounty"

local LocalPlayer3 = LocalPlayer2 .. "/Config.json"

function v46_()

	local LocalPlayer51 = game:GetService("HttpService")

	local LocalPlayer52 = LocalPlayer51:JSONEncode(_G)

	if true then

		if isfolder(LocalPlayer2) then

			if isfile(LocalPlayer3) then

				writefile(LocalPlayer3, LocalPlayer52)

			else

				writefile(LocalPlayer3, LocalPlayer52)

			end

		else

			makefolder(LocalPlayer2)

		end

	end

end

function v47_()

	local LocalPlayer53 = game:GetService("HttpService")

	if isfolder(LocalPlayer2) then

		if isfile(LocalPlayer3) then

			_G = LocalPlayer53:JSONDecode(readfile(LocalPlayer3))

		end

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

			if Workspace2_:DistanceFromCharacter(LocalPlayer1_(LocalPlayer).Position) <= 30 then

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

			LocalPlayer3_(CFrame.new(0, 9000, 0))

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

					LocalPlayer3_(LocalPlayer1_(Workspace2_).CFrame + Vector3.new(0, math.random(9999, 99999), 0))

				else

					v59_ = false

					local LocalPlayer73 = LocalPlayer1_(Workspace2_).CFrame + (LocalPlayer1_(Workspace2_).Velocity / 2)

					if LocalPlayer73.Y < 10 then

						LocalPlayer73 = CFrame.new(LocalPlayer73.X, 10, LocalPlayer73.Z)

					end

					v31_ = LocalPlayer1_(Workspace2_).CFrame

					if Workspace2_.Character:FindFirstChild("Busy") and Workspace2_.Character.Busy.Value then

						LocalPlayer3_(v56_(v31_))

					else

						if Workspace2_.Character:FindFirstChild("Humanoid") and Workspace2_.Character.Humanoid.MoveDirection.Magnitude > 0 then

							LocalPlayer3_(LocalPlayer73 + Vector3.new(1, 4, 1))

							if (not LocalPlayer.Character:FindFirstChild("Busy") or not LocalPlayer.Character.Busy.Value) and not game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible then

								Workspace6_()

							end

						else

							LocalPlayer3_(v31_ + Vector3.new(1, 4, 1))

						end

						task.wait(0.1)

					end

				end

			end

		end

	end

end)



local G2L = {};



-- StarterGui.BountyGui

G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));

G2L["1"]["Name"] = [[BountyGui]];

G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;



-- StarterGui.BountyGui.Frame

G2L["2"] = Instance.new("Frame", G2L["1"]);

G2L["2"]["BorderSizePixel"] = 0;

G2L["2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);

G2L["2"]["ClipsDescendants"] = true;

G2L["2"]["Size"] = UDim2.new(0, 386, 0, 265);

G2L["2"]["Position"] = UDim2.new(0.30439, 0, -0.00074, 0);

G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);



-- StarterGui.BountyGui.Frame.UICorner

G2L["3"] = Instance.new("UICorner", G2L["2"]);

G2L["3"]["CornerRadius"] = UDim.new(0.01, 10);



-- StarterGui.BountyGui.Frame.UIStroke

G2L["4"] = Instance.new("UIStroke", G2L["2"]);

G2L["4"]["Thickness"] = 2;



-- StarterGui.BountyGui.Frame.NameHub

G2L["5"] = Instance.new("TextLabel", G2L["2"]);

G2L["5"]["BorderSizePixel"] = 0;

G2L["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);

G2L["5"]["TextSize"] = 25;

G2L["5"]["FontFace"] = Font.new([[rbxasset://fonts/families/DenkOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);

G2L["5"]["TextColor3"] = Color3.fromRGB(0, 0, 0);

G2L["5"]["BackgroundTransparency"] = 1;

G2L["5"]["Size"] = UDim2.new(0, 89, 0, 49);

G2L["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);

G2L["5"]["Text"] = [[ORG Hub]];

G2L["5"]["Name"] = [[NameHub]];



-- StarterGui.BountyGui.Frame.Nonumber

G2L["6"] = Instance.new("TextLabel", G2L["2"]);

G2L["6"]["BorderSizePixel"] = 0;

G2L["6"]["TextTransparency"] = 0.5;

G2L["6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);

G2L["6"]["TextSize"] = 14;

G2L["6"]["FontFace"] = Font.new([[rbxasset://fonts/families/DenkOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);

G2L["6"]["TextColor3"] = Color3.fromRGB(0, 0, 0);

G2L["6"]["BackgroundTransparency"] = 1;

G2L["6"]["Size"] = UDim2.new(0, 23, 0, 21);

G2L["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);

G2L["6"]["Text"] = [[#1 Auto Bounty]];

G2L["6"]["Name"] = [[Nonumber]];

G2L["6"]["Position"] = UDim2.new(0.18881, 0, 0.11612, 0);



-- StarterGui.BountyGui.Frame.Info

G2L["7"] = Instance.new("Frame", G2L["2"]);

G2L["7"]["BorderSizePixel"] = 0;

G2L["7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 75);

G2L["7"]["Size"] = UDim2.new(0, 150, 0, 188);

G2L["7"]["Position"] = UDim2.new(0.04436, 0, 0.20616, 0);

G2L["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);

G2L["7"]["Name"] = [[Info]];



-- StarterGui.BountyGui.Frame.Info.UICorner

G2L["8"] = Instance.new("UICorner", G2L["7"]);

G2L["8"]["CornerRadius"] = UDim.new(0.01, 10);



-- StarterGui.BountyGui.Frame.Info.Madewith

G2L["9"] = Instance.new("TextLabel", G2L["7"]);

G2L["9"]["BorderSizePixel"] = 0;

G2L["9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);

G2L["9"]["TextSize"] = 14;

G2L["9"]["FontFace"] = Font.new([[rbxasset://fonts/families/DenkOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);

G2L["9"]["TextColor3"] = Color3.fromRGB(0, 0, 0);

G2L["9"]["BackgroundTransparency"] = 1;

G2L["9"]["Size"] = UDim2.new(0, 77, 0, 24);

G2L["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);

G2L["9"]["Text"] = [[Made With Love]];

G2L["9"]["Name"] = [[Madewith]];

G2L["9"]["Position"] = UDim2.new(0.07339, 0, 0.04878, 0);



-- StarterGui.BountyGui.Frame.Info.Version

G2L["a"] = Instance.new("TextLabel", G2L["7"]);

G2L["a"]["BorderSizePixel"] = 0;

G2L["a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);

G2L["a"]["TextSize"] = 14;

G2L["a"]["FontFace"] = Font.new([[rbxasset://fonts/families/DenkOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);

G2L["a"]["TextColor3"] = Color3.fromRGB(0, 0, 0);

G2L["a"]["BackgroundTransparency"] = 1;

G2L["a"]["Size"] = UDim2.new(0, 41, 0, 24);

G2L["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);

G2L["a"]["Text"] = [[Players.1]];

G2L["a"]["Name"] = [[Version]];

G2L["a"]["Position"] = UDim2.new(0.02752, 0, 0.85366, 0);



-- StarterGui.BountyGui.Frame.TimeUI

G2L["b"] = Instance.new("Frame", G2L["2"]);

G2L["b"]["ZIndex"] = -1;

G2L["b"]["BorderSizePixel"] = 0;

G2L["b"]["AutoLocalize"] = false;

G2L["b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);

G2L["b"]["Size"] = UDim2.new(0, 179, 0, 93);

G2L["b"]["Position"] = UDim2.new(0.58345, 0, 0.58293, 0);

G2L["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);

G2L["b"]["Name"] = [[TimeUI]];



-- StarterGui.BountyGui.Frame.TimeUI.UIStroke

G2L["c"] = Instance.new("UIStroke", G2L["b"]);





-- StarterGui.BountyGui.Frame.TimeUI.UICorner

G2L["d"] = Instance.new("UICorner", G2L["b"]);

G2L["d"]["CornerRadius"] = UDim.new(0.01, 10);



-- StarterGui.BountyGui.Frame.TimeUI.Time elapsed

G2L["e"] = Instance.new("TextLabel", G2L["b"]);

G2L["e"]["BorderSizePixel"] = 0;

G2L["e"]["AutoLocalize"] = false;

G2L["e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);

G2L["e"]["TextSize"] = 14;

G2L["e"]["FontFace"] = Font.new([[rbxasset://fonts/families/DenkOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);

G2L["e"]["TextColor3"] = Color3.fromRGB(0, 0, 0);

G2L["e"]["BackgroundTransparency"] = 1;

G2L["e"]["Size"] = UDim2.new(0, 69, 0, 27);

G2L["e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);

G2L["e"]["Text"] = [[Time elapsed: ]];

G2L["e"]["Name"] = [[Time elapsed]];

G2L["e"]["Position"] = UDim2.new(0, 0, 0.0403, 0);



-- StarterGui.BountyGui.Frame.TimeUI.Time

G2L["f"] = Instance.new("TextLabel", G2L["b"]);

G2L["f"]["BorderSizePixel"] = 0;

G2L["f"]["AutoLocalize"] = false;

G2L["f"]["TextTransparency"] = 0.5;

G2L["f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);

G2L["f"]["TextSize"] = 14;

G2L["f"]["FontFace"] = Font.new([[rbxasset://fonts/families/DenkOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);

G2L["f"]["TextColor3"] = Color3.fromRGB(0, 0, 0);

G2L["f"]["BackgroundTransparency"] = 1;

G2L["f"]["Size"] = UDim2.new(0, 62, 0, 27);

G2L["f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);

G2L["f"]["Text"] = [[time]];

G2L["f"]["Name"] = [[Time]];

G2L["f"]["Position"] = UDim2.new(0.42658, 0, 0.0403, 0);



-- StarterGui.BountyGui.Frame.TimeUI.Moon

G2L["10"] = Instance.new("TextLabel", G2L["b"]);

G2L["10"]["BorderSizePixel"] = 0;

G2L["10"]["AutoLocalize"] = false;

G2L["10"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);

G2L["10"]["TextSize"] = 14;

G2L["10"]["FontFace"] = Font.new([[rbxasset://fonts/families/DenkOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);

G2L["10"]["TextColor3"] = Color3.fromRGB(0, 0, 0);

G2L["10"]["BackgroundTransparency"] = 1;

G2L["10"]["Size"] = UDim2.new(0, 62, 0, 27);

G2L["10"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);

G2L["10"]["Text"] = [[Moon:]];

G2L["10"]["Name"] = [[Moon]];

G2L["10"]["Position"] = UDim2.new(-0.08648, 0, 0.17939, 0);



-- StarterGui.BountyGui.Frame.TimeUI.PercentMoon

G2L["11"] = Instance.new("TextLabel", G2L["b"]);

G2L["11"]["BorderSizePixel"] = 0;

G2L["11"]["AutoLocalize"] = false;

G2L["11"]["TextTransparency"] = 0.5;

G2L["11"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);

G2L["11"]["TextSize"] = 14;

G2L["11"]["FontFace"] = Font.new([[rbxasset://fonts/families/DenkOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);

G2L["11"]["TextColor3"] = Color3.fromRGB(0, 0, 0);

G2L["11"]["BackgroundTransparency"] = 1;

G2L["11"]["Size"] = UDim2.new(0, 62, 0, 27);

G2L["11"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);

G2L["11"]["Text"] = [[Percent]];

G2L["11"]["Name"] = [[PercentMoon]];

G2L["11"]["Position"] = UDim2.new(0.25899, 0, 0.17939, 0);



-- StarterGui.BountyGui.Frame.TimeUI.Bounty/Honor

G2L["12"] = Instance.new("TextLabel", G2L["b"]);

G2L["12"]["BorderSizePixel"] = 0;

G2L["12"]["AutoLocalize"] = false;

G2L["12"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);

G2L["12"]["TextSize"] = 14;

G2L["12"]["FontFace"] = Font.new([[rbxasset://fonts/families/DenkOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);

G2L["12"]["TextColor3"] = Color3.fromRGB(0, 0, 0);

G2L["12"]["BackgroundTransparency"] = 1;

G2L["12"]["Size"] = UDim2.new(0, 62, 0, 27);

G2L["12"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);

G2L["12"]["Text"] = [[Bounty/honor:]];

G2L["12"]["Name"] = [[Bounty/Honor]];

G2L["12"]["Position"] = UDim2.new(0.04201, 0, 0.31439, 0);



-- StarterGui.BountyGui.Frame.TimeUI.ForBounty

G2L["13"] = Instance.new("TextLabel", G2L["b"]);

G2L["13"]["BorderSizePixel"] = 0;

G2L["13"]["AutoLocalize"] = false;

G2L["13"]["TextTransparency"] = 0.5;

G2L["13"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);

G2L["13"]["TextSize"] = 14;

G2L["13"]["FontFace"] = Font.new([[rbxasset://fonts/families/DenkOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);

G2L["13"]["TextColor3"] = Color3.fromRGB(0, 0, 0);

G2L["13"]["BackgroundTransparency"] = 1;

G2L["13"]["Size"] = UDim2.new(0, 62, 0, 27);

G2L["13"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);

G2L["13"]["Text"] = [[Bounty]];

G2L["13"]["Name"] = [[ForBounty]];

G2L["13"]["Position"] = UDim2.new(0.42658, 0, 0.3103, 0);



-- StarterGui.BountyGui.Frame.TimeUI.Fps

G2L["14"] = Instance.new("TextLabel", G2L["b"]);

G2L["14"]["BorderSizePixel"] = 0;

G2L["14"]["AutoLocalize"] = false;

G2L["14"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);

G2L["14"]["TextSize"] = 14;

G2L["14"]["FontFace"] = Font.new([[rbxasset://fonts/families/DenkOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);

G2L["14"]["TextColor3"] = Color3.fromRGB(0, 0, 0);

G2L["14"]["BackgroundTransparency"] = 1;

G2L["14"]["Size"] = UDim2.new(0, 66, 0, 27);

G2L["14"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);

G2L["14"]["Text"] = [[Fps:]];

G2L["14"]["Name"] = [[Fps]];

G2L["14"]["Position"] = UDim2.new(-0.12477, 0, 0.45939, 0);



-- StarterGui.BountyGui.Frame.TimeUI.ForFps

G2L["15"] = Instance.new("TextLabel", G2L["b"]);

G2L["15"]["BorderSizePixel"] = 0;

G2L["15"]["AutoLocalize"] = false;

G2L["15"]["TextTransparency"] = 0.5;

G2L["15"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);

G2L["15"]["TextSize"] = 14;

G2L["15"]["FontFace"] = Font.new([[rbxasset://fonts/families/DenkOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);

G2L["15"]["TextColor3"] = Color3.fromRGB(0, 0, 0);

G2L["15"]["BackgroundTransparency"] = 1;

G2L["15"]["Size"] = UDim2.new(0, 62, 0, 27);

G2L["15"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);

G2L["15"]["Text"] = [[FpsNumber]];

G2L["15"]["Name"] = [[ForFps]];

G2L["15"]["Position"] = UDim2.new(0.25899, 0, 0.4603, 0);



-- StarterGui.BountyGui.Frame.TimeUI.Ping

G2L["16"] = Instance.new("TextLabel", G2L["b"]);

G2L["16"]["BorderSizePixel"] = 0;

G2L["16"]["AutoLocalize"] = false;

G2L["16"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);

G2L["16"]["TextSize"] = 14;

G2L["16"]["FontFace"] = Font.new([[rbxasset://fonts/families/DenkOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);

G2L["16"]["TextColor3"] = Color3.fromRGB(0, 0, 0);

G2L["16"]["BackgroundTransparency"] = 1;

G2L["16"]["Size"] = UDim2.new(0, 62, 0, 33);

G2L["16"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);

G2L["16"]["Text"] = [[Ping:]];

G2L["16"]["Name"] = [[Ping]];

G2L["16"]["Position"] = UDim2.new(-0.09765, 0, 0.5953, 0);



-- StarterGui.BountyGui.Frame.TimeUI.ForPing

G2L["17"] = Instance.new("TextLabel", G2L["b"]);

G2L["17"]["BorderSizePixel"] = 0;

G2L["17"]["AutoLocalize"] = false;

G2L["17"]["TextTransparency"] = 0.5;

G2L["17"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);

G2L["17"]["TextSize"] = 14;

G2L["17"]["FontFace"] = Font.new([[rbxasset://fonts/families/DenkOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);

G2L["17"]["TextColor3"] = Color3.fromRGB(0, 0, 0);

G2L["17"]["BackgroundTransparency"] = 1;

G2L["17"]["Size"] = UDim2.new(0, 62, 0, 28);

G2L["17"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);

G2L["17"]["Text"] = [[PingNumber]];

G2L["17"]["Name"] = [[ForPing]];

G2L["17"]["Position"] = UDim2.new(0.25899, 0, 0.64268, 0);



-- StarterGui.BountyGui.Frame.HubImage

G2L["18"] = Instance.new("ImageLabel", G2L["2"]);

G2L["18"]["BorderSizePixel"] = 0;

G2L["18"]["BackgroundColor3"] = Color3.fromRGB(255, 53, 12);

G2L["18"]["Image"] = [[rbxassetid://78028986222008]];

G2L["18"]["Size"] = UDim2.new(0, 100, 0, 100);

G2L["18"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);

G2L["18"]["BackgroundTransparency"] = 1;

G2L["18"]["Name"] = [[HubImage]];

G2L["18"]["Position"] = UDim2.new(0.31636, 0, 0.3494, 0);



-- StarterGui.BountyGui.Frame.Discord

G2L["19"] = Instance.new("TextLabel", G2L["2"]);

G2L["19"]["BorderSizePixel"] = 0;

G2L["19"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);

G2L["19"]["TextSize"] = 14;

G2L["19"]["FontFace"] = Font.new([[rbxasset://fonts/families/DenkOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);

G2L["19"]["TextColor3"] = Color3.fromRGB(0, 0, 0);

G2L["19"]["BackgroundTransparency"] = 1;

G2L["19"]["Size"] = UDim2.new(0, 78, 0, 13);

G2L["19"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);

G2L["19"]["Text"] = [[Discord]];

G2L["19"]["Name"] = [[Discord]];

G2L["19"]["Position"] = UDim2.new(0.37509, 0, 0.04833, 0);



-- StarterGui.BountyGui.Frame.Discordurl

G2L["1a"] = Instance.new("TextLabel", G2L["2"]);

G2L["1a"]["BorderSizePixel"] = 0;

G2L["1a"]["TextTransparency"] = 0.5;

G2L["1a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);

G2L["1a"]["TextSize"] = 11;

G2L["1a"]["FontFace"] = Font.new([[rbxasset://fonts/families/DenkOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);

G2L["1a"]["TextColor3"] = Color3.fromRGB(0, 0, 0);

G2L["1a"]["BackgroundTransparency"] = 1;

G2L["1a"]["Size"] = UDim2.new(0, 23, 0, 21);

G2L["1a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);

G2L["1a"]["Text"] = [[discord.gg/qyBCaQYtW4]];

G2L["1a"]["Name"] = [[Discordurl]];

G2L["1a"]["Position"] = UDim2.new(0.55354, 0, 0.11455, 0);



-- StarterGui.BountyGui.Frame.TopScript

G2L["1b"] = Instance.new("TextLabel", G2L["2"]);

G2L["1b"]["BorderSizePixel"] = 0;

G2L["1b"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);

G2L["1b"]["TextSize"] = 14;

G2L["1b"]["FontFace"] = Font.new([[rbxasset://fonts/families/DenkOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);

G2L["1b"]["TextColor3"] = Color3.fromRGB(0, 0, 0);

G2L["1b"]["BackgroundTransparency"] = 1;

G2L["1b"]["Size"] = UDim2.new(0, 78, 0, 13);

G2L["1b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);

G2L["1b"]["Text"] = [[Top 1 Script]];

G2L["1b"]["Name"] = [[TopScript]];

G2L["1b"]["Position"] = UDim2.new(0.4134, 0, 0.21143, 0);



-- StarterGui.BountyGui.Frame.Game

G2L["1c"] = Instance.new("TextLabel", G2L["2"]);

G2L["1c"]["BorderSizePixel"] = 0;

G2L["1c"]["TextTransparency"] = 0.5;

G2L["1c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);

G2L["1c"]["TextSize"] = 14;

G2L["1c"]["FontFace"] = Font.new([[rbxasset://fonts/families/DenkOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);

G2L["1c"]["TextColor3"] = Color3.fromRGB(0, 0, 0);

G2L["1c"]["BackgroundTransparency"] = 1;

G2L["1c"]["Size"] = UDim2.new(0, 23, 0, 21);

G2L["1c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);

G2L["1c"]["Text"] = [[Blox Fruit]];

G2L["1c"]["Name"] = [[Game]];

G2L["1c"]["Position"] = UDim2.new(0.5256, 0, 0.281, 0);



-- StarterGui.BountyGui.Frame.LocalScript

G2L["1d"] = Instance.new("LocalScript", G2L["2"]);





-- StarterGui.BountyGui.Frame.TextButton

G2L["1e"] = Instance.new("TextButton", G2L["2"]);

G2L["1e"]["BorderSizePixel"] = 0;

G2L["1e"]["TextSize"] = 20;

G2L["1e"]["TextColor3"] = Color3.fromRGB(0, 0, 0);

G2L["1e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 75);

G2L["1e"]["FontFace"] = Font.new([[rbxasset://fonts/families/DenkOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);

G2L["1e"]["Size"] = UDim2.new(0, 72, 0, 68);

G2L["1e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);

G2L["1e"]["Text"] = [[Skip

Player]];

G2L["1e"]["Position"] = UDim2.new(0.65734, 0, 0.27925, 0);



-- StarterGui.BountyGui.Frame.TextButton.UICorner

G2L["1f"] = Instance.new("UICorner", G2L["1e"]);

G2L["1f"]["CornerRadius"] = UDim.new(0.01, 10);



-- StarterGui.BountyGui.Frame.LocalScript

local function C_1d()

local script = G2L["1d"];

	game.Players.LocalPlayer.PlayerGui.BountyGui.Frame.Draggable = true

	game.Players.LocalPlayer.PlayerGui.BountyGui.Frame.Active = true

	game:GetService("RunService").RenderStepped:Connect(function()

		local LocalPlayer75 = game.workspace.DistributedGameTime

		local LocalPlayer76 = LocalPlayer75 % 60

		local LocalPlayer77 = math.floor(LocalPlayer75 / 60 % 60)

		local LocalPlayer78 = math.floor(LocalPlayer75 / 3600)

		game.Players.LocalPlayer.PlayerGui.BountyGui.Frame.TimeUI.Time.Text = string.format('%.0fh %.0fm %.0fs', LocalPlayer78, LocalPlayer77, LocalPlayer76)

		game.Players.LocalPlayer.PlayerGui.BountyGui.Frame.TimeUI:FindFirstChild("ForBounty").Text = "$" ..game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value

		game.Players.LocalPlayer.PlayerGui.BountyGui.Frame.TimeUI.ForPing.Text = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()

		game.Players.LocalPlayer.PlayerGui.BountyGui.Frame.TimeUI.ForFps.Text = workspace:GetRealPhysicsFPS()

		if game.PlaceId == 7449423635 or game.PlaceId == 4442272183 then

			for LocalPlayer80, LocalPlayer81 in pairs(game.Players:GetPlayers()) do

				v61_ = LocalPlayer80

			end

			local LocalPlayer79 = {

				['8'] = "http://www.roblox.com/asset/?id=9709149431", -- 🌕

				['7'] = "http://www.roblox.com/asset/?id=9709149052", -- 🌖

				['6'] = "http://www.roblox.com/asset/?id=9709143733", -- 🌗

				['5'] = "http://www.roblox.com/asset/?id=9709150401", -- 🌘

				['4'] = "http://www.roblox.com/asset/?id=9709135895",  -- 🌑

				['3'] = "http://www.roblox.com/asset/?id=9709139597", -- 🌒

				['2'] = "http://www.roblox.com/asset/?id=9709150086", -- 🌓

				['1'] = "http://www.roblox.com/asset/?id=9709149680", -- 🌔

			};

			if game:GetService("Lighting").Sky.MoonTextureId == LocalPlayer79['1'] then

				v62_ = '🌔'

			elseif game:GetService("Lighting").Sky.MoonTextureId == LocalPlayer79['2'] then

				v62_ = '🌓'

			elseif game:GetService("Lighting").Sky.MoonTextureId == LocalPlayer79['3'] then

				v62_ = '🌒'

			elseif game:GetService("Lighting").Sky.MoonTextureId == LocalPlayer79['4'] then

				v62_ = '🌑'

			elseif game:GetService("Lighting").Sky.MoonTextureId == LocalPlayer79['5'] then

				v62_ = '🌘'

			elseif game:GetService("Lighting").Sky.MoonTextureId == LocalPlayer79['6'] then

				v62_ = '🌗'

			elseif game:GetService("Lighting").Sky.MoonTextureId == LocalPlayer79['7'] then

				v62_ = '🌖'

			elseif game:GetService("Lighting").Sky.MoonTextureId == LocalPlayer79['8'] then

				v62_ = '🌕'

			end

			for LocalPlayer82, LocalPlayer83 in pairs(LocalPlayer79) do

				if game:GetService("Lighting").Sky.MoonTextureId == LocalPlayer83 then

					v63_ = LocalPlayer82 / 8 * 100
				end
			end
			game.Players.LocalPlayer.PlayerGui.BountyGui.Frame.TimeUI.PercentMoon.Text = v63_ .. "%"
		else
			game.Players.LocalPlayer.PlayerGui.BountyGui.Frame.TimeUI.PercentMoon.Text = "For Sea2,Sea3"
		end
	end)

	game.Players.LocalPlayer.PlayerGui.BountyGui.Frame.TextButton.MouseButton1Click:Connect(function()
		v36_()
	end)
end;

task.spawn(C_1d);
