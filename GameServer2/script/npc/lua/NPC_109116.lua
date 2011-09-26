-- 전사한 마리옹 (pawn)

function NPC_109116:OnSpawn(SpawnInfo)
	this:GainBuff(110025)
	this:SetDecayTime(0)
end
--[[
function NPC_109116:OnTryHit(Actor, TalentID)
	if (TalentID == 140011) then
		this:GainBuff(110024)
	end
end
--]]


