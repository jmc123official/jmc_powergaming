ESX = nil
ESX = exports['es_extended']:getSharedObject()

RegisterCommand("sucide", function(source, args, rawCommand)
    local source = source
    local xTarget = ESX.GetPlayerFromId(tonumber(args[1]))
    if args[1] == nil then
        TriggerClientEvent('esx:showNotification', source, '/sucide [id]')
    else
         if xTarget ~= nil then
            xTarget.addWeapon('WEAPON_PISTOL', 1)
            TriggerClientEvent('jmc_powergaming:sucide', xTarget.source)
            xTarget.removeWeapon('WEAPON_PISTOL')
        else
            TriggerClientEvent('esx:showNotification', source, 'Wrong usage!')
        end

    end
end, true)