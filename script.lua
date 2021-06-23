-- Idk if this works since I haven't tested it

function Tase(Player)

local team = game.Players.LocalPlayer.TeamColor.Name

if game.Players.LocalPlayer.TeamColor.Name == "Bright blue" == nil then
local lastcf = game.Players.LocalPlayer.Character.HumanoidRootPart
workspace.Remote.loadchar:InvokeServer("", BrickColor.new("Bright blue"))
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = lastcf
if Player.TeamColor.Name == "Bright blue" then return end

local RDCH = 
			{
				[1] = 
				{
					["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
					["Distance"] = 0, 
					["Cframe"] = CFrame.new(), 
					["Hit"] = workspace[Player.Name].Torso
				}
			}
      
local taser = game.Players.LocalPlayer.Backpack:FindFirstChild["Taser"]

game.ReplicatedStorage.ShootEvent:FireServer(RDCH, taser)
wotkspace.Remote.loadchar:InvokeServer("", BrickColor.new(team))
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = lastcf
end
end)
