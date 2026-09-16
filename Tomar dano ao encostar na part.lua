-- Este script será colocado no objeto ao qual você quer que te mate

local part = script.Parent 

part.Touched:Connect(function(hit) -- Ao tocar no objeto
	if hit.Parent:FindFirstChild("Humanoid") then
		local char = hit.Parent
		local hum = char.Humanoid
		hum:TakeDamage(100)
	end
end)


--[Verificar a existencia do jogador] -- Parte lógica


local part = script.Parent  -- Script dentro de part

part.Touched:Connect(function(hit)
	if hit.Parent:FindFirstChild("Humanoid") then
		local char = hit.Parent
		local player = game.Players:GetPlayerFromCharacter(char)
		if player then
			print(player.Name)
		end
	end
end)

