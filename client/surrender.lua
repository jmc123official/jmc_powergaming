ESX = nil
ESX = exports['es_extended']:getSharedObject()

RegisterNetEvent('jmc_powergaming:surrender')
AddEventHandler('jmc_powergaming:surrender', function()
    local ped = GetPlayerPed(-1)
    ESX.Streaming.RequestAnimDict("random@arrests@busted", function()
		TaskPlayAnim(PlayerPedId(), "random@arrests@busted", "idle_a", 8.0, -8.0, 50000, 0, 0, false, false, false)

	end)
end)