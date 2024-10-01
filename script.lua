local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Script by Swordik | ⚡Building Ship", HidePremium = false, IntroText = "Script by Swordik for Building Ship", SaveConfig = true, IntroEnabled = true, ConfigFolder = "Scripts"})

local Humanoid = game.Players.LocalPlayer.Character.Humanoid
local HumanoidRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart

function AutoFarm()
while _G.AutoFarm == true do
local a, b, c, d, e, f, g, h, i = 0, 0, 0, 0, 0, 0, 0, 0, 0
repeat a = a + 1
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage1.DarknessPart.CFrame
wait(0.01)
until a == 10
repeat b = b + 1
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage2.DarknessPart.CFrame
wait(0.01)
until b == 10
repeat c = c + 1
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage3.DarknessPart.CFrame
wait(0.01)
until c == 10
repeat d = d + 1
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage4.DarknessPart.CFrame
wait(0.01)
until d == 10
repeat e = e + 1
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage5.DarknessPart.CFrame
wait(0.01)
until e == 10
repeat f = f + 1
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage6.DarknessPart.CFrame
wait(0.01)
until f == 10
repeat g = g + 1
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage7.DarknessPart.CFrame
wait(0.01)
until g == 10
repeat h = h + 1
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage8.DarknessPart.CFrame
wait(0.01)
until h == 10
repeat i = i + 1
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage9.DarknessPart.CFrame
wait(0.01)
until i == 10
wait(9)
end
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
