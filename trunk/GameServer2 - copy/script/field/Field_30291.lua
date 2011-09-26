--[[
function Field_30291:OnWeatherChanged(Weather)
	GLog("$$Field_30291_3");
	if (Weather == WEATHER_HEAVY_RAINY) then
		GLog("$$Field_30291_5");
	elseif (Weather == WEATHER_HEAVY_SNOWY) then
		GLog("$$Field_30291_7");
	end
end
--]]




function Field_30291:OnSensorEnter_2(Actor)
	if (AsPlayer(Actor):CheckCondition(30292) == true) then
		this:Spawn(3033, vec3(582.4, -271.8, 33.0)) -- 고드모어 소환
		this:DisableSensor(2) -- 센서 1회용
		this:DespawnByID(3) -- 1층문 사라짐
	end
end


function Field_30291:OnSpawn(SpawnInfo)
	
	
	if (SpawnInfo.NPCID == 3033) then
		
		
		-- 고드모어 순찰
		SpawnInfo.NPC:Shout("$$Field_30291_31")
		SpawnInfo.NPC:Patrol({2,3,4}, PT_ONCE)
	
	end

end


function Field_30291:OnTimer(TimerID)
	if (TimerID == 3029) then
		this:DespawnByID(5)
	end
end	
