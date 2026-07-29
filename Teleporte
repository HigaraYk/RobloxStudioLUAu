-- Este Script deve estar na 'plataforma1'


local Plataforma1 = script.Parent -- Objeto selecionado para teleportar o jogador
local Plataforma2 = workspace.Plataforma2 -- Posição final do teleporte

Plataforma1.Touched:Connect(function(player)
	if player.Parent:FindFirstChild("Humanoid") then -- Se um jogador tocar a 'Plataforma1' Então:
		local humano = player.Parent.HumanoidRootPart
		humano.CFrame = CFrame.new(Plataforma2.Position) -- Ao tocar na 'Plataforma 1' será teleportado para 'Plataforma2'
	end
end)
