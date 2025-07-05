local p=game.Players.LocalPlayer
local c=p.Character or p.CharacterAdded:Wait()
local h=c:WaitForChild("Humanoid")
local a=h:WaitForChild("Animator")
local g=Instance.new("ScreenGui",p:WaitForChild("PlayerGui")) g.Name="SpeedChangerGUI"
local f1=Instance.new("Frame",g) f1.Size=UDim2.new(0,250,0,100) f1.Position=UDim2.new(0.5,-125,0.8,-50) f1.BackgroundColor3=Color3.fromRGB(30,30,30) f1.BorderSizePixel=0
local l=Instance.new("TextLabel",f1) l.Size=UDim2.new(1,0,0.3,0) l.Text="Speed: 16" l.Position=UDim2.new(0,0,0,0) l.BackgroundTransparency=1 l.TextColor3=Color3.new(1,1,1) l.Font=Enum.Font.SourceSans l.TextScaled=true
local s=Instance.new("TextButton",f1) s.Size=UDim2.new(1,-20,0.3,0) s.Position=UDim2.new(0,10,0.5,0) s.BackgroundColor3=Color3.fromRGB(60,60,60) s.Text="" s.AutoButtonColor=false
local fill=Instance.new("Frame",s) fill.Size=UDim2.new(0.5,0,1,0) fill.Position=UDim2.new(0,0,0,0) fill.BackgroundColor3=Color3.fromRGB(0,170,255) fill.BorderSizePixel=0
local uis=game:GetService("UserInputService") local dragging=false local spd=16
local function upd(x)local r=math.clamp((x-s.AbsolutePosition.X)/s.AbsoluteSize.X,0,1) fill.Size=UDim2.new(r,0,1,0) spd=8+r*92 l.Text="Speed: "..math.floor(spd) end
s.InputBegan:Connect(function(i)if i.UserInputType==Enum.UserInputType.MouseButton1 then dragging=true upd(i.Position.X) end end)
uis.InputChanged:Connect(function(i)if dragging and i.UserInputType==Enum.UserInputType.MouseMovement then upd(i.Position.X) end end)
uis.InputEnded:Connect(function(i)if i.UserInputType==Enum.UserInputType.MouseButton1 then dragging=false end end)
game:GetService("RunService").RenderStepped:Connect(function()if h then h.WalkSpeed=spd end end)
local f2=Instance.new("Frame",g) f2.Size=UDim2.new(0,150,0,50) f2.Position=UDim2.new(0,10,0,10)
local b=Instance.new("TextButton",f2) b.Size=UDim2.new(1,0,1,0) b.Text="Play Kick"
local anim=Instance.new("Animation") anim.AnimationId="rbxassetid://18934307172"
local trk=a:LoadAnimation(anim) local playing=false
b.MouseButton1Click:Connect(function() playing=not playing if playing then trk:Play() b.Text="Stop Kick" else trk:Stop() b.Text="Play Kick" end end)
