

function Field_111:OnSpawn(SpawnInfo)
	if (SpawnInfo.SpawnID == 400) then -- 광기의 부족 패트롤
		SpawnInfo.NPC:Patrol({4001,4002,4003,4004}, PT_LOOP_BACKORDER)
	end	
	if (SpawnInfo.SpawnID == 401) then -- 광기의 부족 패트롤
		SpawnInfo.NPC:Patrol({4011,4012,4013,4014}, PT_LOOP_BACKORDER)
	end		
	if (SpawnInfo.SpawnID == 402) then -- 광기의 부족 패트롤
		SpawnInfo.NPC:Patrol({4021,4022,4023,4024,4025,4026,4027}, PT_LOOP_BACKORDER)
	end	
	if (SpawnInfo.SpawnID == 403) then -- 광기의 부족 패트롤
		SpawnInfo.NPC:Patrol({4031,4032,4033,4034}, PT_LOOP_BACKORDER)
	end	
	if (SpawnInfo.SpawnID == 404) then -- 광기의 부족 패트롤
		SpawnInfo.NPC:Patrol({4041,4042,4043,4044,4045,4046}, PT_LOOP_BACKORDER)
	end		
	
	if (SpawnInfo.SpawnID == 450) then -- 마코트 부족 패트롤 (상층)
		SpawnInfo.NPC:Patrol({4501,4502,4503,4504,4505}, PT_LOOP_BACKORDER)
	end		
	if (SpawnInfo.SpawnID == 451) then -- 마코트 부족 패트롤
		SpawnInfo.NPC:Patrol({4510,4511,4512,4513,4514}, PT_LOOP_BACKORDER)
	end		
	if (SpawnInfo.SpawnID == 452) then -- 마코트 부족 패트롤
		SpawnInfo.NPC:Patrol({4521,4522,4523}, PT_LOOP_BACKORDER)
	end		
	if (SpawnInfo.SpawnID == 453) then -- 마코트 부족 패트롤
		SpawnInfo.NPC:Patrol({4531,4532,4533,4534}, PT_LOOP_BACKORDER)
	end		
	if (SpawnInfo.SpawnID == 454) then -- 마코트 부족 패트롤
		SpawnInfo.NPC:Patrol({4541,4542,4543,4544,4545}, PT_LOOP_BACKORDER)
	end		
	if (SpawnInfo.SpawnID == 455) then -- 마코트 부족 패트롤
		SpawnInfo.NPC:Patrol({4551,4552,4553,4554,4555,4556}, PT_LOOP_BACKORDER)
	end		
	
	if (SpawnInfo.SpawnID == 700) then -- 마코트 부족 패트롤 (하층)
		SpawnInfo.NPC:Patrol({7001,7002,7003,7004,7005}, PT_LOOP_BACKORDER)
	end	
	if (SpawnInfo.SpawnID == 701) then -- 마코트 부족 패트롤 (하층)
		SpawnInfo.NPC:Patrol({7011,7012,7013,7014}, PT_LOOP_BACKORDER)
	end	
	if (SpawnInfo.SpawnID == 702) then -- 마코트 부족 패트롤 (하층)
		SpawnInfo.NPC:Patrol({7021,7022,7023,7024}, PT_LOOP_BACKORDER)
	end		
	if (SpawnInfo.SpawnID == 703) then -- 마코트 부족 패트롤 (하층)
		SpawnInfo.NPC:Patrol({7031,7032,7033,7034,7035}, PT_LOOP_BACKORDER)
	end		
	if (SpawnInfo.SpawnID == 704) then -- 마코트 부족 패트롤 (하층)
		SpawnInfo.NPC:Patrol({7041,7042,7043,7044,7045}, PT_LOOP_BACKORDER)
	end	
	if (SpawnInfo.SpawnID == 705) then -- 마코트 부족 패트롤 (하층)
		SpawnInfo.NPC:Patrol({7051,7052,7053,7054}, PT_LOOP_BACKORDER)
	end	
	if (SpawnInfo.SpawnID == 706) then -- 마코트 부족 패트롤 (하층)
		SpawnInfo.NPC:Patrol({7061,7062,7063,7064,7065}, PT_LOOP_BACKORDER)
	end	
	if (SpawnInfo.SpawnID == 707) then -- 마코트 부족 패트롤 (하층)
		SpawnInfo.NPC:Patrol({7071,7072,7073,7074}, PT_LOOP_BACKORDER)
	end	
	if (SpawnInfo.SpawnID == 708) then -- 마코트 부족 패트롤 (하층)
		SpawnInfo.NPC:Patrol({7081,7082,7083}, PT_LOOP_BACKORDER)
	end		
	if (SpawnInfo.SpawnID == 709) then -- 마코트 부족 패트롤 (하층)
		SpawnInfo.NPC:Patrol({7091,7092,7093}, PT_LOOP_BACKORDER)
	end		
	if (SpawnInfo.NPCID == 111212) then -- 영혼의 등불	
		SpawnInfo.NPC:GainBuff(110032)
		SpawnInfo.NPC:Patrol({4012,4002,4033,4032,4031,4041,4042,4043,4044,4045,4046,111021}, PT_ONCE)
		SpawnInfo.NPC:ScriptSelf("Field_111_DelayDespawn")
	end		
	if (SpawnInfo.SpawnID == 1112591) then
		SpawnInfo.NPC:SetAlwaysRun(true)
		SpawnInfo.NPC:DisableCombat()
		SpawnInfo.NPC:MoveToMarker(11125911)
		SpawnInfo.NPC:MoveToMarker(11125912)
		SpawnInfo.NPC:NonDelaySay("성스러운 우리의 유물을 내놔라!")		
		SpawnInfo.NPC:ScriptSelf("Field_111_Invasion1")
	end
	if (SpawnInfo.SpawnID == 1112592) then
		SpawnInfo.NPC:SetAlwaysRun(true)
		SpawnInfo.NPC:DisableCombat()	
		SpawnInfo.NPC:MoveToMarker(11125921)
		SpawnInfo.NPC:MoveToMarker(11125922)
		SpawnInfo.NPC:NonDelaySay("배신자는 더 이상 숨쉴 가치가 없다.")		
		SpawnInfo.NPC:ScriptSelf("Field_111_Invasion2")		
	end	
	if (SpawnInfo.SpawnID == 1112593) then
		SpawnInfo.NPC:SetAlwaysRun(true)
		SpawnInfo.NPC:DisableCombat()	
		SpawnInfo.NPC:MoveToMarker(11125931)
		SpawnInfo.NPC:MoveToMarker(11125932)
		SpawnInfo.NPC:NonDelaySay("르왕키님께 영광을! 배신자에게 죽음을!")		
		SpawnInfo.NPC:ScriptSelf("Field_111_Invasion3")		
	end
end

function Field_111_DelayDespawn(Self)
	Self:Despawn(false)
end
function Field_111_Invasion1(Self)
	Self:EnableCombat()
	Self:ChangeAA(AA_ALWAYS)
end
function Field_111_Invasion2(Self)
	Self:EnableCombat()
	Self:ChangeAA(AA_ALWAYS)
end
function Field_111_Invasion3(Self)
	Self:EnableCombat()
	Self:ChangeAA(AA_ALWAYS)
end



function Field_111:OnSensorEnter_111003(Actor) -- 경호원 로웬의 죽음
	if (Actor:IsPlayer() == true) then
		if (AsPlayer(Actor):CheckCondition(1110031) == true) then
			if (this:GetNPCCount(111256) == 0) then		
				this:SpawnByID(111256)
				this:SpawnByID(111257)
				this:SpawnByID(111258)			
				
				local Rowen = this:GetSpawnNPC(111256)
				local Fighter = this:GetSpawnNPC(111257)
				local Shooter = this:GetSpawnNPC(111258)
					
				local Session = this:MakeSession("RowenEvent",{Rowen, Fighter, Shooter})
			end
		end
	end
end

function Field_111:OnSessionScene_RowenEvent_Begin(Session)
	local Rowen = this:GetSpawnNPC(111256)
	local Fighter = this:GetSpawnNPC(111257)
	local Shooter = this:GetSpawnNPC(111258)
	
	Session:Blocking()
		Fighter:SetAlwaysRun(true)
		Rowen:NonDelaySay("끈질긴 놈들...")
	Session:CombatSession()
		Rowen:Attack(Shooter)
		Shooter:UseTalent(211125801, Rowen)		
		Fighter:UseTalent(211125701, Rowen)		
		Rowen:UseTalent(211125602, Fighter)	
		Rowen:UseTalent(211125603, Fighter)	
		Rowen:FaceTo(Shooter)		
		Shooter:UseTalent(211125802, Rowen)
		Rowen:NonDelaySay("크윽... 여기까진가...")
	Session:ChangeScene("Death")
end

function Field_111:OnSessionScene_RowenEvent_Death(Session)
	local Rowen = this:GetSpawnNPC(111256)
	local Fighter = this:GetSpawnNPC(111257)
	local Shooter = this:GetSpawnNPC(111258)
		Rowen:GainBuff(110018)
		Shooter:NonDelaySay("죽어라!")	
		--Rowen:RemoveBuff(110018)		
		Shooter:UseTalent(211125803, Rowen)		
	Session:ChangeScene("End")	
end

function Field_111:OnSessionScene_RowenEvent_End(Session)
	local Rowen = this:GetSpawnNPC(111256)
	local Fighter = this:GetSpawnNPC(111257)
	local Shooter = this:GetSpawnNPC(111258)
	
	Session:NonBlocking()
		Rowen:Despawn(false)
		Fighter:Despawn(false)
		Shooter:Despawn(false)		
	Session:EndSession()
end

function Field_111:OnEvent_Decode(Actor)
	local Urcus = this:GetSpawnNPC(111201)
	local Hitch = this:GetSpawnNPC(111207)	
	local Totem = this:GetSpawnNPC(111304)	
	local Session = this:MakeSession("Decode",{Urcus, Hitch, Totem})
end

function Field_111:OnSessionScene_Decode_Begin(Session)
	local Urcus = this:GetSpawnNPC(111201)	
	local Totem = this:GetSpawnNPC(111304)
	Session:Blocking()	
		Urcus:DisableInteraction()
		Urcus:NonDelaySay("이제 마력의 팬던트에 마력을 주입하면 되겠군.")
		Urcus:StayawayFrom(Totem, 150)
		Urcus:Say("{ani=roar}Pichick Oicvneur")
		Urcus:Say("{ani=roar}Dadento Ybvier Terncode Wier")
		Urcus:Say("{ani=roar}Gleshac Geedi Reterdnop!")			
	Session:ChangeScene("1")
end

function Field_111:OnSessionScene_Decode_1(Session)
	local Urcus = this:GetSpawnNPC(111201)
	local Totem = this:GetSpawnNPC(111304)
	Session:Blocking()	
		Urcus:NonDelaySay("이제 다 되었군. 여기 와서 같이 보지")	
		Totem:GainBuff(110028)
		Urcus:SetAlwaysRun(true)		
		Urcus:ReturnToHome()
	Session:ChangeScene("2")
end

function Field_111:OnSessionScene_Decode_2(Session)
	local Urcus = this:GetSpawnNPC(111201)
	local Hitch = this:GetSpawnNPC(111207)	
	Session:Blocking()
		Hitch:DisableInteraction()	
		Urcus:Say("그대가 알고 있는 내용과 거의 흡사하군...")	
		Urcus:Say("그곳에 덧붙여서 카이저님과의 대화가 쓰여 있는데 말이야...")
		Urcus:Say("드래곤의 비늘은 일반적인 방법으로는 파괴할 수 없고, 드래곤의 발톱으로만 상처를 낼 수 있다고 하네.")
		Hitch:Say("{ani=talk5}아니..? 드래곤의 발톱으로 상처를 낼 수 있다고?")
		Hitch:Say("{ani=talk1}그렇다면, 모든 것을 오염시키고 있는 드래곤의 시체를 없앨 수 있는 방법이 있을지도 모르겠군.")		
		Urcus:Say("비늘을 파괴하고, 그곳에 마력의 화염을 주입해 내부에서 태워버리자는 말인가?")	
	Session:ChangeScene("3")
end

function Field_111:OnSessionScene_Decode_3(Session)
	Session:Blocking()	
		this:SpawnByID(111252)
	Session:ChangeScene("4")		
end

function Field_111:OnSessionScene_Decode_4(Session)
	local Urcus = this:GetSpawnNPC(111201)
	local Hitch = this:GetSpawnNPC(111207)
	local Lewanki = this:GetSpawnNPC(111252)	
	Session:AddNPC(Lewanki)
	Session:Blocking()
		Lewanki:SetAlwaysRun(true)
		Lewanki:MoveToMarker(1112521)
		Lewanki:FaceTo(Urcus)
		Lewanki:Say("이 쥐새끼 같은 놈들!! 이곳에 숨어 있었구나...")
	Session:NonBlocking()		
		Hitch:FaceTo(Lewanki)		
		Urcus:FaceTo(Lewanki)
	Session:Blocking()		
		Urcus:Say("{ani=atk_l}르왕키, 네 이놈! 영광스러운 마코트의 이름을 더럽히는 네놈을 용서하지 않겠다!")
		Lewanki:Say("{ani=roar}으하하하~ 그따위 고리타분한 과거에 집착하는 네놈들의 꼴을 보니 한심하구나")
		Lewanki:Say("이 세상은 츄즌으로 인해 재편성 될 것이다!!")
		Lewanki:Say("{ani=atk_l}그리고 그 선봉에는 이 르왕키와 마녀님이 함께 하실 것이다!")
		Hitch:Say("{ani=point}누가 그렇게 되도록 놔둘 줄 아느냐!")
	Session:ChangeScene("5")		
end

function Field_111:OnSessionScene_Decode_5(Session)
	local Urcus = this:GetSpawnNPC(111201)
	local Hitch = this:GetSpawnNPC(111207)
	local Lewanki = this:GetSpawnNPC(111252)

	Session:CombatSession()

	Session:Blocking()		
		Lewanki:UseTalent(211101008, Urcus) 
		Lewanki:Say("{ani=roar}마력의 펜던트는 잘 받아가마!")
		Lewanki:Say("{ani=atk_l}벌레들.. 마음껏 발악해보아라! 으하하")
		Lewanki:MoveToMarker(1112521)
		Lewanki:MoveToMarker(1112522)		
		Lewanki:Despawn(false)
	Session:ChangeScene("6")	
end

function Field_111:OnSessionScene_Decode_6(Session)
	local Urcus = this:GetSpawnNPC(111201)
	local Hitch = this:GetSpawnNPC(111207)
	local Lewanki = this:GetSpawnNPC(111252)
	Session:NonBlocking()
	Session:CombatNone()
		Urcus:EnableInteraction()	
		Hitch:EnableInteraction()
	Session:EndSession()
end

function Field_111:OnEndCutscene(Player,CutsceneID)
	if (CutsceneID == 111022) then
		local Mage = this:GetSpawnNPC(111202)
		Mage:Wait(3)	
		Mage:Say("하층에 있는 드래곤의 시체에서 오염된 피가 흐르고 있었군요!")
		Mage:Say("이 사실을 하층에 흩어져 있는 조사단장 히치에게 전해주시겠습니까?")
	end
end


