ESX = nil
ESX = exports['es_extended']:getSharedObject()

RegisterNetEvent('jmc_powergaming:sucide')
AddEventHandler('jmc_powergaming:sucide', function()
    local playerPed = GetPlayerPed(-1)
    if not HasAnimDictLoaded('mp_suicide') then
        RequestAnimDict('mp_suicide')
        
        while not HasAnimDictLoaded('mp_suicide') do
            Wait(1)
        end
    end
    foundWeapon = GetHashKey('WEAPON_PISTOL')


    SetCurrentPedWeapon(playerPed, GetHashKey('WEAPON_PISTOL'), true)
    Citizen.Wait(500)
    TaskPlayAnim(playerPed, "mp_suicide", "pistol", 8.0, 1.0, -1, 2, 0, 0, 0, 0 )

    Wait(750)

    SetPedShootsAtCoord(playerPed, 0.0, 0.0, 0.0, 0)
    SetEntityHealth(playerPed, 0)
end)