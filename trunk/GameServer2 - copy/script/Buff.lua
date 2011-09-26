-- Buff

function Buff_110022:OnGain(Caster, Owner)
	if (Owner:IsPlayer() == true) then
		--AsPlayer(Owner):GateToMarker(102, 2)
		AsPlayer(Owner):Narration("$$BUFF_110022_1") -- 당신은 의식을 잃었습니다.
	end
end
--[[
function Buff_110023:OnGain(Caster, Owner)
	if (Owner:IsNPC() == true) then
		if (AsNPC(Owner):GetID() == 109205) then

			local SpawnPos = Owner:GetPos()
			local Field = Owner:GetField()
			AsNPC(Owner):Despawn(true)
			local SpawnNpc = Field:Spawn( 109223, SpawnPos )
			SpawnNpc:FaceTo( Caster )

		end
		if (AsNPC(Owner):GetID() == 109206 ) then

			local SpawnPos = Owner:GetPos()
			local Field = Owner:GetField()
			AsNPC(Owner):Despawn(true)
			local SpawnNpc = Field:Spawn( 109224, SpawnPos )
			SpawnNpc:FaceTo( Caster )

		end
		if (AsNPC(Owner):GetID() == 109320) then

			local SpawnPos = Owner:GetPos()
			local Field = Owner:GetField()
			AsNPC(Owner):Despawn(true)
			local SpawnNpc = Field:Spawn( 109225, SpawnPos )
			SpawnNpc:FaceTo( Caster )

		end
		if (AsNPC(Owner):GetID() == 109321) then

			local SpawnPos = Owner:GetPos()
			local Field = Owner:GetField()
			AsNPC(Owner):Despawn(true)
			local SpawnNpc = Field:Spawn( 109226, SpawnPos )
			SpawnNpc:FaceTo( Caster )

		end
	end
end
--]]
function Buff_110027:OnGain(Caster, Owner)  -- 까르엔의 축복 버프.
	if (Owner:IsPlayer() == false) then
		Owner:RemoveBuff(110027)
	end
end

function Buff_110028:OnLost(Caster, Owner)
	if (AsNPC(Owner):GetID() == 102128) then
		AsNPC(Owner):EnableInteraction()
	end
end

function Buff_110039:OnGain(Caster, Owner)  -- 슈나크의 날개 공격하는 부분(어떻게 처리해야 하나)
	if (Owner:IsPlayer() == true) then
		if (AsPlayer(Owner):CheckCondition(1110261) == true) then
			AsPlayer(Owner):UpdateQuestVar(111026, 3)
			AsPlayer(Owner):Tip("$$BUFF_110039_1") -- "이런 식으론 가망이 없어 보입니다. 헤르온느에게 보고하십시오."
		end
		if (AsPlayer(Owner):CheckCondition(1110261) == false) and (AsPlayer(Owner):CheckCondition(1110411) == true) then
			local Field = Owner:GetField()
			local Pos = Owner:GetPos()		
			Field:SpawnLimited(111303, Pos, 60)
			AsPlayer(Owner):Tip("$$BUFF_110039_2") -- "방금 전의 충격으로 숨겨져있던 금속판이 떨어집니다!"
		end		
	end
end

function Buff_110041:OnGain(Caster, Owner)  -- 슈나크의 날개 공격하는 부분(고대의 유물)
	if (Owner:IsPlayer() == true) then
		local Count = tonumber(AsPlayer(Owner):GetQuestVar(111041))
		Count = Count +1
		AsPlayer(Owner):UpdateQuestVar(111041, Count)
	end
end
--[[
function Buff_130046:OnGain(Owner) -- TEST용 
	if (Owner:IsPlayer() == true) then
		AsPlayer(Owner):Tip("$$BUFF_130046_1")
	end
end

function Buff_130046:OnExpired(Owner)
	if (Owner:IsPlayer() == true) then
		AsPlayer(Owner):Tip("$$BUFF_130046_2")
	end
end
--]]
-- 성녀 보호막 해제
function Buff_40770:OnLost( Caster, Owner )
--	GLog("Buff_40770:OnLost")
	if not Owner:IsNPC() then return end
	local ThisNPC = AsNPC(Owner)
--	ThisNPC:SayNow("Buff_40770:OnLost")
	if ThisNPC:GetCurrentTalent() == NPC_501003.TALENT_BreakShield2 then return end
	ThisNPC:ClearJob()
	ThisNPC:UseTalentSelf( NPC_501003.TALENT_BreakShield1 )
end
--function Buff_40770:OnExpired ( Caster, Owner )
--	GLog("Buff_40770:OnExpired")
--end

function Buff_40771:OnLost( Caster, Owner )
--	GLog("Buff_40771:OnLost")
	if not Owner:IsNPC() then return end
	local ThisNPC = AsNPC(Owner)
--	ThisNPC:SayNow("Buff_40771:OnLost")
	if ThisNPC:GetCurrentTalent() == NPC_501003.TALENT_BreakShield2 then return end
	ThisNPC:ClearJob()
	ThisNPC:UseTalentSelf( NPC_501003.TALENT_BreakShield1 )
end

function Buff_40183:OnExpired( Caster, Owner ) -- 시선 끌기
	AsPlayer(Owner):UpdateQuestVar(10900001, 1)
	AsPlayer(Owner):GateToMarker(109, 1)
	AsPlayer(Owner):BindSoul(4)
end
