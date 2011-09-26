
-- ////////////////////////// 크라울러 전투 트라이얼 퀘스트 ///////////////////////////

function Field_1090162:OnSensorEnter_5(Actor) -- 시작 이벤트, 컷씬.
	local Field = Actor:GetField()
	if Actor:IsPlayer() == true then
		Field:DisableSensor(5)
		--local Silver = Field:GetSpawnNPC(109021)
		local Crawler = Field:GetSpawnNPC(109100)
		--local Linker = Field:GetSpawnNPC(109106)
		--NPC_109106:ControlCrawler( Linker, Crawler )
		
		--AsPlayer(Actor):PartyCutscene(1090162) CBT1에 컷신 안들어가기로 함.

		
		--Silver:SetAlwaysRun(true)
		--Silver:Wait(14)
		--Silver:FaceTo(Crawler)		
		--Silver:Say("$$Field_1090162_19")
		--Silver:NonDelaySay("$$Field_1090162_20")
		--Silver:Attack(Crawler)
		Crawler:Attack(Actor)
	end
end

function Field_1090162:OnSensorEnter_2(Actor) -- 두번째 전투 센서
	local Field = Actor:GetField()
	
	if Actor:IsPlayer() == true then
		Field:DisableSensor(2)	
		Actor:Narration("$$Field_1090162_31")		
		this:SetTimer(1, 21, false)		-- 타이머로 귀환 센서 작동
	end
end

function Field_1090162:OnTimer(TimerID) 
	if (TimerID == 1) then
		this:EnableSensor(3) -- 귀환 센서 ON
	end
end

function Field_1090162:OnDie(DespawnInfo)

	if (DespawnInfo.SpawnID == 109100) then
		DespawnInfo.Field:EnableSensor(2)
	end
end