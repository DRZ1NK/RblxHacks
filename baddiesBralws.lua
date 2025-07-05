local p = game:GetService("Players").LocalPlayer
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local CurrentSpeed = 16
local IsDraggingSlider = false
local RenderSteppedConnection = nil
local SpeedLabel = nil
local SpeedFill = nil
local SpeedSlider = nil
local ScreenGui = nil

-- Check if GUI already exists from a previous script execution. If so, this script does nothing.
if p:FindFirstChild("PlayerGui") and p.PlayerGui:FindFirstChild("SpeedChangerGUI") then return end

-- If no GUI exists, create it
ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "SpeedChangerGUI"
ScreenGui.Parent = p.PlayerGui
ScreenGui.ResetOnSpawn = false -- This is the key property!

local function SetupGUI()
    local Character = p.Character or p.CharacterAdded:Wait()
    local Humanoid = Character:WaitForChild("Humanoid")
    local Animator = Humanoid:WaitForChild("Animator")

    -- Speed Changer UI (only create if they don't exist within the ScreenGui)
    local SpeedFrame = ScreenGui:FindFirstChild("SpeedFrame")
    if not SpeedFrame then
        SpeedFrame = Instance.new("Frame")
        SpeedFrame.Name = "SpeedFrame"
        SpeedFrame.Size = UDim2.new(0, 250, 0, 100)
        SpeedFrame.Position = UDim2.new(0.5, -125, 0.8, -50)
        SpeedFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        SpeedFrame.BorderSizePixel = 0
        SpeedFrame.Parent = ScreenGui

        SpeedLabel = Instance.new("TextLabel")
        SpeedLabel.Name = "SpeedLabel"
        SpeedLabel.Size = UDim2.new(1, 0, 0.3, 0)
        SpeedLabel.Position = UDim2.new(0, 0, 0, 0)
        SpeedLabel.BackgroundTransparency = 1
        SpeedLabel.TextColor3 = Color3.new(1, 1, 1)
        SpeedLabel.Font = Enum.Font.SourceSans
        SpeedLabel.TextScaled = true
        SpeedLabel.Parent = SpeedFrame

        SpeedSlider = Instance.new("TextButton")
        SpeedSlider.Name = "SpeedSlider"
        SpeedSlider.Size = UDim2.new(1, -20, 0.3, 0)
        SpeedSlider.Position = UDim2.new(0, 10, 0.5, 0)
        SpeedSlider.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
        SpeedSlider.Text = ""
        SpeedSlider.AutoButtonColor = false
        SpeedSlider.Parent = SpeedFrame

        SpeedFill = Instance.new("Frame")
        SpeedFill.Name = "SpeedFill"
        SpeedFill.Position = UDim2.new(0, 0, 0, 0)
        SpeedFill.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
        SpeedFill.BorderSizePixel = 0
        SpeedFill.Parent = SpeedSlider
    else
        -- If UI elements exist, just grab their references
        SpeedLabel = SpeedFrame:FindFirstChild("SpeedLabel")
        SpeedSlider = SpeedFrame:FindFirstChild("SpeedSlider")
        SpeedFill = SpeedSlider:FindFirstChild("SpeedFill")
    end

    -- Update text and fill in case of respawn
    SpeedLabel.Text = "Speed: " .. math.floor(CurrentSpeed)
    SpeedFill.Size = UDim2.new(math.clamp((CurrentSpeed - 8) / 492, 0, 1), 0, 1, 0)

    local function UpdateSpeedFromX(x)
        local relativeX = math.clamp((x - SpeedSlider.AbsolutePosition.X) / SpeedSlider.AbsoluteSize.X, 0, 1)
        SpeedFill.Size = UDim2.new(relativeX, 0, 1, 0)
        CurrentSpeed = 8 + relativeX * 492
        SpeedLabel.Text = "Speed: " .. math.floor(CurrentSpeed)
    end

    -- Input connections (these need to be managed carefully as they are connected to specific instances)
    -- For simplicity and to avoid multiple connections on character added, we'll reconnect them here.
    -- In a larger project, you might store connections in tables and disconnect them more explicitly.
    SpeedSlider.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            IsDraggingSlider = true
            UpdateSpeedFromX(input.Position.X)
        end
    end)
    UserInputService.InputChanged:Connect(function(input)
        if IsDraggingSlider and input.UserInputType == Enum.UserInputType.MouseMovement then
            UpdateSpeedFromX(input.Position.X)
        end
    end)
    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            IsDraggingSlider = false
        end
    end)

    -- Manage RenderStepped connection (crucial for updating speed of new humanoid)
    if RenderSteppedConnection then
        RenderSteppedConnection:Disconnect()
    end
    RenderSteppedConnection = RunService.RenderStepped:Connect(function()
        if p.Character and p.Character:FindFirstChild("Humanoid") then
            p.Character.Humanoid.WalkSpeed = CurrentSpeed
        end
    end)

    local function AddEmoteButton(buttonText, animationId, yPosition)
        local EmoteFrame = ScreenGui:FindFirstChild(buttonText .. "EmoteFrame")
        if not EmoteFrame then
            EmoteFrame = Instance.new("Frame")
            EmoteFrame.Name = buttonText .. "EmoteFrame"
            EmoteFrame.Size = UDim2.new(0, 150, 0, 50)
            EmoteFrame.Position = UDim2.new(0, 10, 0, yPosition)
            EmoteFrame.Parent = ScreenGui

            local EmoteButton = Instance.new("TextButton")
            EmoteButton.Name = buttonText .. "EmoteButton"
            EmoteButton.Size = UDim2.new(1, 0, 1, 0)
            EmoteButton.Text = "Play " .. buttonText
            EmoteButton.Parent = EmoteFrame

            local EmoteAnimation = Instance.new("Animation")
            EmoteAnimation.AnimationId = "rbxassetid://" .. animationId
            -- LoadAnimation needs to be called on the *current* Animator
            local EmoteAnimationTrack = Animator:LoadAnimation(EmoteAnimation)
            local IsPlayingEmote = false
            EmoteButton.MouseButton1Click:Connect(function()
                IsPlayingEmote = not IsPlayingEmote
                if IsPlayingEmote then
                    EmoteAnimationTrack:Play()
                    EmoteButton.Text = "Stop " .. buttonText
                else
                    EmoteAnimationTrack:Stop()
                    EmoteButton.Text = "Play " .. buttonText
                end
            end)
        end
    end

    local function AddTeleportButton(x, y, z, buttonText, yPosition)
        local TPFrame = ScreenGui:FindFirstChild(buttonText .. "Frame")
        if not TPFrame then
            TPFrame = Instance.new("Frame")
            TPFrame.Name = buttonText .. "Frame"
            TPFrame.Size = UDim2.new(0, 150, 0, 50)
            TPFrame.Position = UDim2.new(0, 10, 0, yPosition)
            TPFrame.Parent = ScreenGui

            local TPButton = Instance.new("TextButton")
            TPButton.Name = buttonText .. "Button"
            TPButton.Size = UDim2.new(1, 0, 1, 0)
            TPButton.Text = buttonText
            TPButton.Parent = TPFrame
            TPButton.MouseButton1Click:Connect(function()
                if p.Character then
                    p.Character:SetPrimaryPartCFrame(CFrame.new(x, y, z))
                end
            end)
        end
    end

    AddEmoteButton("L-Dance", "18934307172", 5)
    AddEmoteButton("Duck", "107496292201856", 60)
    AddTeleportButton(-3139, 80, -35, "Box", 115)
    AddTeleportButton(-719, 6, 4,"Spawn",170)
end

-- Initial setup when the script first runs
SetupGUI()

-- Re-setup character-dependent connections when the character is added (after death/respawn)
p.CharacterAdded:Connect(function()
    task.wait(0.1) -- Small delay to ensure character and humanoid are fully loaded
    SetupGUI()
end)
