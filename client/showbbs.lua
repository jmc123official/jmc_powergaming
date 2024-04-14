ESX = nil
ESX = exports['es_extended']:getSharedObject()

RegisterNetEvent('jmc_powergaming:showbbs')
AddEventHandler('jmc_powergaming:showbbs', function()
    local ped = GetPlayerPed(-1)
    ESX.Streaming.RequestAnimDict("mini@strip_club@backroom@", function()
		TaskPlayAnim(PlayerPedId(), "mini@strip_club@backroom@", "stripper_b_backroom_idle_b", 8.0, -8.0, -1, 0, 0, false, false, false)
	end)

	ESX.SetTimeout(10000, function()
		ClearPedTasks(PlayerPedId())
	end)
end)