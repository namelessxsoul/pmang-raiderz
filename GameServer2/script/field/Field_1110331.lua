-- 마코트 해방 전쟁

function Field_1110331:OnSpawn(SpawnInfo)
	if (SpawnInfo.SpawnID == 111010) then -- 르왕키
		SpawnInfo.NPC:SetAlwaysRun(true)
		SpawnInfo.NPC:GainBuff(110037)
	end	
end

function Field_1110331:OnSensorEnter_1(Actor) 
	if (Actor:IsPlayer() == true) then
		this:DisableSensor(1)
		local Urcus = this:GetSpawnNPC(111250)	
		local Session = this:MakeSession("Move",{Urcus})		
	end
end

function Field_1110331:OnSessionScene_Move_Begin(Session)
	local Urcus = this:GetSpawnNPC(111250)	

	Session:Blocking()
		Urcus:SetAlwaysRun(true)
		Urcus:NonDelaySay("전투로 혼란스러운 지금이 기회야. 서두르게!")
		Urcus:Patrol({11,12,13}, PT_ONCE)
	Session:ChangeScene("End")
end

function Field_1110331:OnSessionScene_Move_End(Session)
	Session:Blocking()
		this:EnableSensor(2)
	Session:EndSession()
end

function Field_1110331:OnSensorEnter_2(Actor) 
	if (Actor:IsPlayer() == true) then
		this:DisableSensor(2)	
		local Lewanki = this:GetSpawnNPC(111010)
		local Urcus = this:GetSpawnNPC(111250)	
		local Session = this:MakeSession("Freedom",{Lewanki, Urcus})
		Session:AddBookmark("Player", Actor)
	end
end

function Field_1110331:OnSessionScene_Freedom_Begin(Session)
	local Lewanki = this:GetSpawnNPC(111010)
	local Urcus = this:GetSpawnNPC(111250)	
	
	Session:Blocking()
		Urcus:FaceTo(Lewanki)		
		Urcus:SaveHomePoint()
		Urcus:Say("이제부터 대족장 승계 의식을 시작하겠네.")
		Urcus:Say("그동안 놈의 주의를 끌어주게.")		
	Session:ChangeScene("2")	
end

function Field_1110331:OnSessionScene_Freedom_2(Session)
	local Lewanki = this:GetSpawnNPC(111010)
	local Urcus = this:GetSpawnNPC(111250)	
	
	Session:Blocking()
		Urcus:GainBuff(110044)
		Lewanki:MoveToMarker(14)
		Lewanki:Say("{ani=roar}제발로 죽으러 오다니, 어리석은 놈!")		
	Session:ChangeScene("3")	
end

function Field_1110331:OnSessionScene_Freedom_3(Session)
	local Lewanki = this:GetSpawnNPC(111010)
	local Urcus = this:GetSpawnNPC(111250)	

	Session:NonBlocking()
		Lewanki:NarrationNow("대족장 승계 의식이 진행됨에 따라 르왕키의 방어력이 점차 약해지게 됩니다.")
		Lewanki:Attack(Session:FindBookmark("Player"))
		this:SetTimer(1, 20, true)
	Session:CombatAll()
	Session:AddChangeSceneRule("MegaDeath1", Lewanki, "hp", {41, 70})	
end

function Field_1110331:OnTimer(TimerID)
	local Lewanki = this:GetSpawnNPC(111010)
	if (TimerID == 1) then
		if (Lewanki:CheckBuff(110037) == true) then
			Lewanki:NarrationNow("르왕키에게 피해를 줄 수 있게 되었습니다.")		
			Lewanki:RemoveBuff(110037)
		end
		if (Lewanki:CheckBuff(110037) == false) then
			Lewanki:NarrationNow("르왕키의 방어력이 낮아졌습니다.")			
			Lewanki:GainBuff(110043)			
		end
	end
	if (TimerID == 2) then	
		this:EnableSensor(5)
	end
end

function Field_1110331:OnSessionScene_Freedom_MegaDeath1(Session)
	local Lewanki = this:GetSpawnNPC(111010)	
	Session:CombatNone()
		Lewanki:DisableCombat();
		Lewanki:ChangeAA(AA_NONE)
		Lewanki:NonDelaySay("이놈들! 모두 죽을 준비나 해라!")
		Lewanki:UseTalentSelf(211101009)
	Session:ChangeScene("MegaDeath1End")	
end
function Field_1110331:OnSessionScene_Freedom_MegaDeath1End(Session)
	local Lewanki = this:GetSpawnNPC(111010)	
	Session:CombatAll()
	Lewanki:EnableCombat();
	Session:AddChangeSceneRule("MegaDeath2", Lewanki, "hp", {11, 40})	
end
function Field_1110331:OnSessionScene_Freedom_MegaDeath2(Session)
	local Lewanki = this:GetSpawnNPC(111010)	
	Session:CombatNone()
		Lewanki:DisableCombat();
		Lewanki:NonDelaySay("건방진 놈들! 모두 갈갈이 찢어주마!")
		Lewanki:UseTalentSelf(211101009)	
	Session:ChangeScene("MegaDeath2End")	
end
function Field_1110331:OnSessionScene_Freedom_MegaDeath2End(Session)
	local Lewanki = this:GetSpawnNPC(111010)	
	Session:CombatAll()
	Lewanki:EnableCombat();
	Session:AddChangeSceneRule("MegaDeath3", Lewanki, "hp", {1, 10})	
end
function Field_1110331:OnSessionScene_Freedom_MegaDeath3(Session)
	local Lewanki = this:GetSpawnNPC(111010)	
	Session:CombatNone()
		Lewanki:DisableCombat();
		Lewanki:NonDelaySay("카이저의 비늘이... 우르쿠스, 네 이놈!!")
		Lewanki:UseTalentSelf(211101009)	
	Session:ChangeScene("MegaDeath3End")
end
function Field_1110331:OnSessionScene_Freedom_MegaDeath3End(Session)
	local Lewanki = this:GetSpawnNPC(111010)	
	Session:CombatAll()
	Lewanki:EnableCombat();
	Session:EndSession()	
end

function Field_1110331:OnDie(DespawnInfo)
	local Field = DespawnInfo.Field
	local Urcus = this:GetSpawnNPC(111250)	
	
	if (DespawnInfo.SpawnID == 111010) then
		Field:KillTimer(1)
		Urcus:RemoveBuff(110044)
		Urcus:Wait(4)
		Urcus:Say("마침내 르왕키의 압재가 끝나게 되었군.")
		Urcus:Say("이곳이 정리되면 앞으로 어떻게 할 지 얘기해보세.")
		Urcus:ScriptSelf("Field_1110331_End")
	end
end

function Field_1110331_End(Self)
	local Field = Self:GetField()
	Self:Narration("10초 후 자동으로 공용 필드로 돌아갑니다.")
	Field:SetTimer(2, 10, false)
end












