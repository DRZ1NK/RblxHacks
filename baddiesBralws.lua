local p=game:GetService("Players").LocalPlayer
if p:FindFirstChild("PlayerGui") and p.PlayerGui:FindFirstChild("SpeedChangerGUI") then return end
local RunService=game:GetService("RunService")
local UserInputService=game:GetService("UserInputService")
local CurrentSpeed=16
local IsDraggingSlider=false
local RenderSteppedConnection=nil
local SpeedLabel=nil
local SpeedFill=nil
local SpeedSlider=nil
local ScreenGui=Instance.new("ScreenGui")
ScreenGui.Name="SpeedChangerGUI"
ScreenGui.Parent=p.PlayerGui
local function SetupGUI()
    local Character=p.Character or p.CharacterAdded:Wait()
    local Humanoid=Character:WaitForChild("Humanoid")
    local Animator=Humanoid:WaitForChild("Animator")
    local SpeedFrame=Instance.new("Frame")
    SpeedFrame.Name="SpeedFrame"
    SpeedFrame.Size=UDim2.new(0,250,0,100)
    SpeedFrame.Position=UDim2.new(0.5,-125,0.8,-50)
    SpeedFrame.BackgroundColor3=Color3.fromRGB(30,30,30)
    SpeedFrame.BorderSizePixel=0
    SpeedFrame.Parent=ScreenGui
    SpeedLabel=Instance.new("TextLabel")
    SpeedLabel.Name="SpeedLabel"
    SpeedLabel.Size=UDim2.new(1,0,0.3,0)
    SpeedLabel.Text="Speed: "..math.floor(CurrentSpeed)
    SpeedLabel.Position=UDim2.new(0,0,0,0)
    SpeedLabel.BackgroundTransparency=1
    SpeedLabel.TextColor3=Color3.new(1,1,1)
    SpeedLabel.Font=Enum.Font.SourceSans
    SpeedLabel.TextScaled=true
    SpeedLabel.Parent=SpeedFrame
    SpeedSlider=Instance.new("TextButton")
    SpeedSlider.Name="SpeedSlider"
    SpeedSlider.Size=UDim2.new(1,-20,0.3,0)
    SpeedSlider.Position=UDim2.new(0,10,0.5,0)
    SpeedSlider.BackgroundColor3=Color3.fromRGB(60,60,60)
    SpeedSlider.Text=""
    SpeedSlider.AutoButtonColor=false
    SpeedSlider.Parent=SpeedFrame
    SpeedFill=Instance.new("Frame")
    SpeedFill.Name="SpeedFill"
    SpeedFill.Size=UDim2.new(math.clamp((CurrentSpeed-8)/492,0,1),0,1,0)
    SpeedFill.Position=UDim2.new(0,0,0,0)
    SpeedFill.BackgroundColor3=Color3.fromRGB(0,170,255)
    SpeedFill.BorderSizePixel=0
    SpeedFill.Parent=SpeedSlider
    local function UpdateSpeedFromX(x)
        local relativeX=math.clamp((x-SpeedSlider.AbsolutePosition.X)/SpeedSlider.AbsoluteSize.X,0,1)
        SpeedFill.Size=UDim2.new(relativeX,0,1,0)
        CurrentSpeed=8+relativeX*492
        SpeedLabel.Text="Speed: "..math.floor(CurrentSpeed)
    end
    SpeedSlider.InputBegan:Connect(function(input)
        if input.UserInputType==Enum.UserInputType.MouseButton1 then
            IsDraggingSlider=true
            UpdateSpeedFromX(input.Position.X)
        end
    end)
    UserInputService.InputChanged:Connect(function(input)
        if IsDraggingSlider and input.UserInputType==Enum.UserInputType.MouseMovement then
            UpdateSpeedFromX(input.Position.X)
        end
    end)
    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType==Enum.UserInputType.MouseButton1 then
            IsDraggingSlider=false
        end
    end)
    if RenderSteppedConnection then
        RenderSteppedConnection:Disconnect()
    end
    RenderSteppedConnection=RunService.RenderStepped:Connect(function()
        if p.Character and p.Character:FindFirstChild("Humanoid") then
            p.Character.Humanoid.WalkSpeed=CurrentSpeed
        end
    end)
    local function AddEmoteButton(buttonText,animationId,yPosition)
        local EmoteFrame=Instance.new("Frame")
        EmoteFrame.Name=buttonText.."EmoteFrame"
        EmoteFrame.Size=UDim2.new(0,150,0,50)
        EmoteFrame.Position=UDim2.new(0,10,0,yPosition)
        EmoteFrame.Parent=ScreenGui
        local EmoteButton=Instance.new("TextButton")
        EmoteButton.Name=buttonText.."EmoteButton"
        EmoteButton.Size=UDim2.new(1,0,1,0)
        EmoteButton.Text="Play "..buttonText
        EmoteButton.Parent=EmoteFrame
        local EmoteAnimation=Instance.new("Animation")
        EmoteAnimation.AnimationId="rbxassetid://"..animationId
        local EmoteAnimationTrack=Animator:LoadAnimation(EmoteAnimation)
        local IsPlayingEmote=false
        EmoteButton.MouseButton1Click:Connect(function()
            IsPlayingEmote=not IsPlayingEmote
            if IsPlayingEmote then
                EmoteAnimationTrack:Play()
                EmoteButton.Text="Stop "..buttonText
            else
                EmoteAnimationTrack:Stop()
                EmoteButton.Text="Play "..buttonText
            end
        end)
    end
    AddEmoteButton("Kick","18934307172",5)
    AddEmoteButton("Emote","107496292201856",60)
end
SetupGUI()
p.CharacterAdded:Connect(function()
    task.wait(0.1)
    SetupGUI()
end)
