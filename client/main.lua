
local NPC ={
	{modelHash = "a_m_m_hasjew_01"  x = -480.81, y = 6266.04, z = 13.63, rotation = 160.65, NetworkSync = true},
	{modelHash = "s_m_y_dockwork_01" ,x = -1475.35, y = -3284.2, z = 13.94, rotation = 141.17, NetworkSync = true}
}

function setupModel(model)
  RequestModel(model)
  while not HasModelLoaded(model) do
    RequestModel(model)
    Wait(0)
  end
  SetModelAsNoLongerNeeded(model)
end

function pedCreation(PedToCreate)

		setupModel(GetHashKey(PedToCreate.modelHash))
		pedCreated = CreatePed(4, PedToCreate.modelHash, PedToCreate.x, PedToCreate.y, PedToCreate.z, PedToCreate.heading, false, false)
		SetEntityAsMissionEntity(pedCreated, true, true)
		--SetPedShootRate(pedCreated,  1000)
		--AddArmourToPed(pedCreated, 100)
		--SetPedAlertness(pedCreated, 0)
		--SetPedAccuracy(pedCreated, 100)
		--SetPedCanSwitchWeapon(pedCreated, true)
		--SetEntityHealth(pedCreated,  200)
		--SetPedFleeAttributes(pedCreated, 0, 0)
		--SetPedCombatAttributes(pedCreated, 46, true)
		--SetPedCombatAbility(pedCreated,  2)
		--SetPedCombatMovement(pedCreated,  0)
		--SetPedCombatRange(pedCreated, 0)
		--SetPedPathAvoidFire(inputPed,  1)
		--SetPedPathCanUseLadders(inputPed,1)
		--SetPedPathCanDropFromHeight(inputPed, 1)
		--SetPedPathPreferToAvoidWater(inputPed, 1)
		SetEntityInvincible(pedCreated, true)
		--GiveWeaponToPed(pedCreated, GetHashKey("weapon_sawnoffshotgun"), 5000, false, false)

end

Citizen.CreateThread(function()
  while true do
    Citizen.Wait(0)
		if (not generalLoaded) then
			if NetworkIsHost() then
				for i=1,#NPC ,1 do
					pedCreation(NPC[i])
					Citizen.Wait(10)
				end
			end
			generalLoaded = true
		end
  end
end)
