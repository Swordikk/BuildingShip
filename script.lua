local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Script by Swordik | ⚡Building Ship", HidePremium = false, IntroText = "Script by Swordik for Building Ship", SaveConfig = true, IntroEnabled = true, ConfigFolder = "Scripts"})

local Humanoid = game.Players.LocalPlayer.Character.Humanoid
local HumanoidRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart

function AutoFarm()
    local Part = Instance.new("Part", game:GetService("Workspace"))
	Part.Name = "Block"
	Part.Anchored = true
	Part.Transparency = 0
	Part.Size = Vector3.new(2, 1, 2)
	Part.CanCollide = true
	Part.Position = game.Workspace.BoatStages.NormalStages.CaveStage1.DarknessPart.CFrame
	HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage1.DarknessPart.CFrame
    --[[while _G.AutoFarm == true do
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage1.DarknessPart.CFrame
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage2.DarknessPart.CFrame
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage3.DarknessPart.CFrame
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage4.DarknessPart.CFrame
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage5.DarknessPart.CFrame
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage6.DarknessPart.CFrame
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage7.DarknessPart.CFrame
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage8.DarknessPart.CFrame
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage9.DarknessPart.CFrame
    end--]]
end
	
local Tab = Window:MakeTab({
	Name = "Farming",
	Icon = "rbxassetid://4483364237",
	PremiumOnly = false
})

Tab:AddToggle({
	Name = "Auto Farm",
	Default = false,
	Callback = function(Value)
		_G.AutoFarm = Value
		AutoFarm()
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
