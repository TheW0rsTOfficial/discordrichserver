RegisterServerEvent('checkplayeronserver')
AddEventHandler('checkplayeronserver',function()
    local playeron = {}
		local players = GetPlayers()
		for i, player in pairs(players) do
			local player = tonumber(player)
			
				table.insert(playeron, player)
      end
    TriggerClientEvent('checkrichpresence:client',-1,l)
end)
AddEventHandler('onResourceStart',function(resname)
        if GetCurrentResourceName() == 'theworst_discord' then
            TriggerEvent('checkplayer:client')
        elseif GetCurrentResourceName() == 'theworst_richpresence' then
            TriggerEvent('checkplayer:client')
        else
            print("Change the resource name with theworst_richpresence or theworst_discord otherwise it won't work")
        end
end)
