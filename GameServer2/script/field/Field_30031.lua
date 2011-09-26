-- 메를린의 집

function Field_30031:IsReadyToSpawnBoss(this)
	if (this:GetNPCCount(3056) > 0 or this:GetNPCCount(3057) > 0) then
		return false
	end
	return true
end

function Field_30031:SpawnBoss(this)
	this:EnableSensor(2)
end

function Field_30031:OnSensorEnter_2(Actor)
	this:Spawn(3058, vec3(-104.4,  -488, 30))
	this:DisableSensor(2)
end

function Field_30031:OnSpawn(SpawnInfo)
	if (SpawnInfo.NPCID == 3058) then
		SpawnInfo.NPC:Narration("$$Field_30031_21")
	elseif (SpawnInfo.NPCID == 3057) then
		SpawnInfo.NPC:Narration("$$Field_30031_23")
	end
end

function Field_30031:OnDie(DespawnInfo)
	-- GLog("DespawnInfo.SpawnID = "..DespawnInfo.SpawnID.."\n")

	if (DespawnInfo.NPCID == 3057) then
		GLog("DespawnInfo.NPCID = "..DespawnInfo.NPCID.."\n")

		if (self:IsReadyToSpawnBoss(this) == true) then
			self:SpawnBoss(this)
		end

	--[[elseif (DespawnInfo.NPCID == 3058) then
		GLog("DespawnInfo.NPCID = "..DespawnInfo.NPCID.."\n")
		DespawnInfo.NPC:Narration("$$Field_30031_39") --]]
	end
end
