if IS_LOADED then
	print("Alr Loaded")
	return
end

pcall(function() getgenv().IS_LOADED = true end)

if not game:IsLoaded() then
	game.Loaded:Wait()
end

local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local StarterGui = game:GetService("StarterGui")

local player = Players.LocalPlayer

local MIN_SPEED = 16
local MAX_SPEED = 200
local originalJumpHeight = 50
local jumpHeight = 50
local walkSpeed = 16
local enabled = true
local draggable = false
local safe = false
local highlightEnabled = false
local maxJumps = math.huge
local jumpCount = 0
local active = false
local originalPositions = {}


-------------------------------------------------
-- Credits Notis
-------------------------------------------------
repeat
	task.wait()
until pcall(function()
	StarterGui:SetCore("SendNotification", {
		Title = "Priv Hub",
		Text = "Ts Is Not Finished Dont Cry Now Lil Nigger\n Ride A Friend (NSFW)",
		Duration = 2
	})
end)


-------------------------------------------------
-- GUI
-------------------------------------------------

local gui = Instance.new("ScreenGui")
gui.Name = "RideANigga"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 210)
frame.Position = UDim2.new(0.5, -150, 0.55, -105)
frame.BackgroundColor3 = Color3.fromRGB(30,30,30)
frame.Parent = gui

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 30)
title.TextSize = 20
title.Text = "Priv Hub"
title.BackgroundTransparency = 1
title.Position = UDim2.new(0, 0, -0.15, 0)
title.TextColor3 = Color3.new(1,1,1)
title.Parent = frame

-- Drag Toggle
local dragButton = Instance.new("TextButton")
dragButton.Size = UDim2.new(0, 80, 0, 25)
dragButton.Position = UDim2.new(0, 5, 0, 5)
dragButton.Text = "Drag: OFF"
dragButton.BackgroundColor3 = Color3.fromRGB(80,80,80)
dragButton.TextColor3 = Color3.new(1,1,1)
dragButton.Parent = frame

dragButton.MouseButton1Click:Connect(function()
	draggable = not draggable
	dragButton.Text = draggable and "Drag: ON" or "Drag: OFF"
end)

-- Safety Toggle
local safeButton = Instance.new("TextButton")
safeButton.Size = UDim2.new(0, 80, 0, 25)
safeButton.Position = UDim2.new(0, 5, 0.15, 5)
safeButton.Text = "Safe: NO"
safeButton.BackgroundColor3 = Color3.fromRGB(80,80,80)
safeButton.TextColor3 = Color3.new(1,1,1)
safeButton.Parent = frame

local safetyPlatform = Instance.new("Part")
safetyPlatform.Size = Vector3.new(100, 1, 100)
safetyPlatform.Anchored = true
safetyPlatform.CanCollide = true
safetyPlatform.Color = Color3.new(0,1,0)
safetyPlatform.Parent = workspace
safetyPlatform.CFrame = CFrame.new(100000, 100000, 100000)

safeButton.MouseButton1Click:Connect(function()
	local root = player.Character:WaitForChild("HumanoidRootPart")

	safe = not safe
	safeButton.Text = safe and "Safe: YES" or "Safe: NO"

	if safe then
		PlayerOrigin = root.CFrame
		root.CFrame = safetyPlatform.CFrame + Vector3.new(0, 3, 0)
	else
		if PlayerOrigin then
			root.CFrame = PlayerOrigin
		end
	end
end)

local TpHealth = Instance.new("TextButton")
TpHealth.Size = UDim2.new(0, 80, 0, 25)
TpHealth.Position = UDim2.new(0, 95, 0.15, 5)
TpHealth.Text = "Tp Health"
TpHealth.BackgroundColor3 = Color3.fromRGB(80,80,80)
TpHealth.TextColor3 = Color3.new(1,1,1)
TpHealth.Parent = frame

TpHealth.MouseButton1Click:Connect(function()
	local root = player.Character:WaitForChild("HumanoidRootPart")
	active = not active

	local zoneFolder = workspace:FindFirstChild("ZoneFolder")
	if not zoneFolder then print("didnt find zoneFolder") end
	local buffsFolder = zoneFolder:FindFirstChild("PlaceBuff")
	if not buffsFolder then print("didnt find BuffsFolder") end

	for _, model in ipairs(buffsFolder:GetChildren()) do
		if model:IsA("Model") and model.Name == "PlaceBuff_10003" then
			if not model.PrimaryPart then
				model.PrimaryPart = model:FindFirstChildWhichIsA("BasePart")
			end
			if model.PrimaryPart then
				if active then
					if not originalPositions[model] then
						originalPositions[model] = model.PrimaryPart.CFrame
					end
					model:SetPrimaryPartCFrame(root.CFrame + Vector3.new(0,1,0))
				else
					if originalPositions[model] then
						model:SetPrimaryPartCFrame(originalPositions[model])
					end
				end
			end
		end
	end
end)

-- Highlight Toggle
local highlightButton = Instance.new("TextButton")
highlightButton.Size = UDim2.new(0, 120, 0, 25)
highlightButton.Position = UDim2.new(0, 95, 0, 5)
highlightButton.Text = "Finder: OFF"
highlightButton.BackgroundColor3 = Color3.fromRGB(80,80,80)
highlightButton.TextColor3 = Color3.new(1,1,1)
highlightButton.Parent = frame

-- Close Button
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 25, 0, 25)
closeButton.Position = UDim2.new(1, -30, 0, 5)
closeButton.Text = "X"
closeButton.BackgroundColor3 = Color3.fromRGB(170,0,0)
closeButton.TextColor3 = Color3.new(1,1,1)
closeButton.Parent = frame

-- Slider
local sliderBar = Instance.new("Frame")
sliderBar.Size = UDim2.new(0.8, 0, 0, 10)
sliderBar.Position = UDim2.new(0.1, 0, 0.45, 0)
sliderBar.BackgroundColor3 = Color3.fromRGB(80,80,80)
sliderBar.Parent = frame

local sliderButton = Instance.new("Frame")
sliderButton.Size = UDim2.new(0, 10, 0, 20)
sliderButton.Position = UDim2.new(0, 0, -0.4, 0)
sliderButton.BackgroundColor3 = Color3.fromRGB(0,170,255)
sliderButton.Parent = sliderBar

local speedLabel = Instance.new("TextLabel")
speedLabel.Size = UDim2.new(1, 0, 0, 30)
speedLabel.Position = UDim2.new(0, 0, 0.4, 0)
speedLabel.BackgroundTransparency = 1
speedLabel.TextColor3 = Color3.new(1,1,1)
speedLabel.Text = "Speed: 16"
speedLabel.Parent = frame

-------------------------------------------------
-- JUMP SLIDER
-------------------------------------------------

local jumpBar = Instance.new("Frame", frame)
jumpBar.Size = UDim2.new(0.8,0,0,10)
jumpBar.Position = UDim2.new(0.1,0,0.7,0)
jumpBar.BackgroundColor3 = Color3.fromRGB(80,80,80)

local jumpButton = Instance.new("Frame", jumpBar)
jumpButton.Size = UDim2.new(0,10,0,20)
jumpButton.Position = UDim2.new(0,0,-0.5,0)
jumpButton.BackgroundColor3 = Color3.fromRGB(0,255,100)

local jumpLabel = Instance.new("TextLabel", frame)
jumpLabel.Size = UDim2.new(1,0,0,25)
jumpLabel.Position = UDim2.new(0,0,0.66,0)
jumpLabel.BackgroundTransparency = 1
jumpLabel.TextColor3 = Color3.new(1,1,1)
jumpLabel.Text = "Jump: 50"



-------------------------------------------------
-- Jump Logic
-------------------------------------------------

local humanoid
local root

local function setupCharacter(char)
	humanoid = char:WaitForChild("Humanoid")
	root = char:WaitForChild("HumanoidRootPart")

	originalJumpHeight = humanoid.JumpHeight
	jumpHeight = originalJumpHeight
	jumpLabel.Text = "Jump: "..math.floor(jumpHeight)

	humanoid.StateChanged:Connect(function(_, new)
		if new == Enum.HumanoidStateType.Landed then
			jumpCount = 0
		end
	end)

	humanoid:GetPropertyChangedSignal("FloorMaterial"):Connect(function()
		if humanoid.FloorMaterial ~= Enum.Material.Air then
			jumpCount = 0
		end
	end)
end

player.CharacterAdded:Connect(setupCharacter)
if player.Character then
	setupCharacter(player.Character)
end

-------------------------------------------------
-- Slider Logic
-------------------------------------------------

local draggingSlider = false

local draggingSpeed = false
local draggingJump = false

sliderButton.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		draggingSpeed = true
	end
end)

jumpButton.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		draggingJump = true
	end
end)

UserInputService.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		draggingSpeed = false
		draggingJump = false
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if input.UserInputType ~= Enum.UserInputType.MouseMovement then return end

	if draggingSpeed then
		local size = sliderBar.AbsoluteSize.X
		local pos = math.clamp(input.Position.X - sliderBar.AbsolutePosition.X,0,size)
		sliderButton.Position = UDim2.new(0,pos-5,-0.5,0)
		walkSpeed = MIN_SPEED + (MAX_SPEED-MIN_SPEED)*(pos/size)
		speedLabel.Text = "Speed: "..math.floor(walkSpeed)
	end

	if draggingJump and humanoid then
		local size = jumpBar.AbsoluteSize.X
		local pos = math.clamp(input.Position.X - jumpBar.AbsolutePosition.X,0,size)
		jumpButton.Position = UDim2.new(0,pos-5,-0.5,0)
		jumpHeight = originalJumpHeight + (pos/size)*100
		jumpLabel.Text = "Jump: "..math.floor(jumpHeight)
	end
end)

-------------------------------------------------
-- Highlight + Beam System
-------------------------------------------------

local activeObjects = {}
local highlightConnections = {}

local function createBeam(fromPart, toPart)
	local a0 = Instance.new("Attachment", fromPart)
	local a1 = Instance.new("Attachment", toPart)

	local beam = Instance.new("Beam")
	beam.Attachment0 = a0
	beam.Attachment1 = a1
	beam.Width0 = 0.15
	beam.Width1 = 0.15
	beam.Color = ColorSequence.new(Color3.fromRGB(0,255,255))
	beam.FaceCamera = true
	beam.Parent = fromPart

	return {beam = beam, a0 = a0, a1 = a1}
end

local function addFinder(model)
	if activeObjects[model] then return end

	local primary = model.PrimaryPart or model:FindFirstChildWhichIsA("BasePart")
	if not primary then return end

	local highlight = Instance.new("Highlight")
	highlight.FillColor = Color3.fromRGB(255,0,0)
	highlight.OutlineColor = Color3.fromRGB(255,255,0)
	highlight.FillTransparency = 0.2
	highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
	highlight.Parent = model

	local char = player.Character
	if not char then return end
	local charRoot = char:FindFirstChild("HumanoidRootPart")
	if not root then return end

	local beamData = createBeam(root, primary)

	activeObjects[model] = {
		highlight = highlight,
		beam = beamData
	}
end

local function removeFinder(model)
	if activeObjects[model] then
		local data = activeObjects[model]
		data.highlight:Destroy()
		data.beam.beam:Destroy()
		data.beam.a0:Destroy()
		data.beam.a1:Destroy()
		activeObjects[model] = nil
	end
end

local function clearAllFinders()
	for model,_ in pairs(activeObjects) do
		removeFinder(model)
	end
end

local function setupFinder(state)
	clearAllFinders()

	for _,conn in pairs(highlightConnections) do
		conn:Disconnect()
	end
	highlightConnections = {}

	if not state then return end

	local folder = workspace:FindFirstChild("ZoneFolder")
	if not folder then return end
	local placeBuff = folder:FindFirstChild("PlaceBuff")
	if not placeBuff then return end

	for _,obj in pairs(placeBuff:GetDescendants()) do
		if obj:IsA("Model") and obj.Name == "PlaceBuff_10003" then
			addFinder(obj)
		end
	end

	table.insert(highlightConnections,
		placeBuff.DescendantAdded:Connect(function(obj)
			if obj:IsA("Model") and obj.Name == "PlaceBuff_10003" then
				addFinder(obj)
			end
		end)
	)

	table.insert(highlightConnections,
		placeBuff.DescendantRemoving:Connect(function(obj)
			if obj:IsA("Model") and obj.Name == "PlaceBuff_10003" then
				removeFinder(obj)
			end
		end)
	)
end

highlightButton.MouseButton1Click:Connect(function()
	highlightEnabled = not highlightEnabled
	highlightButton.Text = highlightEnabled and "Finder: ON" or "Finder: OFF"
	setupFinder(highlightEnabled)
end)

local SafeConnection
SafeConnection = UserInputService.InputBegan:Connect(function(inp, gP)
	if gP then return end
	if inp.UserInputType == Enum.UserInputType.Keyboard then
		if inp.KeyCode == Enum.KeyCode.T then
			local root = player.Character:WaitForChild("HumanoidRootPart")

			safe = not safe
			safeButton.Text = safe and "Safe: YES" or "Safe: NO"

			if safe then
				root.CFrame = safetyPlatform.CFrame + Vector3.new(0, 3, 0)
			else
				if PlayerOrigin then
					root.CFrame = CFrame.new(353 63 -606)
				end
			end
		end
	end
end)

-------------------------------------------------
-- Frame Drag
-------------------------------------------------

local draggingFrame = false
local dragStart
local startPos

frame.InputBegan:Connect(function(input)
	if draggable and input.UserInputType == Enum.UserInputType.MouseButton1 then
		draggingFrame = true
		dragStart = input.Position
		startPos = frame.Position
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if draggingFrame and input.UserInputType == Enum.UserInputType.MouseMovement then
		local delta = input.Position - dragStart
		frame.Position = UDim2.new(
			startPos.X.Scale,
			startPos.X.Offset + delta.X,
			startPos.Y.Scale,
			startPos.Y.Offset + delta.Y
		)
	end
end)

UserInputService.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		draggingFrame = false
	end
end)

-------------------------------------------------
-- CFrame Movement
-------------------------------------------------

local moveConnection

local function startMovement(character)
	root = character:WaitForChild("HumanoidRootPart")
	humanoid = character:WaitForChild("Humanoid")

	if moveConnection then
		moveConnection:Disconnect()
	end

	moveConnection = RunService.RenderStepped:Connect(function(dt)
		if not enabled then return end
		local direction = humanoid.MoveDirection
		if direction.Magnitude > 0 then
			root.CFrame += direction * walkSpeed * dt
		end
	end)
end

local Jumpconnection
Jumpconnection = UserInputService.JumpRequest:Connect(function()
	if not humanoid then return end
	if jumpCount < maxJumps then
		jumpCount += 1
		humanoid.JumpHeight = jumpHeight
		humanoid:ChangeState(Enum.HumanoidStateType.Jumping)

		local root = humanoid.Parent:WaitForChild("HumanoidRootPart")
		root.CFrame += Vector3.new(0, jumpHeight/4, 0)
	end
end)

player.CharacterAdded:Connect(startMovement)
if player.Character then
	startMovement(player.Character)
end

closeButton.MouseButton1Click:Connect(function()
	enabled = false
	if moveConnection then
		moveConnection:Disconnect()
	end
	if Jumpconnection then
		Jumpconnection:Disconnect()
	end
	if SafeConnection then
		SafeConnection:Disconnect()
	end
	clearAllFinders()
	gui:Destroy()
	script:Destroy()
end)
