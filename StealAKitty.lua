-- Setup
local player = game.Players.LocalPlayer
local camera = workspace.CurrentCamera
local playerGui = player:WaitForChild("PlayerGui")

loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()

-- Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "SpecGui"
screenGui.Parent = playerGui

-- Create main frame
local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 300, 0, 300)
mainFrame.Position = UDim2.new(0.5, -150, 0.5, -150)
mainFrame.BackgroundColor3 = Color3.fromRGB(50, 100, 200)
mainFrame.Active = true
mainFrame.Draggable = true
mainFrame.Parent = screenGui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 20)
corner.Parent = mainFrame

local exitButton = Instance.new("TextButton")
exitButton.Size = UDim2.new(0, 50, 0, 30)
exitButton.Position = UDim2.new(1, -55, 0, 5)
exitButton.Text = "X"
exitButton.TextScaled = true
exitButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
exitButton.TextColor3 = Color3.new(1, 1, 1)
exitButton.Parent = mainFrame

exitButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)

-- "Spectate Mode" button
local openSpecButton = Instance.new("TextButton")
openSpecButton.Size = UDim2.new(0, 200, 0, 50)
openSpecButton.Position = UDim2.new(0.5, -100, 0, 20)
openSpecButton.Text = "Spectate (WIP)"
openSpecButton.BackgroundColor3 = Color3.fromRGB(100, 200, 250)
openSpecButton.TextScaled = true
openSpecButton.Parent = mainFrame

-- "Stealing" button
local stealingButton = Instance.new("TextButton")
stealingButton.Size = UDim2.new(0, 200, 0, 50)
stealingButton.Position = UDim2.new(0.5, -100, 0, 90)
stealingButton.Text = "Stealing"
stealingButton.BackgroundColor3 = Color3.fromRGB(250, 200, 100)
stealingButton.TextScaled = true
stealingButton.Parent = mainFrame

-- Define parts to spectate
local specParts = {
    {name = "Part1", position = Vector3.new(25, 13, 120)},
    {name = "Part2", position = Vector3.new(24, 13, 221)},
    {name = "Part3", position = Vector3.new(21, 13, 320)},
    {name = "Part4", position = Vector3.new(20, 13, 421)},
    {name = "Part5", position = Vector3.new(-219, 13, 421), rotation = Vector3.new(0, 90, 0)},
    {name = "Part6", position = Vector3.new(-220, 13, 320), rotation = Vector3.new(0, 90, 0)},
    {name = "Part7", position = Vector3.new(-220, 13, 221), rotation = Vector3.new(0, 90, 0)},
    {name = "Part8", position = Vector3.new(-220, 13, 119), rotation = Vector3.new(0, 90, 0)},
}

-- SpecFrame
local specFrame = Instance.new("Frame")
specFrame.Size = UDim2.new(0, 300, 0, 400)
specFrame.Position = UDim2.new(0.5, -150, 0.5, -200)
specFrame.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
specFrame.Visible = false
specFrame.Active = true
specFrame.Draggable = true
specFrame.Parent = screenGui

local specCorner = Instance.new("UICorner")
specCorner.CornerRadius = UDim.new(0, 20)
specCorner.Parent = specFrame

-- StealFrame
local stealFrame = Instance.new("Frame")
stealFrame.Size = UDim2.new(0, 300, 0, 200)
stealFrame.Position = UDim2.new(0.5, -150, 0.5, -100)
stealFrame.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
stealFrame.Visible = false
stealFrame.Active = true
stealFrame.Draggable = true
stealFrame.Parent = screenGui

local stealCorner = Instance.new("UICorner")
stealCorner.CornerRadius = UDim.new(0, 20)
stealCorner.Parent = stealFrame

-- Store original camera
local originalCameraType = camera.CameraType
local originalCameraSubject = camera.CameraSubject

local function stopLooking()
    camera.CameraType = Enum.CameraType.Custom
    camera.CameraSubject = player.Character and player.Character:FindFirstChild("Humanoid")
end

-- SpecFrame buttons
for i, partData in ipairs(specParts) do
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(0, 260, 0, 30)
    btn.Position = UDim2.new(0, 20, 0, 10 + (i - 1) * 35)
    btn.Text = "View: " .. partData.name
    btn.BackgroundColor3 = Color3.fromRGB(100, 100, 200)
    btn.TextColor3 = Color3.new(1, 1, 1)
    btn.TextScaled = true
    btn.Parent = specFrame

    btn.MouseButton1Click:Connect(function()
        camera.CameraType = Enum.CameraType.Scriptable
        camera.CFrame = CFrame.new(partData.position + Vector3.new(5, 0, 0), partData.position)
    end)
end

local stopButton = Instance.new("TextButton")
stopButton.Size = UDim2.new(0, 260, 0, 30)
stopButton.Position = UDim2.new(0, 20, 1, -80)
stopButton.Text = "Stop Looking"
stopButton.BackgroundColor3 = Color3.fromRGB(200, 100, 100)
stopButton.TextColor3 = Color3.new(1, 1, 1)
stopButton.TextScaled = true
stopButton.Parent = specFrame

stopButton.MouseButton1Click:Connect(stopLooking)

local backButton = Instance.new("TextButton")
backButton.Size = UDim2.new(0, 260, 0, 30)
backButton.Position = UDim2.new(0, 20, 1, -40)
backButton.Text = "Back to Menu"
backButton.BackgroundColor3 = Color3.fromRGB(100, 200, 100)
backButton.TextColor3 = Color3.new(1, 1, 1)
backButton.TextScaled = true
backButton.Parent = specFrame

backButton.MouseButton1Click:Connect(function()
    stopLooking()
    specFrame.Visible = false
    mainFrame.Visible = true
end)

-- StealFrame toggle button
local autoSecureOn = false
local autoSecureButton = Instance.new("TextButton")
autoSecureButton.Size = UDim2.new(0, 260, 0, 50)
autoSecureButton.Position = UDim2.new(0, 20, 0, 30)
autoSecureButton.Text = "Auto Secure: OFF"
autoSecureButton.BackgroundColor3 = Color3.fromRGB(150, 150, 250)
autoSecureButton.TextScaled = true
autoSecureButton.Parent = stealFrame

local instaStealOn = false
local instaStealButton = Instance.new("TextButton")
instaStealButton.Size = UDim2.new(0, 260, 0, 40)
instaStealButton.Position = UDim2.new(0, 20, 0, 85)
instaStealButton.Text = "Insta Steal: OFF"
instaStealButton.BackgroundColor3 = Color3.fromRGB(150, 250, 150)
instaStealButton.TextScaled = true
instaStealButton.Parent = stealFrame

local stealBackButton = Instance.new("TextButton")
stealBackButton.Size = UDim2.new(0, 260, 0, 40)
stealBackButton.Position = UDim2.new(0, 20, 1, -45)
stealBackButton.Text = "Back to Menu"
stealBackButton.BackgroundColor3 = Color3.fromRGB(100, 200, 100)
stealBackButton.TextScaled = true
stealBackButton.Parent = stealFrame

stealBackButton.MouseButton1Click:Connect(function()
    stealFrame.Visible = false
    mainFrame.Visible = true
end)

local function teleportToHitbox()
    local baseFolder = workspace:FindFirstChild("PlayerBases")
    if baseFolder then
        local playerBase = baseFolder:FindFirstChild(player.Name)
        if playerBase then
            local purchases = playerBase:FindFirstChild("Purchases")
            if purchases then
                local plotBlock = purchases:FindFirstChild("PlotBlock")
                if plotBlock and plotBlock:IsA("Model") then
                    local hitbox = plotBlock:FindFirstChild("Hitbox")
                    if hitbox and hitbox:IsA("BasePart") then
                        for _, child in ipairs(hitbox:GetChildren()) do
                            if child:IsA("IntValue") and child.Value == 0 then
                                local character = player.Character
                                if character and character:FindFirstChild("HumanoidRootPart") then
                                    character.HumanoidRootPart.CFrame = hitbox.CFrame + Vector3.new(0, 3, 0)
                                end
                                break
                            end
                        end
                    end
                end
            end
        end
    end
end

-- Teleport to DeliveryHitbox function (insta steal)
local function teleportToDeliveryHitbox()
    local baseFolder = workspace:FindFirstChild("PlayerBases")
    if baseFolder then
        local playerBase = baseFolder:FindFirstChild(player.Name)
        if playerBase then
            local deliveryHitbox = playerBase:FindFirstChild("DeliveryHitbox")
            if deliveryHitbox and deliveryHitbox:IsA("BasePart") then
                local character = player.Character
                if character and character:FindFirstChild("HumanoidRootPart") then
                    character.HumanoidRootPart.CFrame = deliveryHitbox.CFrame + Vector3.new(0, 3, 0)
                end
            end
        end
    end
end

-- Toggle auto secure
autoSecureButton.MouseButton1Click:Connect(function()
    autoSecureOn = not autoSecureOn
    autoSecureButton.Text = "Auto Secure: " .. (autoSecureOn and "ON" or "OFF")
    if autoSecureOn then
        -- Run loop on client
        task.spawn(function()
            while autoSecureOn do
                teleportToHitbox()
                task.wait(1) -- Check every second
            end
        end)
    end
end)

instaStealButton.MouseButton1Click:Connect(function()
    instaStealOn = not instaStealOn
    instaStealButton.Text = "Insta Steal: " .. (instaStealOn and "ON" or "OFF")
    if instaStealOn then
        task.spawn(function()
            while instaStealOn do
                -- Check player's ModelValue
                local character = player.Character
                if character then
                    local modelValue = character:FindFirstChild("ModelValue")
                    if modelValue and modelValue:IsA("ObjectValue") and modelValue.Value then
                        teleportToDeliveryHitbox()
                    end
                end
                task.wait(1)
            end
        end)
    end
end)


-- Open Spectate
openSpecButton.MouseButton1Click:Connect(function()
    mainFrame.Visible = false
    specFrame.Visible = true
end)

-- Open Stealing
stealingButton.MouseButton1Click:Connect(function()
    mainFrame.Visible = false
    stealFrame.Visible = true
end)
