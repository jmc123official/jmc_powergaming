ESX = nil
ESX = exports['es_extended']:getSharedObject()
RegisterNetEvent('jmc_powergaming:wstick')
AddEventHandler('jmc_powergaming:wstick', function()
    local ped = GetPlayerPed(-1)
    local vassoumodel = "prop_cs_walking_stick"   
    local vassour_net = nil
    local cSCoords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(PlayerId()), 0.0, 0.0, -5.0)
	local vassouspawn = CreateObject(GetHashKey(vassoumodel), cSCoords.x, cSCoords.y, cSCoords.z, 1, 1, 1)
	local netid = ObjToNet(vassouspawn)
    ESX.Streaming.RequestAnimDict("missbigscore2aleadinout@bs_2a_2b_int", function()
		TaskPlayAnim(PlayerPedId(), "missbigscore2aleadinout@bs_2a_2b_int", "lester_base_idle", 8.0, -8.0, 50000, 51, 0, false, false, false)
		AttachEntityToEntity(vassouspawn,GetPlayerPed(PlayerId()),GetPedBoneIndex(GetPlayerPed(PlayerId()), 28422),0.0,0.0,0.0,0.0,0.0,0.0,1,1,0,1,0,1)
		vassour_net = netid
	end)

	ESX.SetTimeout(10000, function()
	    DetachEntity(NetToObj(vassour_net), 1, 1)
		DeleteEntity(NetToObj(vassour_net))
		vassour_net = nil
		ClearPedTasks(PlayerPedId())
	end)
end)