
-- unarmed/frozen ped for interaction
local NPC_Basic = {
	{modelHash = "a_m_m_hasjew_01"  ,x = -480.81, y = 6266.04, z = 13.63, rotation = 160.65, NetworkSync = true},
	{modelHash = "s_m_y_dockwork_01" ,x = -1475.35, y = -3284.2, z = 13.94, rotation = 141.17, NetworkSync = true},
}

-- mass rp ped too fight
local NPC_Armed = {
	-- families
	{modelHash = "g_f_y_families_01" ,teams = "GANG_1", weapon = "weapon_sawnoffshotgun", x = -131.05, y = -1556.8, z = 34.27, rotation = 34.83, NetworkSync = true},
	{modelHash = "g_m_y_famca_01" ,teams = "GANG_1", weapon = "weapon_sawnoffshotgun", x = -130.35, y = -1556.09, z = 34.29, rotation = 93.28, NetworkSync = true},
	{modelHash = "g_m_y_famca_01" ,teams = "GANG_1", weapon = "weapon_sawnoffshotgun", x = -174.54, y = -1563.88, z = 35.36, rotation = 288.11, NetworkSync = true},
	{modelHash = "g_m_y_famca_01" ,teams = "GANG_1", weapon = "weapon_sawnoffshotgun", x = -174.53, y = -1562.97, z = 35.36, rotation = 243.34, NetworkSync = true},
	{modelHash = "g_m_y_famdnf_01" ,teams = "GANG_1", weapon = "weapon_sawnoffshotgun", x = -173.72, y = -1562.3, z = 35.36, rotation = 210.45, NetworkSync = true},
	{modelHash = "g_m_y_famdnf_01" ,teams = "GANG_1", weapon = "weapon_sawnoffshotgun", x = -132.07, y = -1556.67, z = 34.26, rotation = 320.1, NetworkSync = true},
	-- cop
	{modelHash = "s_m_y_cop_01" ,teams = "COP", weapon = "weapon_combatpistol", x = -438.68, y = 6017.7, z = 31.49, rotation = 337.41, NetworkSync = true},
	{modelHash = "s_m_y_cop_01" ,teams = "COP", weapon = "weapon_combatpistol", x = -427.12, y = 6003.27, z = 31.49, rotation = 229.4, NetworkSync = true},
	{modelHash = "s_m_y_cop_01" ,teams = "COP", weapon = "weapon_combatpistol", x = -426.38, y = 6002.48, z = 31.49, rotation = 320.1, NetworkSync = true},
}

TriggerEvent("qb-SpawnPed:client:Spawn_Basic", NPC_Basic)

TriggerEvent("qb-SpawnPed:client:Spawn_Armed", NPC_Armed)