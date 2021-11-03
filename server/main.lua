local QBCore = exports['qb-core']:GetCoreObject()
local xSound = exports.xsound

QBCore.Functions.CreateUseableItem("boombox", function(source, item)
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	Player.Functions.RemoveItem('boombox', 1, false)
	
	TriggerClientEvent('qb-boombox:client:placeBoombox', src)
	TriggerClientEvent('QBCore:Notify', src, 'You have just dropped the BoomBox', 'primary')
end)

RegisterNetEvent('qb-boombox:server:pickedup', function(entity)
    local src = source
    xSound:Destroy(-1, tostring(entity))
end)
