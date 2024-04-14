ESX = nil
ESX = exports['es_extended']:getSharedObject()

RegisterCommand("drunk", function(source, args, rawCommand)
    local source = source
    local xTarget = ESX.GetPlayerFromId(tonumber(args[1]))
    if args[1] == nil then
        TriggerClientEvent('esx:showNotification', source, '/drunk [id]')
    else
        if xTarget ~= nil then
           TriggerClientEvent('esx_status:add', xTarget.source, 'drunk', 350000)
        else
            TriggerClientEvent('esx:showNotification', source, 'Wrong usage!')
        end

    end
end, true)