local player = game.Players.LocalPlayer
local UIS = game:GetService("UserInputService")

-- ScreenGui
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = player:WaitForChild("PlayerGui")

-- Main Frame
local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 500, 0, 300)
MainFrame.Position = UDim2.new(0.5, -250, 0.5, -150)
MainFrame.BackgroundColor3 = Color3.fromRGB(30,30,30)
MainFrame.BorderSizePixel = 0
MainFrame.Parent = ScreenGui

-- Right-side Drag Handle
local DragHandle = Instance.new("Frame")
DragHandle.Size = UDim2.new(0, 20, 1, 0)
DragHandle.Position = UDim2.new(1,-20,0,0)
DragHandle.BackgroundColor3 = Color3.fromRGB(100,100,100)
DragHandle.BorderSizePixel = 0
DragHandle.ZIndex = 10
DragHandle.Parent = MainFrame

local DragLabel = Instance.new("TextLabel")
DragLabel.Size = UDim2.new(1,0,1,0)
DragLabel.BackgroundTransparency = 1
DragLabel.Text = "DRAG"
DragLabel.TextColor3 = Color3.fromRGB(255,255,255)
DragLabel.TextScaled = true
DragLabel.Font = Enum.Font.SourceSansBold
DragLabel.Rotation = 90
DragLabel.ZIndex = 11
DragLabel.Parent = DragHandle

-- Drag system
local dragging = false
local dragStart = Vector2.new()
local startPos = UDim2.new()

DragHandle.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = true
		dragStart = input.Position
		startPos = MainFrame.Position
	end
end)

DragHandle.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = false
	end
end)

UIS.InputChanged:Connect(function(input)
	if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
		local delta = input.Position - dragStart
		MainFrame.Position = UDim2.new(
			startPos.X.Scale,
			startPos.X.Offset + delta.X,
			startPos.Y.Scale,
			startPos.Y.Offset + delta.Y
		)
	end
end)

-- Tabs
local Tabs = {"player","main","highlights","misc"}
local Pages = {}

-- Slider Helper
local function createSlider(Page,labelText,minVal,maxVal,defaultVal,yPos,callback)
	local SliderFrame = Instance.new("Frame")
	SliderFrame.Size = UDim2.new(0,300,0,50)
	SliderFrame.Position = UDim2.new(0,20,0,yPos)
	SliderFrame.BackgroundTransparency = 1
	SliderFrame.Parent = Page
	SliderFrame.ZIndex = 2

	local Label = Instance.new("TextLabel")
	Label.Size = UDim2.new(1,0,0,20)
	Label.BackgroundTransparency = 1
	Label.Text = labelText..": "..defaultVal
	Label.TextColor3 = Color3.new(1,1,1)
	Label.TextScaled = true
	Label.ZIndex = 3
	Label.Parent = SliderFrame

	local Bar = Instance.new("Frame")
	Bar.Size = UDim2.new(1,0,0,10)
	Bar.Position = UDim2.new(0,0,0,30)
	Bar.BackgroundColor3 = Color3.fromRGB(70,70,70)
	Bar.ZIndex = 2
	Bar.Parent = SliderFrame

	local Fill = Instance.new("Frame")
	Fill.Size = UDim2.new((defaultVal-minVal)/(maxVal-minVal),0,1,0)
	Fill.BackgroundColor3 = Color3.fromRGB(0,170,255)
	Fill.ZIndex = 3
	Fill.Parent = Bar

	local sliding = false
	Bar.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			sliding = true
		end
	end)
	Bar.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			sliding = false
		end
	end)
	UIS.InputChanged:Connect(function(input)
		if sliding and input.UserInputType == Enum.UserInputType.MouseMovement then
			local percent = math.clamp((input.Position.X - Bar.AbsolutePosition.X)/Bar.AbsoluteSize.X,0,1)
			Fill.Size = UDim2.new(percent,0,1,0)
			local value = math.floor(minVal + (maxVal-minVal)*percent)
			Label.Text = labelText..": "..value
			callback(value)
		end
	end)
end

-- Button names per tab
local ButtonNames = {
	main = {"Action 1","Action 2","Resize +","Resize -"},
	highlights = {"Neon","Plastic","Reflect +","Reflect -"},
	misc = {"Say Hi","Gravity 50","Sit Humanoid","Force Sit"}
}

-- Create Pages
for _, name in pairs(Tabs) do
	local Page = Instance.new("Frame")
	Page.Size = UDim2.new(1,0,1,0)
	Page.Position = UDim2.new(0,0,0,0)
	Page.BackgroundColor3 = Color3.fromRGB(40,40,40)
	Page.Visible = false
	Page.ZIndex = 1
	Page.Parent = MainFrame
	Pages[name] = Page

	-- Small top label
	local TabLabel = Instance.new("TextLabel")
	TabLabel.Size = UDim2.new(0, 100, 0, 20)
	TabLabel.Position = UDim2.new(0,10,0,5)
	TabLabel.BackgroundTransparency = 1
	TabLabel.Text = string.upper(name)
	TabLabel.TextColor3 = Color3.new(1,1,1)
	TabLabel.TextScaled = true
	TabLabel.Font = Enum.Font.SourceSansBold
	TabLabel.ZIndex = 5
	TabLabel.Parent = Page

	if name == "player" then
		local character = player.Character or player.CharacterAdded:Wait()
		local humanoid = character:WaitForChild("Humanoid")

		createSlider(Page,"WalkSpeed",0,200,16,50,function(val) humanoid.WalkSpeed = val end)
		createSlider(Page,"Jump",0,200,50,120,function(val)
			if humanoid.UseJumpPower then
				humanoid.JumpPower = val
			else
				humanoid.JumpHeight = val
			end
		end)

	else
		for i = 1,4 do
			local Button = Instance.new("TextButton")
			Button.Size = UDim2.new(0,100,0,40)
			Button.Position = UDim2.new(0,20 + ((i-1)*110),0,60)
			Button.BackgroundColor3 = Color3.fromRGB(60,60,60)
			Button.TextColor3 = Color3.new(1,1,1)
			Button.Text = ButtonNames[name][i] or "Button"..i
			Button.BorderSizePixel = 0
			Button.ZIndex = 3
			Button.Parent = Page

			-- Unique functions per button
			Button.MouseButton1Click:Connect(function()
				if name == "main" then
					if i == 1 then print("Main - Action 1 executed")
					elseif i == 2 then MainFrame.BackgroundColor3 = Color3.fromRGB(255,100,100)
					elseif i == 3 then MainFrame.Size = UDim2.new(0,600,0,400)
					elseif i == 4 then MainFrame.Size = UDim2.new(0,400,0,250) end
				elseif name == "highlights" then
					local char = player.Character
					if char then
						for _, part in pairs(char:GetChildren()) do
							if part:IsA("BasePart") then
								if i == 1 then part.Material = Enum.Material.Neon
								elseif i == 2 then part.Material = Enum.Material.Plastic
								elseif i == 3 then part.Reflectance = 0.5
								elseif i == 4 then part.Reflectance = 0 end
							end
						end
					end
				elseif name == "misc" then
					if i == 1 then print("Hello from Misc!")
					elseif i == 2 then workspace.Gravity = 50
					elseif i == 3 then
						local humanoid = player.Character and player.Character:FindFirstChildOfClass("Humanoid")
						if humanoid then humanoid.Sit = true end
					elseif i == 4 then
						player.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Seated)
					end
				end
			end)
		end
	end
end

-- Tab Buttons
for i,name in pairs(Tabs) do
	local Button = Instance.new("TextButton")
	Button.Size = UDim2.new(0,125,0,30)
	Button.Position = UDim2.new(0,(i-1)*125,0,0)
	Button.BackgroundColor3 = Color3.fromRGB(50,50,50)
	Button.TextColor3 = Color3.new(1,1,1)
	Button.Text = name
	Button.BorderSizePixel = 0
	Button.ZIndex = 6
	Button.Parent = MainFrame

	Button.MouseButton1Click:Connect(function()
		for _, page in pairs(Pages) do page.Visible = false end
		Pages[name].Visible = true
	end)
end

Pages["player"].Visible = true
