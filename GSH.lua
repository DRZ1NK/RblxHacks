-- gorilla Vs human

-- Services
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local player = Players.LocalPlayer
local camera = workspace.CurrentCamera

-- GUI Setup
local screenGui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
screenGui.Name = "TeleportGui"
screenGui.ResetOnSpawn = false

-- Main Menu Frame
local mainMenu = Instance.new("Frame")
mainMenu.Name = "MainMenu"
mainMenu.Size = UDim2.new(0, 300, 0, 200)
mainMenu.Position = UDim2.new(0.5, -150, 0.5, -100)
mainMenu.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
mainMenu.Parent = screenGui

local function createButton(text, size, pos, parent, color)
	local btn = Instance.new("TextButton")
	btn.Size = size
	btn.Position = pos
	btn.Text = text
	btn.BackgroundColor3 = color or Color3.fromRGB(0, 170, 255)
	btn.TextColor3 = Color3.new(1, 1, 1)
	btn.Font = Enum.Font.SourceSansBold
	btn.TextScaled = true
	btn.Parent = parent
	return btn
end

local humanSelectBtn = createButton("Human", UDim2.new(0.8, 0, 0.25, 0), UDim2.new(0.1, 0, 0.2, 0), mainMenu)
local gorillaSelectBtn = createButton("Gorilla", UDim2.new(0.8, 0, 0.25, 0), UDim2.new(0.1, 0, 0.5, 0), mainMenu)
local closeMainBtn = createButton("Close", UDim2.new(0.8, 0, 0.2, 0), UDim2.new(0.1, 0, 0.8, 0), mainMenu, Color3.fromRGB(255, 60, 60))

-- Human Frame (was mainFrame)
local humanFrame = Instance.new("ScrollingFrame")
humanFrame.Name = "HumanFrame"
humanFrame.Size = UDim2.new(0, 320, 0, 300)
humanFrame.Position = UDim2.new(0.5, -160, 0.5, -150)
humanFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
humanFrame.BorderSizePixel = 0
humanFrame.Active = true
humanFrame.Draggable = true
humanFrame.Visible = false
humanFrame.Parent = screenGui
humanFrame.CanvasSize = UDim2.new(0, 0, 0, 0)

local teleportBtn = createButton("Teleport Me", UDim2.new(0.8, 0, 0.13, 0), UDim2.new(0.1, 0, 0.08, 0), humanFrame)
local textBox = Instance.new("TextBox", humanFrame)
textBox.Size = UDim2.new(0.8, 0, 0.13, 0)
textBox.Position = UDim2.new(0.1, 0, 0.23, 0)
textBox.PlaceholderText = "Enter player name"
textBox.Text = ""
textBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
textBox.TextColor3 = Color3.new(0, 0, 0)
textBox.Font = Enum.Font.SourceSans
textBox.TextScaled = true
textBox.ClearTextOnFocus = false

local spectateBtn = createButton("Spectate", UDim2.new(0.8, 0, 0.13, 0), UDim2.new(0.1, 0, 0.38, 0), humanFrame)
local openAnimBtn = createButton("Animations", UDim2.new(0.8, 0, 0.13, 0), UDim2.new(0.1, 0, 0.53, 0), humanFrame)
local closeBtn = createButton("Back", UDim2.new(0.8, 0, 0.13, 0), UDim2.new(0.1, 0, 0.78, 0), humanFrame, Color3.fromRGB(120, 120, 120))

-- Animation Frame
local animFrame = Instance.new("Frame")
animFrame.Size = UDim2.new(0, 320, 0, 300)
animFrame.Position = UDim2.new(0.5, -160, 0.5, -150)
animFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
animFrame.BorderSizePixel = 0
animFrame.Active = true
animFrame.Draggable = true
animFrame.Visible = false
animFrame.Parent = screenGui

local scroll = Instance.new("ScrollingFrame", animFrame)
scroll.Size = UDim2.new(0.9, 0, 0.8, 0)
scroll.Position = UDim2.new(0.05, 0, 0.05, 0)
scroll.CanvasSize = UDim2.new(0, 0, 0, 0)
scroll.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
scroll.ScrollBarThickness = 6

local backBtn = createButton("Back", UDim2.new(0.9, 0, 0.1, 0), UDim2.new(0.05, 0, 0.87, 0), animFrame, Color3.fromRGB(120, 120, 120))

-- Gorilla Frame placeholder
local gorillaFrame = Instance.new("Frame")
gorillaFrame.Size = UDim2.new(0, 300, 0, 200)
gorillaFrame.Position = UDim2.new(0.5, -150, 0.5, -100)
gorillaFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
gorillaFrame.Visible = false
gorillaFrame.Parent = screenGui

local gorillaBackBtn = createButton("Back", UDim2.new(0.8, 0, 0.2, 0), UDim2.new(0.1, 0, 0.75, 0), gorillaFrame, Color3.fromRGB(120, 120, 120))

-- Functionality
local function teleportPlayer()
	local part = Instance.new("Part")
	part.Size = Vector3.new(4, 1, 4)
	part.Position = Vector3.new(12, 12, 12)
	part.Anchored = true
	part.Name = "ClientTeleportPad"
	part.Parent = workspace

	local character = player.Character or player.CharacterAdded:Wait()
	local hrp = character:WaitForChild("HumanoidRootPart")
	hrp.CFrame = CFrame.new(Vector3.new(12, 15, 12))
end

local isSpectating = false
local function toggleSpectate()
	if not isSpectating then
		local targetName = textBox.Text:lower()
		for _, otherPlayer in pairs(Players:GetPlayers()) do
			if otherPlayer ~= player and otherPlayer.Name:lower() == targetName then
				if otherPlayer.Character and otherPlayer.Character:FindFirstChild("Humanoid") then
					camera.CameraSubject = otherPlayer.Character.Humanoid
					camera.CameraType = Enum.CameraType.Custom
					spectateBtn.Text = "Stop Spectating"
					isSpectating = true
					return
				end
			end
		end
	else
		camera.CameraSubject = player.Character:WaitForChild("Humanoid")
		camera.CameraType = Enum.CameraType.Custom
		spectateBtn.Text = "Spectate"
		isSpectating = false
	end
end

local function loadEmoteButtons()
	scroll:ClearAllChildren()
	local AnimFolder = ReplicatedStorage:WaitForChild("Assets"):WaitForChild("Animations")

	local emotes = {}
	for _, anim in ipairs(AnimFolder:GetChildren()) do
		if anim:IsA("Animation") and anim.Name:match("^Emote_") then
			table.insert(emotes, anim)
		end
	end

	scroll.CanvasSize = UDim2.new(0, 0, 0, #emotes * 40)

	for i, anim in ipairs(emotes) do
		local animButton = Instance.new("TextButton")
		animButton.Size = UDim2.new(1, 0, 0, 35)
		animButton.Position = UDim2.new(0, 0, 0, (i - 1) * 40)
		animButton.Text = anim.Name
		animButton.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
		animButton.TextColor3 = Color3.new(1, 1, 1)
		animButton.Font = Enum.Font.SourceSansBold
		animButton.TextScaled = true
		animButton.Parent = scroll

		animButton.MouseButton1Click:Connect(function()
			local character = player.Character or player.CharacterAdded:Wait()
			local humanoid = character:FindFirstChildOfClass("Humanoid")
			if humanoid then
				local animator = humanoid:FindFirstChildOfClass("Animator") or Instance.new("Animator", humanoid)
				local animation = Instance.new("Animation")
				animation.AnimationId = anim.AnimationId
				local track = animator:LoadAnimation(animation)
				track:Play()
			end
		end)
	end
end

-- Button Events
teleportBtn.MouseButton1Click:Connect(teleportPlayer)
spectateBtn.MouseButton1Click:Connect(toggleSpectate)
openAnimBtn.MouseButton1Click:Connect(function()
	humanFrame.Visible = false
	animFrame.Visible = true
	loadEmoteButtons()
end)

closeBtn.MouseButton1Click:Connect(function()
	humanFrame.Visible = false
	mainMenu.Visible = true
end)

backBtn.MouseButton1Click:Connect(function()
	animFrame.Visible = false
	humanFrame.Visible = true
end)

humanSelectBtn.MouseButton1Click:Connect(function()
	mainMenu.Visible = false
	humanFrame.Visible = true
end)

gorillaSelectBtn.MouseButton1Click:Connect(function()
	mainMenu.Visible = false
	gorillaFrame.Visible = true -- placeholder
end)

gorillaBackBtn.MouseButton1Click:Connect(function()
	gorillaFrame.Visible = false
	mainMenu.Visible = true
end)

closeMainBtn.MouseButton1Click:Connect(function()
	screenGui:Destroy()
end)
