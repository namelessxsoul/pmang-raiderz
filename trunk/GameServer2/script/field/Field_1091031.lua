
-- ////////////////////////// 모켄의 동굴 트라이얼 퀘스트 ///////////////////////////

function Field_1091031:OnSpawn(SpawnInfo) -- 처음에 공격 불가/선공 불가로 만들기
	if (SpawnInfo.SpawnID == 109021) then
		SpawnInfo.NPC:DisableInteraction()
		SpawnInfo.NPC:SetAlwaysRun(true)
		SpawnInfo.NPC:GainBuff(110019)		
	end
	if (SpawnInfo.SpawnID == 109221) then
		SpawnInfo.NPC:DisableCombat()
		SpawnInfo.NPC:ChangeAA(AA_NONE)
		SpawnInfo.NPC:SetAlwaysRun(true)		
		SpawnInfo.NPC:GainBuff(110019)		
	end
	if (SpawnInfo.SpawnID == 7) or (SpawnInfo.SpawnID == 8) then
		SpawnInfo.NPC:DisableCombat()
		SpawnInfo.NPC:ChangeAA(AA_NONE)
	end	
	if (SpawnInfo.SpawnID == 11) or (SpawnInfo.SpawnID == 12) then
		SpawnInfo.NPC:SetAlwaysRun(true)	
		SpawnInfo.NPC:Patrol({7,8,9,10}, PT_LOOP)
	end		
end

function Field_1091031:OnSensorEnter_2(Actor) -- 시작 이벤트

	if (Actor:IsPlayer() == true) then
		this:DisableSensor(2)
		local Silver = this:GetSpawnNPC(109021)	
		local Session = this:MakeSession("SilverDash", {Silver})
		Session:AddBookmark("Player", Actor)
	end
end

function Field_1091031:OnSessionScene_SilverDash_Begin(Session)
	local Silver = this:GetSpawnNPC(109021)
	local Viewpoint = this:GetSpawnNPC(1)
		
	Session:Blocking()	
		Silver:Wait(1)
		Silver:FaceTo(Session:FindBookmark("Player"))		
		Silver:Say("$$Field_1091031_33") -- 드디어 오셨군. 기다리다 지쳐서 나 혼자 처리하려던 참이었는데.
		Silver:FaceTo(Viewpoint)		
		Silver:Say("$$Field_1091031_35") -- 자, 어서 이곳을 정리하고 밥 먹으러 가자고.
	Session:CombatAll()
		Silver:Patrol({2,3,4}, PT_ONCE)	
		--this:EnableSensor(3)
	Session:ChangeScene("End")
	--Session:EndSession()
end

function Field_1091031:OnSessionScene_SilverDash_End(Session)
		this:EnableSensor(3)
	Session:EndSession()
end

function Field_1091031:OnSensorEnter_3(Actor) 
	local Silver = this:GetSpawnNPC(109021)	
	
	if (Actor:IsPlayer() == true) then
		this:DisableSensor(3)	
		local Session = this:MakeSession("DestroyEgg", {Silver})
		Session:AddBookmark("Player", Actor)		
	end
end

function Field_1091031:OnSessionScene_DestroyEgg_Begin(Session)
	local Silver = this:GetSpawnNPC(109021)

	Session:Blocking()	
		Silver:Say("$$Field_1091031_54") -- 이 알들은 크라울러의 알인가?
		Silver:Say("$$Field_1091031_55") -- 바로 여기서 크라울러를 기르고 있었군.
		--Silver:NonDelaySay("$$Field_1091031_56") -- 이것들이 깨어나게 둘 수 없지!
	--Session:CombatAll()		
		--Silver:ChangeAA(AA_FACTION)
		--Silver:Patrol({12}, PT_ONCE)
	--Session:ChangeScene("Destroy")
		Silver:ChangeAA(AA_NONE)	
		Silver:Patrol({5,6,7,8,9,10}, PT_ONCE)
		--this:EnableSensor(4)
	--Session:EndSession()
	Session:ChangeScene("Sensor")
end

function Field_1091031:OnSessionScene_DestroyEgg_Sensor(Session)
		this:EnableSensor(4)
	Session:EndSession()
end

--[[
function Field_1091031:OnSessionScene_DestroyEgg_Destroy(Session)
	local Silver = this:GetSpawnNPC(109021)

	Session:Blocking()
		Silver:ChangeAA(AA_NONE)	
		Silver:Patrol({4,5,6,7,8,9,10}, PT_ONCE)
		this:EnableSensor(4)
	Session:EndSession()
end
--]]
function Field_1091031:OnSensorEnter_4(Actor) 
	local Field = Actor:GetField()
	local Silver = Field:GetSpawnNPC(109021)
	local Morken = Field:GetSpawnNPC(109221)	
	
	if (Actor:IsPlayer() == true) then
		Field:DisableSensor(4)
		
		local Session = this:MakeSession("SilverMorken", {Silver, Morken})
		Session:AddBookmark("Player", Actor)
	end
end

function Field_1091031:OnSessionScene_SilverMorken_Begin(Session)
	local Silver = this:GetSpawnNPC(109021)
	local Morken = this:GetSpawnNPC(109221)	

	Session:Blocking()
		Silver:FaceTo(Morken)		
		Morken:FaceTo(Silver)		
		Morken:Say("$$Field_1091031_97") -- 잘도 내 계획을 방해했겠다!
		Morken:Say("$$Field_1091031_98") -- 하지만 네놈들이 여기 있다는건 티안쪽은 무방비라는 거군.
		Silver:Say("$$Field_1091031_102") -- 또 무슨 계획을 꾸미고 있는 거냐?
		Morken:Say("$$Field_1091031_104") -- 곧 죽을 놈들이 궁금한 것도 많구나.
		Morken:Say("$$Field_1091031_105") -- 더 이상 알 필요 없다. 죽어라!
	Session:ChangeScene("Combat")
end

function Field_1091031:OnSessionScene_SilverMorken_Combat(Session)
	local Silver = this:GetSpawnNPC(109021)
	local Morken = this:GetSpawnNPC(109221)	
	local Pirate1 = this:GetSpawnNPC(7)
	local Pirate2 = this:GetSpawnNPC(8)
	
	Session:NonBlocking()
	Session:CombatAll()
		Silver:ChangeAA(AA_FACTION)
		Morken:ChangeAA(AA_ALWAYS)
		Pirate1:ChangeAA(AA_ALWAYS)
		Pirate2:ChangeAA(AA_ALWAYS)
		
		Morken:EnableCombat()
		Pirate1:EnableCombat()
		Pirate2:EnableCombat()
		
		Silver:SetAlwaysRun(false)	
		Pirate1:SetAlwaysRun(true)	
		Pirate2:SetAlwaysRun(true)	
		
		Morken:Patrol({10}, PT_ONCE)
		Pirate1:Patrol({10}, PT_ONCE)
		Pirate2:Patrol({10}, PT_ONCE)
	Session:AddChangeSceneRule("Run", Morken, "hp", {0, 40})
end

function Field_1091031:OnSessionScene_SilverMorken_Run(Session)
	local Silver = this:GetSpawnNPC(109021)
	local Morken = this:GetSpawnNPC(109221)	
	
	Session:RemoveNPC(Silver)
	Session:Blocking()	
		Morken:ChangeAA(AA_NONE)
		Morken:GainBuff(5000051)		
		Morken:UseTalentSelf(210901713)
		Morken:FaceTo(Silver)		
		Morken:Say("$$NPC_109221_36") -- 좋아, 너희가 이겼다. 하지만, 이걸로 끝났다고 생각하지 마라!
	Session:ChangeScene("Escape")		
end

function Field_1091031:OnSessionScene_SilverMorken_Escape(Session)
	local Silver = this:GetSpawnNPC(109021)
	local Morken = this:GetSpawnNPC(109221)	
	
	Session:Blocking()
		Morken:MoveToMarker(4)
		Morken:Narration("$$NPC_109221_37")	-- 모켄은 도망쳤습니다.	
		Morken:Despawn(false)	
		this:SpawnByID(11)
		this:SpawnByID(12)		
		this:SpawnByID(13)			
	Session:EndSession()		
end

function Field_1091031:OnSensorEnter_5(Actor) 
	local Field = Actor:GetField()
	local Silver = Field:GetSpawnNPC(109021)	
	
	if (Actor:IsPlayer() == true) then
		Field:DisableSensor(5)
		--GLog("173 Line")
		Silver:MakePeace()
		Silver:ChangeAA(AA_NONE)
		Silver:FaceTo(Actor)				
		Silver:Say("$$Field_1091031_165") -- 쳇, 모켄 녀석... 도망쳐버렸군.
		Silver:Say("$$Field_1091031_166") -- 다시 놈을 추적해야겠어. 이리로 오게!
		Silver:ScriptSelf("Field_1091031_Interaction")		
	end
end

function Field_1091031_Interaction(Self)
	--GLog("183 Line")
	Self:EnableInteraction()
end

function Field_1091031:OnDie(DespawnInfo)
	local Field = DespawnInfo.Field --[[
	if (DespawnInfo.SpawnID == 1) then
		local Pirate2 = Field:GetSpawnNPC(2)
		local Silver = Field:GetSpawnNPC(109021)
		if (Pirate2:IsDead() == true) then
			GLog("193 Line")
			Silver:ChangeAA(AA_NONE)
		end
	end	
	if (DespawnInfo.SpawnID == 2) then
		local Pirate1 = Field:GetSpawnNPC(1)
		local Silver = Field:GetSpawnNPC(109021)
		if (Pirate1:IsDead() == true) then
			GLog("201 Line")		
			Silver:ChangeAA(AA_NONE)
		end
	end		--]]
	if (DespawnInfo.NPCID == 109221) or (DespawnInfo.NPCID == 109211) or (DespawnInfo.NPCID == 109212) or (DespawnInfo.NPCID == 109213) or (DespawnInfo.NPCID == 109214) then
		if (Field:GetNPCCount(1) == 1) and (Field:GetNPCCount(109211) == 0) and (Field:GetNPCCount(109212) == 0) and (Field:GetNPCCount(109213) == 0) and (Field:GetNPCCount(109214) == 0) then
			--GLog("EnableSensor_5\n")
			Field:EnableSensor(5)
		end
	end
end

