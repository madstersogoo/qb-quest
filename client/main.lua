local NPC_1 = { x = -480.81, y = 6266.04, z = 13.63, rotation = 160.65, NetworkSync = true}
Citizen.CreateThread(function()
  modelHash = GetHashKey("a_m_m_hasjew_01")
  RequestModel(modelHash)
  while not HasModelLoaded(modelHash) do
       Wait(1)
  end
  createNPC_1() 
end)

function createNPC_1()
	created_ped = CreatePed(0, modelHash , NPC_1.x,NPC_1.y,NPC_1.z - 1, NPC_1.rotation, NPC_1.NetworkSync)
	FreezeEntityPosition(created_ped, true)
	SetEntityInvincible(created_ped, true)
	SetBlockingOfNonTemporaryEvents(created_ped, true)
	TaskStartScenarioInPlace(created_ped, "WORLD_HUMAN_COP_IDLES", 0, true)
end

local NPC_2 = { x = -1475.35, y = -3284.2, z = 13.94, rotation = 141.17, NetworkSync = true}
Citizen.CreateThread(function()
  modelHash = GetHashKey("s_m_y_dockwork_01")
  RequestModel(modelHash)
  while not HasModelLoaded(modelHash) do
       Wait(1)
  end
  createNPC_2() 
end)

function createNPC_2()
	created_ped = CreatePed(0, modelHash , NPC_2.x,NPC_2.y,NPC_2.z - 1, NPC_2.rotation, NPC_2.NetworkSync)
	FreezeEntityPosition(created_ped, true)
	SetEntityInvincible(created_ped, true)
	SetBlockingOfNonTemporaryEvents(created_ped, true)
	TaskStartScenarioInPlace(created_ped, "WORLD_HUMAN_COP_IDLES", 0, true)
end