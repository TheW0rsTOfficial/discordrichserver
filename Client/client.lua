Citizen.CreateThread(function ()
    while true do
        SetDiscordAppId(TheWorst.Discord.IdBot)
		SetDiscordRichPresenceAsset(TheWorst.Discord.LAssetImage)
        SetDiscordRichPresenceAssetText(TheWorst.Discord.LAssetText)
        SetDiscordRichPresenceAssetSmall(TheWorst.Discord.SAssetImage)
        SetDiscordRichPresenceAssetSmallText(TheWorst.Discord.SAssetText)
        if TheWorst.Discord.ButtonActive then
        SetDiscordRichPresenceAction(0, TheWorst.Discord.ActionButtonName1, TheWorst.Discord.ActionDescriptionName1)
        SetDiscordRichPresenceAction(1, TheWorst.Discord.ActionButtonName2, TheWorst.Discord.ActionDescriptionName2)
        end
		Citizen.Wait(TheWorst.Discord.Wait)
    end
end)

Citizen.CreateThread(function ()
    while true do
        Citizen.Wait(TheWorst.Discord.CheckWait)
        TriggerServerEvent('checkplayeronserver')
    end
end)

RegisterNetEvent('checkplayer:client')
AddEventHandler('checkplayer:client',function(playeron)
    SetRichPresence(GetPlayerName(PlayerId()) .. " - ".. #playeron .. "/"..TheWorst.Discord.SlotFivem)
end)
