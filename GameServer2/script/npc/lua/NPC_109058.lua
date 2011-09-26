-- 돛대 코볼트 선원

function NPC_109058:OnSpawn(SpawnInfo)
	this:SetTimer(1, 100, true)
end

function NPC_109058:OnTimer(TimerID)
	this:ClearJob()
	if (TimerID == 1) then
		local dice = math.random(0,2)
		if( dice == 0) then 
			this:Balloon("$$NPC_109058_12")
		end
		if( dice == 1) then 
			this:Balloon("$$NPC_109058_15")
		end
		if( dice == 2) then 
			this:Balloon("$$NPC_109058_18")
		end
	end
end



