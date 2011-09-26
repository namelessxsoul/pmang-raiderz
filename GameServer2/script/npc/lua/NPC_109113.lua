-- 전사한 에보스

function NPC_109113:OnSpawn(SpawnInfo)
	this:GainBuff(110025)
	this:SetDecayTime(0)
end
--[[
function NPC_109113:OnTryHit(Actor, TalentID)
	if (TalentID == 140011) then
		this:GainBuff(110024)
	end
end
--]]



