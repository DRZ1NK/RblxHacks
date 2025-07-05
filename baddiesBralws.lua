local p = game.Players.LocalPlayer
local runService = game:GetService("RunService")
local uis = game:GetService("UserInputService")

-- Remove existing GUI and disconnect old RenderStepped if any
if p:FindFirstChild("PlayerGui") then
    local oldGui = p.PlayerGui:FindFirstChild("SpeedChangerGUI")
    if oldGui then oldGui:Destroy() end
end

local connection -- will hold RenderStepped connection

local g = Instance.new("ScreenGui", p.PlayerGui)
g.Name = "SpeedChangerGUI"

local spd = 16
local dragging = false

local function setup()
    local c = p.Character or p.CharacterAdded:Wait()
    local h = c:WaitForChild("Humanoid")
    local a = h:WaitForChild("Animator")

    -- Create main frame
    local f1 = Instance.new("Frame", g)
    f1.Size = UDim2.new(0, 250, 0, 100)
    f1.Position = UDim2.new(0.5, -125, 0.8, -50)
    f1.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    f1.BorderSizePixel = 0

    -- Label showing speed
    local l = Instance.new("TextLabel", f1)
    l.Size = UDim2.new(1, 0, 0.3, 0)
    l.Text = "Speed: 16"
    l.Position = UDim2.new(0, 0, 0, 0)
    l.BackgroundTransparency = 1
    l.TextColor3 = Color3.new(1, 1, 1)
    l.Font = Enum.Font.SourceSans
    l.TextScaled = true

    -- Slider button
    local s = Instance.new("TextButton", f1)
    s.Size = UDim2.new(1, -20, 0.3, 0)
    s.Position = UDim2.new(0, 10, 0.5, 0)
    s.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    s.Text = ""
    s.AutoButtonColor = false

    -- Fill inside slider
    local fill = Instance.new("Frame", s)
    fill.Size = UDim2.new((spd - 8) / 492, 0, 1, 0)
    fill.Position = UDim2.new(0, 0, 0, 0)
    fill.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
    fill.BorderSizePixel = 0

    local function updateSpeedFromX(x)
        local relativeX = math.clamp((x - s.AbsolutePosition.X) / s.AbsoluteSize.X, 0, 1)
        fill.Size = UDim2.new(relativeX, 0, 1, 0)
        spd = 8 + relativeX * 492
        l.Text = "Speed: " .. math.floor(spd)
    end

    s.InputBegan:Connect(function(input)
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

    -- Disconnect old connection if exists
    if connection then connection:Disconnect() end

    -- Update WalkSpeed every frame
    connection = runService.RenderStepped:Connect(function()
        if h then h.WalkSpeed = spd end
    end)

    -- Function to add animation buttons
    local function addBtn(txt, id, y)
        local f = Instance.new("Frame", g)
        f.Size = UDim2.new(0, 150, 0, 50)
        f.Position = UDim2.new(0, 10, 0, y)
        local b = Instance.new("TextButton", f)
        b.Size = UDim2.new(1, 0, 1, 0)
        b.Text = "Play " .. txt
        local anim = Instance.new("Animation")
        anim.AnimationId = "rbxassetid://" .. id
        local track = a:LoadAnimation(anim)
        local playing = false
        b.MouseButton1Click:Connect(function()
            playing = not playing
            if playing then
                track:Play()
                b.Text = "Stop " .. txt
            else
                track:Stop()
                b.Text = "Play " .. txt
            end
        end)
    end

    addBtn("Kick", "18934307172", 5)
    addBtn("Emote", "107496292201856", 60)
end

setup()

p.CharacterAdded:Connect(function()
    task.wait(1)
    setup()
end)
