local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local player = Players.LocalPlayer
local camera = workspace.CurrentCamera
local UIS = game:GetService("UserInputService")
local character = player.Character or player.CharacterAdded:Wait()

local screenGui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
screenGui.Name = "DTIGui"
screenGui.ResetOnSpawn = false

UIS.InputBegan:Connect(function(player)
	if player.KeyCode == Enum.KeyCode.RightControl then
		if screenGui.Enabled == true then
			screenGui.Enabled = false
		else
			screenGui.Enabled = true
		end
	end
end)

local function createButton(text, size, pos, parent, color)
	local btn = Instance.new("TextButton")
	btn.Size = size
	btn.Position = pos
	btn.Text = text
	btn.BackgroundColor3 = color or Color3.fromRGB(255,255,255)
	btn.TextColor3 = Color3.new(0,0,0)
	btn.Font = Enum.Font.SourceSansBold
	btn.TextScaled = true
	btn.Parent = parent  
	btn.BorderSizePixel = 2
	return btn
end

local DTIFrame = Instance.new("Frame")
DTIFrame.Size = UDim2.new(0, 477, 0, 407)
DTIFrame.BackgroundColor3 = Color3.fromRGB(230, 165, 255)
DTIFrame.BorderSizePixel = 4
DTIFrame.AnchorPoint = Vector2.new(0.5, 0.5)
DTIFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
DTIFrame.Active = true
DTIFrame.Draggable = true
DTIFrame.Parent = screenGui

local OutFitFrame = Instance.new("Frame")
OutFitFrame.Size = UDim2.new(0, 477, 0, 407)
OutFitFrame.BackgroundColor3 = Color3.fromRGB(230, 165, 255)
OutFitFrame.BorderSizePixel = 4
OutFitFrame.AnchorPoint = Vector2.new(0.5, 0.5)
OutFitFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
OutFitFrame.Active = true
OutFitFrame.Draggable = true
OutFitFrame.Parent = screenGui

local OutShowFrame = Instance.new("Frame")
OutShowFrame.Size = UDim2.new(0, 148, 0, 407)
OutShowFrame.BackgroundColor3 = Color3.fromRGB(230, 165, 255)
OutShowFrame.BorderSizePixel = 4
OutShowFrame.Position = UDim2.new(-0.31,0,0,0)
OutShowFrame.Parent = OutFitFrame
OutShowFrame.ZIndex = 2

local PlayerTextBox = Instance.new("TextBox")
PlayerTextBox.Size = UDim2.new(0,426,0,50)
PlayerTextBox.Position = UDim2.new(0,0,0,0)
PlayerTextBox.PlaceholderText = "PlayerName"
PlayerTextBox.TextSize = 24
PlayerTextBox.Parent = OutFitFrame

DTIFrame.Visible = true
OutFitFrame.Visible = false

local CloseBtn = createButton("CLOSE", UDim2.new(0,50,0,50), UDim2.new(0.895,0,0,0), DTIFrame)
local MoneyBtn = createButton("Money TP", UDim2.new(0,50,0,50), UDim2.new(0,0,0,0), DTIFrame)
local outfitBtn = createButton("Outfit Show (VIP)", UDim2.new(0,50,0,50), UDim2.new(0.104,0,0,0), DTIFrame)
local BackBtn = createButton("Back", UDim2.new(0,50,0,50), UDim2.new(0.895,0,0,0), OutFitFrame)
local ShowHideBtn = createButton("Show", UDim2.new(0,477,0,50), UDim2.new(0,0,0.123,0), OutFitFrame)

local function teleportToAllMoney()
	local character = player.Character or player.CharacterAdded:Wait()
	local moneyFolder = workspace:WaitForChild("CollectibleMoney")
	local targetFolders = {"DressingRoom", "Lobby", "Obby", "VIP"}

	for _, folderName in ipairs(targetFolders) do
		local folder = moneyFolder:FindFirstChild(folderName)
		if folder then
			for _, item in ipairs(folder:GetChildren()) do
				if item:IsA("BasePart") then
					character:MoveTo(item.Position + Vector3.new(0, 1, 0))
					task.wait(0.2)
				end
			end
		end
	end
end

local function showAccessories(playerName)
	local targetPlayer = Players:FindFirstChild(playerName)
	if not OutShowFrame:FindFirstChildOfClass("UIListLayout") then
		local layout = Instance.new("UIListLayout")
		layout.SortOrder = Enum.SortOrder.LayoutOrder
		layout.Parent = OutShowFrame
	end

	for _, child in ipairs(OutShowFrame:GetChildren()) do
		if child:IsA("TextLabel") then
			child:Destroy()
		end
	end

	if not targetPlayer or not targetPlayer.Character then return end
	local accessoriesFolder = targetPlayer.Character:FindFirstChild("EquippedAccessories")
	if not accessoriesFolder then return end

	for _, accessory in ipairs(accessoriesFolder:GetChildren()) do
		wait(1)
		if accessory:IsA("Accessory") then
			local label = Instance.new("TextLabel")
			label.Size = UDim2.new(1, 0, 0, 24)
			label.BackgroundTransparency = 1
			label.TextColor3 = Color3.new(1, 1, 1)
			label.Font = Enum.Font.SourceSans
			label.TextSize = 18
			label.Text = accessory.Name
			label.Parent = OutShowFrame
		end
	end
end


outfitBtn.MouseButton1Click:Connect(function()
	DTIFrame.Visible = false
	OutFitFrame.Visible = true
	showAccessories(PlayerTextBox.Text)
end)

BackBtn.MouseButton1Click:Connect(function()
	OutFitFrame.Visible = false
	DTIFrame.Visible = true
end)

MoneyBtn.MouseButton1Click:Connect(teleportToAllMoney)

CloseBtn.MouseButton1Click:Connect(function()
	screenGui:Destroy()
end)
