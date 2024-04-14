ESX = nil
ESX = exports['es_extended']:getSharedObject()
RegisterNetEvent('jmc_powergaming:slap')
AddEventHandler('jmc_powergaming:slap', function()
    local ped = GetPlayerPed(-1)

    ApplyForceToEntity(ped, 1, 9500.0, 3.0, 7100.0, 1.0, 0.0, 0.0, 1, false, true, false, false)
end)