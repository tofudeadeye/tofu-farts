RegisterNetEvent('tofu-farts:server:doFart')
AddEventHandler('tofu-farts:server:doFart', function(player, fartSound)
    -- TODO: auth/admin permission check
    TriggerClientEvent('tofu-farts:client:doFart', player, fartSound)
end)
