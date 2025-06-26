local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local animator = humanoid:WaitForChild("Animator")
local kickAnimation = Instance.new("Animation")
kickAnimation.AnimationId = "rbxassetid://18934307172"
local kickAnimationTrack = animator:LoadAnimation(kickAnimation)
kickAnimationTrack:Play()
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "SpeedChangerGUI"
screenGui.Parent = player:WaitForChild("PlayerGui")
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 250, 0, 100)
frame.Position = UDim2.new(0.5, -125, 0.8, -50)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.BorderSizePixel = 0
frame.Parent = screenGui
local label = Instance.new("TextLabel")
label.Size = UDim2.new(1, 0, 0.3, 0)
label.Position = UDim2.new(0, 0, 0, 0)
label.BackgroundTransparency = 1
label.Text = "Speed: 16"
label.TextColor3 = Color3.new(1, 1, 1)
label.Font = Enum.Font.SourceSans
label.TextScaled = true
label.Parent = frame
local slider = Instance.new("TextButton")
slider.Size = UDim2.new(1, -20, 0.3, 0)
slider.Position = UDim2.new(0, 10, 0.5, 0)
slider.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
slider.Text = ""
slider.AutoButtonColor = false
slider.Parent = frame
local fill = Instance.new("Frame")
fill.Size = UDim2.new(0.5, 0, 1, 0)
fill.Position = UDim2.new(0, 0, 0, 0)
fill.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
fill.BorderSizePixel = 0
fill.Parent = slider
local uis = game:GetService("UserInputService")
local dragging = false
local speedValue = 16
local function updateSpeedFromX(x)
	local relativeX = math.clamp((x - slider.AbsolutePosition.X) / slider.AbsoluteSize.X, 0, 1)
	fill.Size = UDim2.new(relativeX, 0, 1, 0)
	speedValue = 8 + relativeX * 92
	label.Text = "Speed: " .. math.floor(speedValue)
end
slider.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = true
		updateSpeedFromX(input.Position.X)
	end
end)
uis.InputChanged:Connect(function(input)
	if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
		updateSpeedFromX(input.Position.X)
	end
end)
uis.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = false
	end
end)
game:GetService("RunService").RenderStepped:Connect(function()
	if humanoid then
		humanoid.WalkSpeed = speedValue
	end
end)
