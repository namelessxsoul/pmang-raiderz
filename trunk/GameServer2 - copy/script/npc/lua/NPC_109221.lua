-- ¸ðÄË
--[[
function NPC_109221:OnHitCapsule_1_0(HitInfo)
	if (HitInfo.Damage >= 1) then
		local MaxHP = HitInfo.Victim:GetMaxHP()
		local Limit = tonumber(MaxHP * 0.4)
		local HP = HitInfo.Victim:GetHP()
		local Field = HitInfo.Victim:GetField()
		--GLog1("¸ðÄË ÇÇ°Ý")
		if (HP < Limit) then
			if (Field:GetID() == 1091031) then
				
				HitInfo.Victim:ClearJob()

				HitInfo.Victim:ScriptSelf("NPC_109221_MorkenLast")
				--HitInfo.Victim:SetTimer(1, 5, false)
				
			end
			if (Field:GetID() == 1091041) then
				if (HitInfo.Victim:CheckBuff(110017) == false) then
					

				end
				if (HitInfo.Victim:CheckBuff(110017) == true) then

				end				
			end			
		end
	end
end

function NPC_109221_MorkenLast(Self)
	Self:GainBuff(5000051)
	--Self:DisableCombat()
	Self:Say("$$NPC_109221_36")
	Self:Narration("$$NPC_109221_37")
	Self:ScriptSelf("NPC_109221_MorkenDespawn")
end

function NPC_109221_MorkenRun(Self)
	local Field = Self:GetField()
	local Tian = Field:GetSpawnNPC(109020)
	local Morken = Field:GetSpawnNPC(109221)	
	

end

function NPC_109221_MorkenDespawn(Self)
	local Field = Self:GetField()
	Field:SpawnByID(11)
	Field:SpawnByID(12)	
	Self:Despawn(false)
end

function NPC_109221_MorkenEnd(Self)
	local Field = Self:GetField()	
	local Tian = Field:GetSpawnNPC(109020)
	Field:SpawnByID(20003)	
	Self:Despawn(false)
	Tian:SaveHomePoint()
end

function NPC_109221_Peace(Self)
	local Field = Self:GetField()	
	local Tian = Field:GetSpawnNPC(109020)
	local Morken = Field:GetSpawnNPC(109221)	
	Morken:ChangeAA(AA_NONE)
	Tian:MakePeace()
	Tian:ChangeAA(AA_FACTION)	
end

function NPC_109221:OnTimer(TimerID) 
	if (TimerID == 1) then

	end
end
--]]
