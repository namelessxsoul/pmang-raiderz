
-- ////////////////////////// 모켄의 동굴 트라이얼 퀘스트 ///////////////////////////

function Field_1090161:OnSpawn(SpawnInfo) -- 처음에 공격 불가/선공 불가로 만들기
	if (SpawnInfo.SpawnID == 109021) then
		SpawnInfo.NPC:DisableInteraction()
	end
	if (SpawnInfo.SpawnID == 109221) then
		SpawnInfo.NPC:DisableCombat()
		SpawnInfo.NPC:ChangeAA(AA_NONE)
	end
	if (SpawnInfo.SpawnID == 7) or (SpawnInfo.SpawnID == 8) or (SpawnInfo.SpawnID == 9) or (SpawnInfo.SpawnID == 10) then
		SpawnInfo.NPC:DisableCombat()
		SpawnInfo.NPC:ChangeAA(AA_NONE)
	end	
	if (SpawnInfo.SpawnID == 11) or (SpawnInfo.SpawnID == 12) then
		SpawnInfo.NPC:SetAlwaysRun(true)	
		SpawnInfo.NPC:Patrol({11}, PT_ONCE)
	end		
	
end

function Field_1090161:OnSensorEnter_2(Actor) -- 시작 이벤트
	local Field = Actor:GetField()
	if Actor:IsPlayer() == true then
		Field:DisableSensor(2)
		local Silver = Field:GetSpawnNPC(109021)
		local Viewpoint = Field:GetSpawnNPC(1)		


		Silver:SetAlwaysRun(true)
		Silver:Wait(1)
		Silver:FaceTo(Actor)		
		Silver:Say("$$Field_1090161_34")
		Silver:FaceTo(Viewpoint)		
		Silver:Say("$$Field_1090161_36")
		Silver:Patrol({2,3,4}, PT_ONCE)
		Silver:ScriptSelf("FirstWait")
	end
end

function FirstWait(Self)
	local Field = Self:GetField()
	Field:EnableSensor(3)
end

function Field_1090161:OnSensorEnter_3(Actor) 
	local Field = Actor:GetField()
	if Actor:IsPlayer() == true then
		Field:DisableSensor(3)
		local Silver = Field:GetSpawnNPC(109021)	


		Silver:NonDelaySay("$$Field_1090161_54")
		Silver:ChangeAA(AA_NONE)		
		Silver:Patrol({5,6,7,8,9,10}, PT_ONCE)
		Silver:ScriptSelf("SecondWait")
	end
end

function SecondWait(Self)
	local Field = Self:GetField()
	Field:EnableSensor(4)
end

function Field_1090161:OnSensorEnter_4(Actor) 
	local Field = Actor:GetField()
	if Actor:IsPlayer() == true then
		Field:DisableSensor(4)
		local Silver = Field:GetSpawnNPC(109021)
		local Morken = Field:GetSpawnNPC(109221)			
				
		
		Morken:SetAlwaysRun(true)		
		
		Silver:SetAlwaysRun(true)

		Silver:FaceTo(Morken)		
		Silver:WaitFor(Morken)
		Morken:FaceTo(Silver)		
		Morken:Say("$$Field_1090161_81")
		Morken:Say("$$Field_1090161_82")
		Morken:NextAction()
		Morken:WaitFor(Silver)
		Silver:Say("$$Field_1090161_85")
		Silver:Say("$$Field_1090161_86")
		Silver:NextAction()
		Morken:Say("$$Field_1090161_88")
		Morken:Say("$$Field_1090161_89")
		
		Morken:ScriptSelf("MorkentCombat")
	end
end

function MorkentCombat(Self)
	local Field = Self:GetField()
	local Silver = Field:GetSpawnNPC(109021)
	local Morken = Field:GetSpawnNPC(109221)
	local Pirate1 = Field:GetSpawnNPC(7)
	local Pirate2 = Field:GetSpawnNPC(8)
	local Pirate3 = Field:GetSpawnNPC(9)
	local Pirate4 = Field:GetSpawnNPC(10)
	--local Pirate5 = Field:GetSpawnNPC(11)

	Silver:ChangeAA(AA_FACTION)
	Morken:ChangeAA(AA_ALWAYS)
	Pirate1:ChangeAA(AA_ALWAYS)
	Pirate2:ChangeAA(AA_ALWAYS)
	Pirate3:ChangeAA(AA_ALWAYS)
	Pirate4:ChangeAA(AA_ALWAYS)
	--Pirate5:ChangeAA(AA_ALWAYS)
	
	Morken:EnableCombat()
	Pirate1:EnableCombat()
	Pirate2:EnableCombat()
	Pirate3:EnableCombat()
	Pirate4:EnableCombat()
	--Pirate5:EnableCombat()
	
	Pirate1:SetAlwaysRun(true)	
	Pirate2:SetAlwaysRun(true)
	Pirate3:SetAlwaysRun(true)
	Pirate4:SetAlwaysRun(true)
	--Pirate5:SetAlwaysRun(true)	
	
	Morken:Patrol({10}, PT_ONCE)
	Pirate1:Patrol({10}, PT_ONCE)
	Pirate2:Patrol({10}, PT_ONCE)
	Pirate3:Patrol({10}, PT_ONCE)
	Pirate4:Patrol({10}, PT_ONCE)
	--Pirate5:Patrol({10}, PT_ONCE)	
end

function Field_1090161:OnSensorEnter_5(Actor) 
	local Field = Actor:GetField()
	if (Actor:IsPlayer() == true) then
		Field:DisableSensor(5)
		--Field:EnableSensor(6)
		local Silver = Field:GetSpawnNPC(109021)
		
		--Silver:ChangeAA(AA_NONE)		
		--Silver:DisableCombat()
		
		--Silver:ClearJob()
		Silver:ChangeAA(AA_NONE)
		Silver:FaceTo(Actor)				
		Silver:Say("$$Field_1090161_147")
		Silver:Say("$$Field_1090161_148")
		--Silver:EnableInteraction()
		Silver:ScriptSelf("Interaction")
		--Silver:Patrol({10,9,8,7,6,5,4,3,2}, PT_ONCE)		
	end
end

function Interaction(Self)
	Self:EnableInteraction()
end

function Field_1090161:OnDie(DespawnInfo)
	local Field = DespawnInfo.Field
	if (DespawnInfo.NPCID == 109221) or (DespawnInfo.NPCID == 109211) or (DespawnInfo.NPCID == 109212) or (DespawnInfo.NPCID == 109213) or (DespawnInfo.NPCID == 109214) then
		if (Field:GetNPCCount(109221) == 0) and (Field:GetNPCCount(109211) == 0) and (Field:GetNPCCount(109212) == 0) and (Field:GetNPCCount(109213) == 0) and (Field:GetNPCCount(109214) == 0) then
			Field:EnableSensor(5)
		end
	end
end

