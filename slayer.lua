local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local playergui = player:WaitForChild("PlayerGui")
local rep = game:GetService("ReplicatedStorage")
local items = rep:WaitForChild("Items")
local emotes = items:WaitForChild("Emotes")
local camera = workspace.CurrentCamera
local runservice = game:GetService("RunService")
local Players = game:GetService("Players")

runservice.RenderStepped:Connect(function()
	player.Stats.Stamina.Value = 100
end)

local SlayerGui = Instance.new("ScreenGui")
SlayerGui.Parent = playergui
SlayerGui.ResetOnSpawn = false
SlayerGui.IgnoreGuiInset = true

local MainFrame = Instance.new("Frame")
MainFrame.Position = UDim2.new(0.064, 0, 0.303, 0)
MainFrame.AnchorPoint = Vector2.new(0.5,0.5)
MainFrame.Parent = SlayerGui
MainFrame.Size = UDim2.new(0, 99, 0, 326)
MainFrame.Draggable = true
MainFrame.Active = true

local close = Instance.new("TextButton")
close.Parent = MainFrame
close.Position = UDim2.new(0.556,0,0,0)
close.Size = UDim2.new(0, 44, 0, 33)
close.Text = "X"

local AddFov = Instance.new("TextButton")
AddFov.Parent = MainFrame
AddFov.Position = UDim2.new(-0,0,0.908,0)
AddFov.Size = UDim2.new(0, 50, 0, 30)
AddFov.Text = "+"

local SubFov = Instance.new("TextButton")
SubFov.Parent = MainFrame
SubFov.Position = UDim2.new(0.495,0,0.908,0)
SubFov.Size = UDim2.new(0, 50, 0, 30)
SubFov.Text = "-"

local ShowFov = Instance.new("TextLabel")
ShowFov.Parent = MainFrame
ShowFov.Position = UDim2.new(0,0,0.834,0)
ShowFov.Size = UDim2.new(0, 99, 0, 24)
runservice.Heartbeat:Connect(function()
	ShowFov.Text = "Fov: " .. camera.FieldOfView
end)

local espButton = Instance.new("TextButton")
espButton.Parent = MainFrame
espButton.Position = UDim2.new(0,0,0.43,0)
espButton.Text = "ESP"
espButton.Size = UDim2.new(0, 99, 0, 24)

local exposeButton = Instance.new("TextButton")
exposeButton.Parent = MainFrame
exposeButton.Position = UDim2.new(0,0,0.5,0)
exposeButton.Text = "Expose"
exposeButton.Size = UDim2.new(0, 99, 0, 24)

local ShowSpeed = Instance.new("TextLabel")
ShowSpeed.Parent = MainFrame
ShowSpeed.Position = UDim2.new(0,0,0.669,0)
ShowSpeed.Size = UDim2.new(0, 99, 0, 24)

local AddSpeed = Instance.new("TextButton")
AddSpeed.Parent = MainFrame
AddSpeed.Position = UDim2.new(0,0,0.742,0)
AddSpeed.Size = UDim2.new(0, 50, 0, 30)
AddSpeed.Text = "+"

local SubSpeed = Instance.new("TextButton")
SubSpeed.Parent = MainFrame
SubSpeed.Position = UDim2.new(0.495,0,0.742,0)
SubSpeed.Size = UDim2.new(0, 50, 0, 30)
SubSpeed.Text = "-"

close.MouseButton1Click:Connect(function()
	SlayerGui:Destroy()
end)

local anim1 = Instance.new("TextButton")
anim1.Parent = MainFrame
anim1.Size = UDim2.new(0, 99, 0, 27)
anim1.Position = UDim2.new(0, 0, 0.101, 0)
anim1.Text = "Twist"

local anim2 = Instance.new("TextButton")
anim2.Parent = MainFrame
anim2.Size = UDim2.new(0, 99, 0, 27)
anim2.Position = UDim2.new(0, 0, 0.184, 0)
anim2.Text = "Take The L"

local anim3 = Instance.new("TextButton")
anim3.Parent = MainFrame
anim3.Size = UDim2.new(0, 99, 0, 27)
anim3.Position = UDim2.new(0, 0, 0.267, 0)
anim3.Text = "Electro Shuffle"

local anim4 = Instance.new("TextButton")
anim4.Parent = MainFrame
anim4.Size = UDim2.new(0, 99, 0, 27)
anim4.Position = UDim2.new(0, 0, 0.342, 0)
anim4.Text = "Worm"

local fovStep = 10
local maxFOV = 120
local minFOV = 40

AddFov.MouseButton1Click:Connect(function()
	local newFOV = math.clamp(camera.FieldOfView + fovStep, minFOV, maxFOV)
	camera.FieldOfView = newFOV
end)

SubFov.MouseButton1Click:Connect(function()
	local newFOV = math.clamp(camera.FieldOfView - fovStep, minFOV, maxFOV)
	camera.FieldOfView = newFOV
end)

local humanoid
local lockedSpeed = 16
local minSpeed, maxSpeed = 4, 100
local speedStep = 4

local function onCharacterAdded(character)
	humanoid = character:WaitForChild("Humanoid")
	humanoid.WalkSpeed = lockedSpeed
end

local function updateSpeed(newSpeed)
	lockedSpeed = math.clamp(newSpeed, minSpeed, maxSpeed)
	if humanoid then
		humanoid.WalkSpeed = lockedSpeed
	end
end

AddSpeed.MouseButton1Click:Connect(function()
	updateSpeed(lockedSpeed + speedStep)
end)

SubSpeed.MouseButton1Click:Connect(function()
	updateSpeed(lockedSpeed - speedStep)
end)

if player.Character then
	onCharacterAdded(player.Character)
end

player.CharacterAdded:Connect(onCharacterAdded)

runservice.RenderStepped:Connect(function()
	if humanoid and humanoid.WalkSpeed ~= lockedSpeed then
		humanoid.WalkSpeed = lockedSpeed
	end
end)

runservice.Heartbeat:Connect(function()
	if humanoid then
		ShowSpeed.Text = "Speed: " .. tostring(math.floor(humanoid.WalkSpeed))
	else
		ShowSpeed.Text = "Speed: N/A"
	end
end)

local humanoid
local connections1 = {}

local function disconnectAll1()
	for _, conn in pairs(connections1) do
		conn:Disconnect()
	end
	connections1 = {}
end

local function setupAnimButtons()
	disconnectAll1()
	table.insert(connections1, anim1.MouseButton1Click:Connect(function()
		if humanoid then
			local animationTrack = humanoid:LoadAnimation(emotes["Twist"])
			animationTrack:Play()
		end
	end))
	table.insert(connections1, anim2.MouseButton1Click:Connect(function()
		if humanoid then
			local animationTrack = humanoid:LoadAnimation(emotes["Take the L"])
			animationTrack:Play()
		end
	end))
	table.insert(connections1, anim3.MouseButton1Click:Connect(function()
		if humanoid then
			local animationTrack = humanoid:LoadAnimation(emotes["Electro Shuffle"])
			animationTrack:Play()
		end
	end))
	table.insert(connections1, anim4.MouseButton1Click:Connect(function()
		if humanoid then
			local animationTrack = humanoid:LoadAnimation(emotes["Worm"])
			animationTrack:Play()
		end
	end))
end

local function onCharacterAdded1(character)
	humanoid = character:WaitForChild("Humanoid")
	setupAnimButtons()
end

if player.Character then
	onCharacterAdded1(player.Character)
end

player.CharacterAdded:Connect(onCharacterAdded1)

local highlightEnabled = false
local highlights = {}

local function addHighlightToCharacter(character)
	if not highlights[character] then
		local highlight = Instance.new("Highlight")
		highlight.FillColor = Color3.new(1, 1, 1)
		highlight.OutlineColor = Color3.new(0, 0, 0)
		highlight.Parent = character
		highlights[character] = highlight
	end
end

local function removeHighlightFromCharacter(character)
	if highlights[character] then
		highlights[character]:Destroy()
		highlights[character] = nil
	end
end

local function toggleHighlights()
	highlightEnabled = not highlightEnabled
	for _, player in ipairs(Players:GetPlayers()) do
		if player ~= LocalPlayer and player.Character then
			if highlightEnabled then
				addHighlightToCharacter(player.Character)
			else
				removeHighlightFromCharacter(player.Character)
			end
		end
	end
	if highlightEnabled then
		toggleButton.Text = "Highlights: ON"
	else
		toggleButton.Text = "Highlights: OFF"
	end
end

espButton.MouseButton1Click:Connect(toggleHighlights)

Players.PlayerAdded:Connect(function(player)
	if player ~= LocalPlayer then
		player.CharacterAdded:Connect(function(character)
			if highlightEnabled then
				addHighlightToCharacter(character)
			end
		end)
	end
end)

for _, player in ipairs(Players:GetPlayers()) do
	if player ~= LocalPlayer then
		player.CharacterAdded:Connect(function(character)
			if highlightEnabled then
				addHighlightToCharacter(character)
			end
		end)
		if player.Character and highlightEnabled then
			addHighlightToCharacter(player.Character)
		end
	end
end

local exposeEnabled = false
local exposeHighlights = {}

local function removeExposeHighlights()
	for _, h in pairs(exposeHighlights) do
		if h and h.Parent then
			h:Destroy()
		end
	end
	exposeHighlights = {}
end

local function createHighlight(character, color)
	local highlight = Instance.new("Highlight")
	highlight.FillColor = color
	highlight.OutlineColor = Color3.new(0, 0, 0)
	highlight.Parent = character
	exposeHighlights[character] = highlight
end

local function hasItem(player, itemName)
	if player.Character then
		for _, item in pairs(player.Character:GetChildren()) do
			if item.Name == itemName then
				return true
			end
		end
	end
	local backpack = player:FindFirstChild("Backpack")
	if backpack then
		for _, item in pairs(backpack:GetChildren()) do
			if item.Name == itemName then
				return true
			end
		end
	end
	return false
end

local function exposePlayers()
	removeExposeHighlights()
	for _, plr in ipairs(Players:GetPlayers()) do
		if plr ~= player and plr.Character then
			local hasKnife = hasItem(plr, "Knife")
			local hasRevolver = hasItem(plr, "Revolver")
			if hasKnife then
				createHighlight(plr.Character, Color3.new(1, 0, 0))
			elseif hasRevolver then
				createHighlight(plr.Character, Color3.new(0, 0, 1))
			end
		end
	end
end

exposeButton.MouseButton1Click:Connect(function()
	exposeEnabled = not exposeEnabled
	if exposeEnabled then
		exposeButton.Text = "Expose: ON"
		exposePlayers()
		while exposeEnabled do
			exposePlayers()
			task.wait(2)
		end
	else
		exposeButton.Text = "Expose: OFF"
		removeExposeHighlights()
	end
end)
