ESX = nil
ESX = exports['es_extended']:getSharedObject()

RegisterNetEvent('jmc_powergaming:burn')
AddEventHandler('jmc_powergaming:burn', function()
    local ped = GetPlayerPed(-1)

    StartEntityFire(ped)
end)