--[[
	f0101.lua
	
	Riode
	Script by Joongpil Cho(Venister)
]]--

-- 건강 검진 - 마력 단층 촬영
function Field_101:OnSensorInteract_101011(Player) -- 마법진(여기서 아이템 사용하면..인가?)
	if Player:CheckCondition(1010111) == true then
		Player:UpdateQuestVar(101011, 1)
	end
end

-- 101017 가장 급한 곳은?
function Field_101:OnSensorTalent_1010171(Actor, TalentID) 
	if(TalentID == 140020 ) then
		--Actor:Narration("테테테")	
		Actor:UpdateQuestVar(101017, 1)
	end
end

function Field_101:OnSensorTalent_1010172(Actor, TalentID) 
	if(TalentID == 140020 ) then
		--Actor:Narration("테테테")	
		Actor:UpdateQuestVar(101017, 2)
	end
end

function Field_101:OnSensorTalent_10101713(Actor, TalentID) 
	if(TalentID == 140020 ) then
		--Actor:Narration("테테테")	
		Actor:UpdateQuestVar(101017, 3)
	end
end

function Field_101:OnSensorTalent_10101714(Actor, TalentID) 
	if(TalentID == 140020 ) then
		--Actor:Narration("테테테")	
		Actor:UpdateQuestVar(101017, 4)
	end
end

-- 101018 리오드 방역
function Field_101:OnSensorTalent_1010181(Actor, TalentID) 
	if(TalentID == 140020 ) then
		--Actor:Narration("테테테")	
		Actor:UpdateQuestVar(101018, 1)
	end
end

function Field_101:OnSensorTalent_1010182(Actor, TalentID) -- 센서 아이디?(기원의 숲)
	if(TalentID == 140020 ) then
		--Actor:Narration("테테테")	
		Actor:UpdateQuestVar(101018, 2)
		
		local Field = Actor:GetField()
		local Mariae = Field:GetSpawnNPC(101021)	
		local Gadieal1 = Field:GetSpawnNPC(1)
		local Gadieal2 = Field:GetSpawnNPC(2)
		local Gadieal3 = Field:GetSpawnNPC(3)
		local Gadieal4 = Field:GetSpawnNPC(4)
		
		Mariae:Attack(Actor)
		Gadieal1:Attack(Actor)
		Gadieal2:Attack(Actor)
		Gadieal3:Attack(Actor)
		Gadieal4:Attack(Actor)
		--Mariae:NonDelaySay("$$Field_1090021_89")
	
--[[ 참고
	function Field_107:OnSensorEnter_9(Actor) -- 라팔의 센서
	if Actor:IsPlayer() == true then
		if AsPlayer(Actor):CheckCondition(1070512) == true then
			this:SpawnByID(75)
			this:SpawnByID(76)		
			local Field = Actor:GetField()	
			local Rafale = Field:GetSpawnNPC(10151)			
			local Wolf1 = Field:GetSpawnNPC(75)
			local Wolf2 = Field:GetSpawnNPC(76)
			AsPlayer(Actor):Tip("$$Field_107_48")
			Rafale:GainBuff(110013)
			Wolf1:Wait(1)
			Wolf2:Wait(1)				
			Wolf1:Attack(Actor)
			Wolf2:Attack(Actor)			
		end
	end
end
]]--
	end
end

function Field_101:OnSensorTalent_1010183(Actor, TalentID) 
	if(TalentID == 140020 ) then
		--Actor:Narration("테테테")	
		Actor:UpdateQuestVar(101018, 3)
	end
end

function Field_101:OnSensorTalent_1010184(Actor, TalentID) 
	if(TalentID == 140020 ) then
		--Actor:Narration("테테테")	
		Actor:UpdateQuestVar(101018, 4)
	end
end

function Field_101:OnSensorTalent_9(Actor, TalentID) -- 로렌스 방
	if Actor:IsPlayer() == true then
		if AsPlayer(Actor):CheckCondition(1010201) == true then
			this:SpawnByID(1) -- 가디엘교도
			this:SpawnByID(2)
			this:SpawnByID(3)
			local Field = Actor:GetField()
			local Rorence = Field:GetSpawnNPC(101212)		
			local Gadieal1 = Field:GetSpawnNPC(1)			
			local Gadieal2 = Field:GetSpawnNPC(2)
			local Gadieal3 = Field:GetSpawnNPC(3)
			-- 로렌스의 몸을 바꾼다.(디스폰 -> 스폰)
			Rorence:NonDelaySay("$$Field_101_1")
			Gadieal1:Wait(3)
			Gadieal2:Wait(3)
			Gadieal3:Wait(3)
			Gadieal1:NonDelaySay("$$Field_101_2")
			Gadieal1:Attack(Actor)
			Gadieal2:Attack(Actor)	
			Gadieal3:Attack(Actor)					
			-- 엔피씨 사라지게 하는건 어케하징 버프로 해야하나?
			-- 가디엘 애들이 다 죽으면 로렌스는 다시 디스폰 -> 스폰
		end
	end
end

function Field_101:OnSensorTalent_10(Actor, TalentID) -- 탈영병 검거 (애나 자리)
	if Actor:IsPlayer() == true then
		if AsPlayer(Actor):CheckCondition(1010221) == true then
			this:SpawnByID(1) -- 애나
			local Field = Actor:GetField()	
			local Ena = Field:GetSpawnNPC(1)			

			Ena:Wait(1)
			Ena:Attack(Actor)
				
			-- 피가 30% 되면 전투를 종료하고 말풍선을 빠방 하면서 NPC 루아에 var를 올려줘야 하나?
			-- Ena:NonDelaySay("$$Field_101_2")
		end
	end
end

function Field_101:OnSensorTalent_11(Actor, TalentID) -- 탈영병 검거 (애드리언 자리)
	if Actor:IsPlayer() == true then
		if AsPlayer(Actor):CheckCondition(1010221) == true then
			this:SpawnByID(2) -- 애드리언
			local Field = Actor:GetField()				
			local Edrian = Field:GetSpawnNPC(2)
			
			Edrian:Wait(1)
			Edrian:Attack(Actor)					
			-- 피가 30% 되면 전투를 종료하고 말풍선을 빠방 하면서 NPC 루아에 var를 올려줘야 하나?
			-- Edrian:NonDelaySay("$$Field_101_2")
		end
	end
end

function Field_101:OnSpawn(SpawnInfo)		
	if (SpawnInfo.NPCID == 101223) then -- 정찰병 험프리
		SpawnInfo.NPC:Patrol({1012231,1012232,1012233,1012234,1012235,1012236,1012237}, PT_LOOP)		
	end	
end

function Field_101_DespawnSelf(Self, Opponent)
	Self:Despawn(true)	-- 리스폰 가능하게 디스폰
end


