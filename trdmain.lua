local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "TRD Hub",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Priv Hub",
   LoadingSubtitle = "by Priv",
   Theme = "DarkBlue",

    ConfigurationSaving = {
    Enabled = false,
    FolderName = nil, -- Create a custom folder for your hub/game
    FileName = "Big Hub"
    }
})

Rayfield:Notify({
   Title = "TRD Hub",
   Content = "Hub Loaded Successfully",
   Duration = 3,
   Image = nil,
})

local Tab = Window:CreateTab("Home", nil)
local Section = Tab:CreateSection("Win Stuff")

local Button = Tab:CreateButton({
   Name = "Win Obby",
   Callback = function()
        local Players = game:GetService("Players")
        local player = Players.LocalPlayer
        local workspace = game:GetService("Workspace")

        local function teleportToRandomFinnish()
	    local character = player.Character or player.CharacterAdded:Wait()
	    local rootPart = character:WaitForChild("HumanoidRootPart")

	    local assetsFolder = workspace:FindFirstChild("Assets")
	    if not assetsFolder or not assetsFolder:IsA("Folder") then
		    warn("Assets folder not found in workspace.")
		    return
	    end
	    local validTargets = {}

	    for _, subFolder in ipairs(assetsFolder:GetChildren()) do
		    if subFolder:IsA("Folder") then
			    local finnishPart = subFolder:FindFirstChild("Finish")
			    if finnishPart and finnishPart:IsA("BasePart") then
				    table.insert(validTargets, finnishPart)
			    end
		    end
	    end

	    if #validTargets > 0 then
		    local randomIndex = math.random(1, #validTargets)
		    local targetPart = validTargets[randomIndex]
		    rootPart.CFrame = targetPart.CFrame + Vector3.new(0, 5, 0)
		    print("Teleported to a random Finnish part!")
	    else
		    warn("No valid Finnish parts found in Assets subfolders.")
	    end
    end

    teleportToRandomFinnish()
   end,
})


local platformPart = nil

local Toggle = Tab:CreateToggle({
	Name = "Toggle Platform",
	CurrentValue = false,
	Flag = "Platform",
	Callback = function(Value)
        local Players = game:GetService("Players")
        local player = Players.LocalPlayer
		local character = player.Character or player.CharacterAdded:Wait()
		local rootPart = character:WaitForChild("HumanoidRootPart")

		if Value then
			if not platformPart then
				platformPart = Instance.new("Part")
				platformPart.Size = Vector3.new(40, 1, 40)
				platformPart.Anchored = true
				platformPart.CanCollide = true
				platformPart.Transparency = 0.2
				platformPart.Material = Enum.Material.ForceField
				platformPart.Color = Color3.fromRGB(0, 170, 255)
				platformPart.Name = "TogglePlatform"
				platformPart.Position = Vector3.new(138.124557, -7.05529499, -180.219971, -0.000307559967, 0.173615217, 0.98481375, 1.00000012, -0.000320672989, 0.000368505716, 0.000379562378, 0.984813809, -0.173615217)
				platformPart.Parent = workspace
			end
		else
			if platformPart and platformPart.Parent then
				platformPart:Destroy()
				platformPart = nil
			end
		end
	end,
})

local ToggleRunning = false

local Toggle = Tab:CreateToggle({
	Name = "Win Coin Hunt",
	CurrentValue = false,
	Flag = "Coins",
	Callback = function(Value)
		ToggleRunning = Value

		local Players = game:GetService("Players")
		local player = Players.LocalPlayer
		local teleportDelay = 0.5

		local function teleportToAllCoins()
			local character = player.Character or player.CharacterAdded:Wait()
			local rootPart = character:WaitForChild("HumanoidRootPart")

			while ToggleRunning do
				local coinsModel = workspace:FindFirstChild("Assets")
				if not coinsModel then break end

				local coinHuntFolder = coinsModel:FindFirstChild("Coin Hunt")
				if not coinHuntFolder then break end

				local coins = coinHuntFolder:FindFirstChild("Coins")
				if not coins or not coins:IsA("Model") then break end

				local meshParts = {}
				for _, item in ipairs(coins:GetDescendants()) do
					if item:IsA("MeshPart") then
						table.insert(meshParts, item)
					end
				end

				for _, mesh in ipairs(meshParts) do
					if not ToggleRunning then break end
					rootPart.CFrame = mesh.CFrame + Vector3.new(0, 2, 0)
					wait(teleportDelay)
				end

			end
		end

		if ToggleRunning then
			task.spawn(teleportToAllCoins)
		end
	end,
})


local Button = Tab:CreateButton({
    Name = "Auto Math",
    Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/DRZ1NK/trdvotes/refs/heads/main/tragic.lua'))()
    end,
})

local TPTab = Window:CreateTab("Teleports", nil)

local Button = TPTab:CreateButton({
   Name = "Spawn",
   Callback = function()
              local Players = game:GetService("Players")
        local player = Players.LocalPlayer

        local targetPosition = Vector3.new(147.1968994140625, -16.649734497070312, -415.9854431152344)

        local function teleportToPosition()
	        local character = player.Character or player.CharacterAdded:Wait()
	        local rootPart = character:WaitForChild("HumanoidRootPart")
	
	        rootPart.CFrame = CFrame.new(targetPosition)
	        print("Teleported to position:", targetPosition)
        end
        teleportToPosition()
   end,
})

local Button = TPTab:CreateButton({
   Name = "Boat",
   Callback = function()
              local Players = game:GetService("Players")
        local player = Players.LocalPlayer

        local targetPosition = Vector3.new(59.50294876098633, -19.051759719848633, -307.87261962890625)

        local function teleportToPosition()
	        local character = player.Character or player.CharacterAdded:Wait()
	        local rootPart = character:WaitForChild("HumanoidRootPart")
	
	        rootPart.CFrame = CFrame.new(targetPosition)
	        print("Teleported to position:", targetPosition)
        end
        teleportToPosition()
   end,
})

local Button = TPTab:CreateButton({
   Name = "Voting",
   Callback = function()
              local Players = game:GetService("Players")
        local player = Players.LocalPlayer

        local targetPosition = Vector3.new(-12.254895210266113, 93.76097869873047, -536.2817993164062)

        local function teleportToPosition()
	        local character = player.Character or player.CharacterAdded:Wait()
	        local rootPart = character:WaitForChild("HumanoidRootPart")
	
	        rootPart.CFrame = CFrame.new(targetPosition)
	        print("Teleported to position:", targetPosition)
        end
        teleportToPosition()
   end,
})

local Button = TPTab:CreateButton({
   Name = "Spectator Island",
   Callback = function()
              local Players = game:GetService("Players")
        local player = Players.LocalPlayer

        local targetPosition = Vector3.new(11.740684509277344, -16.54854393005371, 31.035659790039062)

        local function teleportToPosition()
	        local character = player.Character or player.CharacterAdded:Wait()
	        local rootPart = character:WaitForChild("HumanoidRootPart")
	
	        rootPart.CFrame = CFrame.new(targetPosition)
	        print("Teleported to position:", targetPosition)
        end
        teleportToPosition()
   end,
})

local PlayerTab = Window:CreateTab("Player", nil) -- Title, Image

local Slider = PlayerTab:CreateSlider({
   Name = "Walkspeed",
   Range = {0, 200},
   Increment = 1,
   Suffix = " ",
   CurrentValue = 16,
   Flag = "slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
   end,
})

local Slider = PlayerTab:CreateSlider({
   Name = "JumpPower",
   Range = {0, 200},
   Increment = 10,
   Suffix = " ",
   CurrentValue = 50,
   Flag = "slider2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
   end,
})

local MiscTab = Window:CreateTab("Misc", nil)

local Button = MiscTab:CreateButton({
   Name = "View Votes",
   Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/DRZ1NK/trdvotes/refs/heads/main/main.lua'))()
   end,
})

local Button = MiscTab:CreateButton({
   Name = "Auto Statue",
   Callback = function()
        local Players = game:GetService("Players")
        local player = Players.LocalPlayer
        
        local function teleportModelsToPlayer()
        	local character = player.Character or player.CharacterAdded:Wait()
        	local rootPart = character:WaitForChild("HumanoidRootPart")
        	local idolsFolder = workspace:FindFirstChild("Idols")
        
        	if not idolsFolder then return end
        
        	for _, model in ipairs(idolsFolder:GetChildren()) do
        		if model:IsA("Model") then
        			model:PivotTo(rootPart.CFrame)
        		end
        	end
        end
        
        teleportModelsToPlayer()
   end,
})

local Toggle = MiscTab:CreateToggle({
	Name = "Barriers",
	CurrentValue = false,
	Flag = "invisBarroer",
	Callback = function(Value)
		local ReplicatedStorage = game:GetService("ReplicatedStorage")
		local Workspace = game:GetService("Workspace")

		local glassFolderName = "Glass"
		
		local storedFolder = ReplicatedStorage:FindFirstChild(glassFolderName)
		local activeFolder = Workspace:FindFirstChild(glassFolderName)

		if not storedFolder then
			storedFolder = Instance.new("Folder")
			storedFolder.Name = glassFolderName
			storedFolder.Parent = ReplicatedStorage
		end

		if not activeFolder then
			activeFolder = Instance.new("Folder")
			activeFolder.Name = glassFolderName
			activeFolder.Parent = Workspace
		end

		if Value then
			for _, part in ipairs(activeFolder:GetChildren()) do
				part.Parent = storedFolder
			end
		else
			for _, part in ipairs(storedFolder:GetChildren()) do
				part.Parent = activeFolder
			end
		end
	end,
})

local Toggle = MiscTab:CreateToggle({
	Name = "Walk On Water",
	CurrentValue = false,
	Flag = "LakeCollision",
	Callback = function(Value)
		local model = workspace:FindFirstChild("Map")
		if not model or not model:IsA("Model") then return end

		local campFolder = model:FindFirstChild("Roblox Drama: Camp")
		if not campFolder then return end

		local mapFolder = campFolder:FindFirstChild("Map")
		if not mapFolder then return end

		local lakeFolder = mapFolder:FindFirstChild("Lake")
		if not lakeFolder then return end

		for _, part in ipairs(lakeFolder:GetChildren()) do
			if part:IsA("MeshPart") then
				part.CanCollide = Value
			end
		end
	end,
})
