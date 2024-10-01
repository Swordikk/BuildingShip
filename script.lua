local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Script by Swordik | ⚡Building Ship", HidePremium = false, IntroText = "Script by Swordik for Building Ship", SaveConfig = true, IntroEnabled = true, ConfigFolder = "Scripts"})

local Humanoid = game.Players.LocalPlayer.Character.Humanoid
local HumanoidRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart 

local Part1 = Instance.new("Part", game:GetService("Workspace"))
Part1.Name = "Block"
Part1.Anchored = true
Part1.Transparency = 0
Part1.Size = Vector3.new(2, 1, 2)
Part1.CanCollide = true
Part1.Position = Vector3.new(-51.565643310546875, 63.00004577636719, 1369.090087890625)

local Part2 = Instance.new("Part", game:GetService("Workspace"))
Part2.Name = "Block"
Part2.Anchored = true
Part2.Transparency = 0
Part2.Size = Vector3.new(2, 1, 2)
Part2.CanCollide = true
Part2.Position = Vector3.new(-51.565643310546875, 63.00004577636719, 2139.090087890625)

local Part3= Instance.new("Part", game:GetService("Workspace"))
Part3.Name = "Block"
Part3.Anchored = true
Part3.Transparency = 0
Part3.Size = Vector3.new(2, 1, 2)
Part3.CanCollide = true
Part3.Position = Vector3.new(-51.565643310546875, 63.00004577636719, 2909.090087890625)

local Part4 = Instance.new("Part", game:GetService("Workspace"))
Part4.Name = "Block"
Part4.Anchored = true
Part4.Transparency = 0
Part4.Size = Vector3.new(2, 1, 2)
Part4.CanCollide = true
Part4.Position = Vector3.new(-51.565643310546875, 63.00004577636719, 3679.090087890625)

local Part5 = Instance.new("Part", game:GetService("Workspace"))
Part5.Name = "Block"
Part5.Anchored = true
Part5.Transparency = 0
Part5.Size = Vector3.new(2, 1, 2)
Part5.CanCollide = true
Part5.Position = Vector3.new(-51.565643310546875, 63.00004577636719, 4449.08984375)

local Part6 = Instance.new("Part", game:GetService("Workspace"))
Part6.Name = "Block"
Part6.Anchored = true
Part6.Transparency = 0
Part6.Size = Vector3.new(2, 1, 2)
Part6.CanCollide = true
Part6.Position = Vector3.new(-51.565643310546875, 63.00004577636719, 5219.08984375)

local Part7 = Instance.new("Part", game:GetService("Workspace"))
Part7.Name = "Block"
Part7.Anchored = true
Part7.Transparency = 0
Part7.Size = Vector3.new(2, 1, 2)
Part7.CanCollide = true
Part7.Position = Vector3.new(-51.565643310546875, 63.00004577636719, 5989.08984375)

local Part8 = Instance.new("Part", game:GetService("Workspace"))
Part8.Name = "Block"
Part8.Anchored = true
Part8.Transparency = 0
Part8.Size = Vector3.new(2, 1, 2)
Part8.CanCollide = true
Part8.Position = Vector3.new(-51.565643310546875, 63.00004577636719, 6759.08984375)

local Part9 = Instance.new("Part", game:GetService("Workspace"))
Part9.Name = "Block"
Part9.Anchored = true
Part9.Transparency = 0
Part9.Size = Vector3.new(2, 1, 2)
Part9.CanCollide = true
Part9.Position = Vector3.new(-51.565643310546875, 63.00004577636719, 7529.08984375)
	
local Tab = Window:MakeTab({
	Name = "Farming",
	Icon = "rbxassetid://4483364237",
	PremiumOnly = false
})

Tab:AddToggle({
	Name = "Auto Farm",
	Default = false,
	Callback = function(Value)
	while Value == true do
        HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage1.DarknessPart.CFrame
        wait(2.2)
        HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage2.DarknessPart.CFrame
        wait(2.2)
        HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage3.DarknessPart.CFrame
        wait(2.2)
        HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage4.DarknessPart.CFrame
        wait(2.2)
        HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage5.DarknessPart.CFrame
        wait(2.2)
        HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage6.DarknessPart.CFrame
        wait(2.2)
        HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage7.DarknessPart.CFrame
        wait(2.2)
        HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage8.DarknessPart.CFrame
        wait(2.2)
        HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage9.DarknessPart.CFrame
        wait(2.2)
        HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage10.DarknessPart.CFrame
        wait(2.2)
        HumanoidRootPart.CFrame = game.Workspace.BoatStages.OtherStager.ElectronicStage.DarknessPart.CFrame
        wait(10)
	end
end
})

local Tab = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4483362748",
	PremiumOnly = false
})

Tab:AddToggle({
	Name = "Anti-AFK",
	Default = false,
	Callback = function(Value)
		if Value == true then
			while not game:IsLoaded() do wait() end
			repeat wait() until game.Players.LocalPlayer.Character
			Players = game:GetService("Players")
			local GC = getconnections or get_signal_cons
			if GC then
				for i,v in pairs(GC(Players.LocalPlayer.Idled)) do
					if v["Disable"] then v["Disable"](v)
					elseif v["Disconnect"] then v["Disconnect"](v)
					end
				end
			else
			Players.LocalPlayer.Idled:Connect(function()
				VirtualUser:CaptureController()
				VirtualUser:ClickButton2(Vector2.new())
  				end)
			end
		end
	end	
})
