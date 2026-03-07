local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer

-- GUI
local gui = Instance.new("ScreenGui")
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

local main = Instance.new("Frame")
main.Size = UDim2.new(0,500,0,300)
main.Position = UDim2.new(0.5,-250,0.5,-150)
main.BackgroundColor3 = Color3.fromRGB(35,35,35)
main.BorderSizePixel = 0
main.Parent = gui

Instance.new("UICorner",main).CornerRadius = UDim.new(0,8)

-- drag handle
local drag = Instance.new("Frame")
drag.Size = UDim2.new(0,18,1,0)
drag.Position = UDim2.new(1,-18,0,0)
drag.BackgroundColor3 = Color3.fromRGB(60,60,60)
drag.Parent = main
Instance.new("UICorner",drag).CornerRadius = UDim.new(0,6)

local dragging=false
local dragStart,startPos

drag.InputBegan:Connect(function(i)
	if i.UserInputType==Enum.UserInputType.MouseButton1 then
		dragging=true
		dragStart=i.Position
		startPos=main.Position
	end
end)

drag.InputEnded:Connect(function(i)
	if i.UserInputType==Enum.UserInputType.MouseButton1 then
		dragging=false
	end
end)

UIS.InputChanged:Connect(function(i)
	if dragging and i.UserInputType==Enum.UserInputType.MouseMovement then
		local delta=i.Position-dragStart
		main.Position=UDim2.new(startPos.X.Scale,startPos.X.Offset+delta.X,startPos.Y.Scale,startPos.Y.Offset+delta.Y)
	end
end)

-- tabs
local tabs={"player","main","highlights","misc"}
local pages={}

for i,name in ipairs(tabs) do

	local tab=Instance.new("TextButton")
	tab.Size=UDim2.new(0,120,0,30)
	tab.Position=UDim2.new(0,(i-1)*120,0,0)
	tab.BackgroundColor3=Color3.fromRGB(50,50,50)
	tab.TextColor3=Color3.new(1,1,1)
	tab.Text=name
	tab.Parent=main
	Instance.new("UICorner",tab).CornerRadius=UDim.new(0,6)

	local page=Instance.new("Frame")
	page.Size=UDim2.new(1,0,1,-30)
	page.Position=UDim2.new(0,0,0,30)
	page.BackgroundTransparency=1
	page.Visible=false
	page.Parent=main

	pages[name]=page

	tab.MouseButton1Click:Connect(function()
		for _,p in pairs(pages) do p.Visible=false end
		page.Visible=true
	end)

end

pages.player.Visible=true

-- slider
local function createSlider(parent,text,min,max,default,y,callback)

	local frame=Instance.new("Frame")
	frame.Size=UDim2.new(0,300,0,50)
	frame.Position=UDim2.new(0,20,0,y)
	frame.BackgroundTransparency=1
	frame.Parent=parent

	local label=Instance.new("TextLabel")
	label.Size=UDim2.new(1,0,0,20)
	label.BackgroundTransparency=1
	label.TextColor3=Color3.new(1,1,1)
	label.Text=text..": "..default
	label.Parent=frame

	local bar=Instance.new("Frame")
	bar.Size=UDim2.new(1,0,0,10)
	bar.Position=UDim2.new(0,0,0,30)
	bar.BackgroundColor3=Color3.fromRGB(80,80,80)
	bar.Parent=frame
	Instance.new("UICorner",bar).CornerRadius=UDim.new(1,0)

	local fill=Instance.new("Frame")
	fill.Size=UDim2.new((default-min)/(max-min),0,1,0)
	fill.BackgroundColor3=Color3.fromRGB(0,170,255)
	fill.Parent=bar
	Instance.new("UICorner",fill).CornerRadius=UDim.new(1,0)

	local sliding=false

	bar.InputBegan:Connect(function(i)
		if i.UserInputType==Enum.UserInputType.MouseButton1 then sliding=true end
	end)

	bar.InputEnded:Connect(function(i)
		if i.UserInputType==Enum.UserInputType.MouseButton1 then sliding=false end
	end)

	UIS.InputChanged:Connect(function(i)

		if sliding and i.UserInputType==Enum.UserInputType.MouseMovement then

			local percent=math.clamp((i.Position.X-bar.AbsolutePosition.X)/bar.AbsoluteSize.X,0,1)

			fill.Size=UDim2.new(percent,0,1,0)

			local value=math.floor(min+(max-min)*percent)

			label.Text=text..": "..value

			callback(value)

		end
	end)

end

-- humanoid
local char=player.Character or player.CharacterAdded:Wait()
local humanoid=char:WaitForChild("Humanoid")

local walk=16
local jump=50

createSlider(pages.player,"WalkSpeed",0,200,16,40,function(v) walk=v end)
createSlider(pages.player,"Jump",0,200,50,110,function(v) jump=v end)

RunService.RenderStepped:Connect(function()

	humanoid.WalkSpeed=walk

	if humanoid.UseJumpPower then
		humanoid.JumpPower=jump
	else
		humanoid.JumpHeight=jump
	end

end)

-- TELEPORT DROPDOWN

local function teleportToPlayer(plr)

	local my=player.Character
	local target=plr.Character

	if my and target then

		local r1=my:FindFirstChild("HumanoidRootPart")
		local r2=target:FindFirstChild("HumanoidRootPart")

		if r1 and r2 then
			r1.CFrame=r2.CFrame*CFrame.new(0,0,-3)
		end

	end
end

local tp=Instance.new("TextButton")
tp.Size=UDim2.new(0,140,0,36)
tp.Position=UDim2.new(0,20,0,30)
tp.BackgroundColor3=Color3.fromRGB(60,60,60)
tp.TextColor3=Color3.new(1,1,1)
tp.Text="Teleport Player"
tp.Parent=pages.main
Instance.new("UICorner",tp).CornerRadius=UDim.new(0,6)

local dropdown=Instance.new("ScrollingFrame")
dropdown.Size=UDim2.new(0,140,0,120)
dropdown.Position=UDim2.new(0,20,0,70)
dropdown.BackgroundColor3=Color3.fromRGB(45,45,45)
dropdown.Visible=false
dropdown.ScrollBarThickness=4
dropdown.Parent=pages.main
Instance.new("UICorner",dropdown).CornerRadius=UDim.new(0,6)

local layout=Instance.new("UIListLayout",dropdown)

local function refresh()

	for _,v in pairs(dropdown:GetChildren()) do
		if v:IsA("TextButton") then v:Destroy() end
	end

	for _,plr in pairs(Players:GetPlayers()) do

		if plr~=player then

			local b=Instance.new("TextButton")
			b.Size=UDim2.new(1,0,0,30)
			b.BackgroundColor3=Color3.fromRGB(70,70,70)
			b.TextColor3=Color3.new(1,1,1)
			b.Text=plr.Name
			b.Parent=dropdown
			Instance.new("UICorner",b).CornerRadius=UDim.new(0,6)

			b.MouseButton1Click:Connect(function()
				teleportToPlayer(plr)
				dropdown.Visible=false
			end)

		end

	end

	dropdown.CanvasSize=UDim2.new(0,0,0,layout.AbsoluteContentSize.Y)

end

tp.MouseButton1Click:Connect(function()
	dropdown.Visible=not dropdown.Visible
	if dropdown.Visible then refresh() end
end)

Players.PlayerAdded:Connect(refresh)
Players.PlayerRemoving:Connect(refresh)

-- ESP

local espEnabled=false
local highlights={}

local function addESP(plr)

	if plr==player then return end

	local function setup(char)

		local h=Instance.new("Highlight")
		h.FillTransparency=1
		h.OutlineColor=Color3.fromRGB(255,0,0)
		h.DepthMode=Enum.HighlightDepthMode.AlwaysOnTop
		h.Parent=char

		highlights[plr]=h
	end

	if plr.Character then
		setup(plr.Character)
	end

	plr.CharacterAdded:Connect(setup)

end

local function removeESP()

	for _,h in pairs(highlights) do
		if h then h:Destroy() end
	end

	highlights={}

end

local espButton=Instance.new("TextButton")
espButton.Size=UDim2.new(0,150,0,40)
espButton.Position=UDim2.new(0,20,0,40)
espButton.BackgroundColor3=Color3.fromRGB(60,60,60)
espButton.TextColor3=Color3.new(1,1,1)
espButton.Text="Toggle ESP"
espButton.Parent=pages.highlights
Instance.new("UICorner",espButton).CornerRadius=UDim.new(0,6)

espButton.MouseButton1Click:Connect(function()

	espEnabled=not espEnabled

	if espEnabled then

		for _,p in pairs(Players:GetPlayers()) do
			addESP(p)
		end

	else

		removeESP()

	end

end)

-- misc buttons
for i=1,3 do

	local b=Instance.new("TextButton")
	b.Size=UDim2.new(0,120,0,36)
	b.Position=UDim2.new(0,20+(i*130),0,40)
	b.BackgroundColor3=Color3.fromRGB(60,60,60)
	b.TextColor3=Color3.new(1,1,1)
	b.Text="Button "..i
	b.Parent=pages.misc
	Instance.new("UICorner",b).CornerRadius=UDim.new(0,6)

end
