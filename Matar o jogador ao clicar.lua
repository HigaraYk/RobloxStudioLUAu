-- Este script será colocado no objeto ao qual você quer que te mate

-- O objeto deve possuir um 'click detector'
local part = script.Parent 

part.ClickDetector.MouseClick:Connect(function(Player) -- Quando um 'Player' clicar no objeto
	print(Player)
	local char = Player.Character or Player.CharacterAdded:Wait() 
	local hum = char:WaitForChild("Humanoid")
	hum.Health = 0 
end)

