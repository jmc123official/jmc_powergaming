ESX = nil
ESX = exports['es_extended']:getSharedObject()

RegisterNetEvent('jmc_powergaming:hump')
AddEventHandler('jmc_powergaming:hump', function()
    local ped = GetPlayerPed(-1)
    local vassoumodel = "prop_mr_raspberry_01"
    local vassour_net = nil
    local cSCoords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(PlayerId()), 0.0, 0.0, -5.0)
	local vassouspawn = CreateObject(GetHashKey(vassoumodel), cSCoords.x, cSCoords.y, cSCoords.z, 1, 1, 1)
	local netid = ObjToNet(vassouspawn)
    ESX.Streaming.RequestAnimDict("timetable@trevor@skull_loving_bear", function()
		TaskPlayAnim(PlayerPedId(), "timetable@trevor@skull_loving_bear", "skull_loving_bear", 8.0, -8.0, -1, 0, 0, false, false, false)
		AttachEntityToEntity(vassouspawn,GetPlayerPed(PlayerId()),GetPedBoneIndex(GetPlayerPed(PlayerId()), 28422),-0.005,0.0,0.0,360.0,360.0,0.0,1,1,0,1,0,1)
		vassour_net = netid
	end)

	    DetachEntity(NetToObj(vassour_net), 1, 1)
		DeleteEntity(NetToObj(vassour_net))
		vassour_net = nil
		ClearPedTasks(PlayerPedId())
end)

RegisterNetEvent('jmc_powergaming:humpc')
AddEventHandler('jmc_powergaming:humpc', function()
    local ped = GetPlayerPed(-1)
    DetachEntity(NetToObj(vassour_net), 1, 1)
	DeleteEntity(NetToObj(vassour_net))
	vassour_net = nil
	ClearPedTasks(PlayerPedId())
end)