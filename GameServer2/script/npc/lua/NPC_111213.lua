-- 슈나크의 날개

function NPC_111213:OnHitCapsule_1_0(HitInfo)
	if (HitInfo.Attacker:IsPlayer() == true) then
		if (AsPlayer(HitInfo.Attacker):CheckCondition(1110261) == true) or (AsPlayer(HitInfo.Attacker):CheckCondition(1110411) == true) then
			if (HitInfo.Damage >= 0) then
				local User = HitInfo.Attacker
				
				User:GainBuff(110038)				
				User:GainBuff(110041)
			end
		end
		if (AsPlayer(HitInfo.Attacker):CheckCondition(1110261) == false) then
			if (HitInfo.Damage >= 0) then
				local User = HitInfo.Attacker
				
				AsPlayer(User):Tip("공격이 통하지 않습니다.")
				User:GainBuff(110041)
			end
		end
	end
end

