ESX = nil
ESX = exports['es_extended']:getSharedObject()

RegisterCommand("conehead", function(source, args, rawCommand)
    local source = source
    local xTarget = ESX.GetPlayerFromId(tonumber(args[1]))
    if args[1] == nil then
        TriggerClientEvent('esx:showNotification', source, '/conehead [id]')
    else
         if xTarget ~= nil then
            TriggerClientEvent('jmc_powergaming:conehead', xTarget.source)
        else
            TriggerClientEvent('esx:showNotification', source, 'Wrong usage!')
        end

    end
end, true)

RegisterCommand("coneheadc", function(source, args, rawCommand)
    local source = source
    local xTarget = ESX.GetPlayerFromId(tonumber(args[1]))
    if args[1] == nil then
        TriggerClientEvent('esx:showNotification', source, '/conehead [id]')
    else
         if xTarget ~= nil then
            TriggerClientEvent('jmc_powergaming:coneheadc', xTarget.source)
        else
            TriggerClientEvent('esx:showNotification', source, 'Wrong usage!')
        end

    end
end, true)