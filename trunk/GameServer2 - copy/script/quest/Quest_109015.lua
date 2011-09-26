-- 반격 준비

function Quest_109015:OnBegin(Player, NPC)
	this:UpdateVar(0)
end

function Quest_109015:OnObjProgress(Player, ObjectiveID, Trigger)	
	local Field = Player:GetField()	
	local NorthFire = Field:GetNPC(109115)	
	local NpcPos = Math_GetDistancePoint( Player:GetPos(), Player:GetDir(), -200 )		
	
	--GLog( "OnObjProgress\n")
	if (Trigger == true) then
		if (ObjectiveID == 2 and NorthFire:CheckBuff(110036) == false ) then		
			Player:Tip("$$Quest_109094_12")
			NorthFire:GainBuff(110036)
			Field:Spawn( 109030, NpcPos ) 
		--[[elseif (ObjectiveID == 2 and NorthFire:CheckBuff(110036) == false ) then
			Player:Tip("$$Quest_109094_16")
			NorthFire:GainBuff(110036)		
			Field:Spawn( 109030, NpcPos ) --]]
		end
		if (ObjectiveID == 2 and NorthFire:CheckBuff(110036) == true ) then			
			Player:Tip("이미 불이 붙어 있습니다. 잠시 후에 다시 시도하십시오.")
		end
	end
end