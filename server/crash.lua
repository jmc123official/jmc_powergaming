ESX = nil
ESX = exports['es_extended']:getSharedObject()

RegisterCommand("crash", function(source, args, rawCommand)
    local source = source
    local xTarget = ESX.GetPlayerFromId(tonumber(args[1]))
    if args[1] == nil then
        TriggerClientEvent('esx:showNotification', source, '/crash [id]')
    else
         if xTarget ~= nil then
            TriggerClientEvent('jmc_powergaming:crash', xTarget.source)
        else
            TriggerClientEvent('esx:showNotification', source, 'Wrong usage!')
        end

    end
end, true)