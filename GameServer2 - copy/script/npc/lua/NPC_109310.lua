-- 제일스 (부러진 돛대)
--[[
function NPC_109310:OnHitCapsule_1_0(HitInfo)
	if (HitInfo.Damage >= 1) then
		local Field = HitInfo.Victim:GetField()
		local Tian = Field:GetSpawnNPC(109020)
		
		HitInfo.Victim:ClearJob()
		HitInfo.Victim:RemoveBuff(110020)
		HitInfo.Victim:DisableCombat()
		HitInfo.Victim:MakePeace()
		HitInfo.Victim:SetAlwaysRun(true)
		HitInfo.Victim:MoveToMarker(5)
		HitInfo.Victim:SaveHomePoint()
		HitInfo.Victim:FaceTo(HitInfo.Attacker)
		HitInfo.Victim:NonDelaySay("$$NPC_109310_18") -- 네놈, 방해를 하다니...	
		Tian:RemoveBuff(110018)
		Tian:Narration("$$NPC_109310_20") -- 티안이 제일스의 지배로부터 벗어났습니다.
		Tian:Say("$$NPC_109310_21") -- 하아... 살았다.
		Tian:FaceTo(HitInfo.Attacker)
		Tian:Say("$$NPC_109310_23") -- 도와줘서 고마워.
		Tian:Wait(2)
		Tian:MoveToMarker(4)
		--Tian:Say("$$NPC_109310_26") -- 난 좀 쉬어야겠어. 어서 가서 놈을 쫓아.
		Tian:ScriptSelf("NPC_109310_JailsWarp")

	end
end

function NPC_109310_JailsWarp(Self)
	local Field = Self:GetField()
	Field:EnableSensor(12)
end
--]]
