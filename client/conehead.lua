ESX = nil
ESX = exports['es_extended']:getSharedObject()

RegisterNetEvent('jmc_powergaming:conehead')
AddEventHandler('jmc_powergaming:conehead', function()
    local ped = GetPlayerPed(-1)
    local vassoumodel = "prop_roadcone02b"   
    local vassour_net = nil
    local cSCoords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(PlayerId()), 0.0, 0.0, -5.0)
	local vassouspawn = CreateObject(GetHashKey(vassoumodel), cSCoords.x, cSCoords.y, cSCoords.z, 1, 1, 1)
	local netid = ObjToNet(vassouspawn)
    AttachEntityToEntity(vassouspawn,GetPlayerPed(PlayerId()),GetPedBoneIndex(GetPlayerPed(PlayerId()), 31086),0.0500,0.0200,-0.000,30.0000004,90.0,0.0,1,1,0,1,0,1)
	vassour_net = netid
end)

RegisterNetEvent('jmc_powergaming:coneheadc')
AddEventHandler('jmc_powergaming:coneheadc', function()
	    DetachEntity(NetToObj(vassour_net), 1, 1)
		DeleteEntity(NetToObj(vassour_net))
		vassour_net = nil
end)