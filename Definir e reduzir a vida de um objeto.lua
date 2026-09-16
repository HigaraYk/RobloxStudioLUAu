-- Este código é colocado em -> StarterPlayer -> StarterPlayerScript  (LocalScript)

-- LocalScript
local RS = game:GetService("ReplicatedStorage") -- Retorna o serviço "ReplicatedStorage"
local Event = RS:WaitForChild("RemoteEvent") -- Espera pela existencia do "RemoteEvent" dentro de ReplicatedStorage

local button = game:GetService("Workspace"):WaitForChild("Part") -- Retorna o serviço do botão que está localizado em "Workspace"

button.ClickDetector.MouseClick:Connect(function()
	Event:FireServer() -- Faz uma ligação com o Script
end)



----------------------------------



-- Este código é colocado em -> ServerScriptService

-- Script
local RS = game:GetService("ReplicatedStorage") -- Retorna o serviço "ReplicatedStorage"
local Event = RS:WaitForChild("RemoteEvent") -- Espera pela existencia do "RemoteEvent" dentro de ReplicatedStorage

local obj = game:GetService("Workspace"):WaitForChild("Part") -- Retorna o serviço do objeto que está localizado em "Workspace" que será modificado


--Caso não exista o atributo de vida no objeto
if not obj:GetAttribute("Vida") then
	obj:SetAttribute("Vida", 100)
end

Event.OnServerEvent:Connect(function(player) -- Ao receber a ligação do LocalScript
	local vida = obj:GetAttribute("Vida")
	if vida > 0 then -- Se vida é maior que 0, então: 
		obj:SetAttribute("Vida", vida - 10) -- Reduz a vida de 10 em 10
		print(player.name.. " Reduziu a vida para: ".. obj:GetAttribute("Vida"))
	else
		obj:Destroy() -- Caso a vida do objeto chegar a 0. O objeto será destruído.
	end
end)

-- Este código é separado em LocalScript e Script para que o objeto seja destruído apenas na visão do jogador que o destruiu. 
