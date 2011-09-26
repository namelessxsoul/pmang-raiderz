-- 성 파넬 수도원



function Field_501:OnCreate()
	Field_501.NPC_Executioner1 = 501002
	
	Field_501.NPC_Saintvirgin = 501003
	Field_501.NPC_Executioner2 = 501004
end



function Field_501:OnSpawn(SpawnInfo)
	
	if SpawnInfo.NPCID == Field_501.NPC_Executioner1 then
		local Session = this:MakeSession("Executioner", {SpawnInfo.NPC})
		Session:AddBookmark("NPC_Executioner", SpawnInfo.NPC) 
		
	elseif SpawnInfo.NPCID == Field_501.NPC_Saintvirgin then
--		GLog( "Saintvirgin Spawn\n" )
		local Session = this:MakeSession("Saintvirgin", {SpawnInfo.NPC})
		if not Session then return end
		Session:AddBookmark("NPC_Saintvirgin", SpawnInfo.NPC)
		Session:AddChangeSceneRule("Dead", SpawnInfo.NPC, "dead", {})
		Session:AddChangeSceneRule("HelpMe", SpawnInfo.NPC, "hp", {0, 60})
	end
end

-- 성녀 전투 : 전투 중 처형집행인2 출현한다.
function Field_501:OnSessionScene_Saintvirgin_Begin(Session)
--	GLog("Field_501:OnSessionScene_Saintvirgin_Begin\n")
	--local Saintvirgin = AsNPC( Session:FindBookmark("NPC_Saintvirgin") )
	--Session:AddChangeSceneRule("Dead", Saintvirgin, "dead", {})
	--Session:AddChangeSceneRule("HelpMe", Saintvirgin, "hp", {0, 99})
	Session:ChangeScene("Combat")
end

function Field_501:OnSessionScene_Saintvirgin_HelpMe(Session)
--	GLog("Field_501:OnSessionScene_Saintvirgin_HelpMe\n")
	local Saintvirgin = AsNPC( Session:FindBookmark("NPC_Saintvirgin") )
	local Executioner = this:SpawnByID( Field_501.NPC_Executioner2 )
	Session:AddNPC(Executioner)
	Session:AddBookmark("NPC_Executioner", Executioner)
	if Saintvirgin:GetMode() == NPC_501003.MODE_Blink then
		Saintvirgin:SayNow("Scene - Mode Change")
		Saintvirgin:UseTalentSelf( NPC_501003.TALENT_Blink )
	end
	Saintvirgin:Say("처형집행인 등장")
	Executioner:MoveToMarker(4)
	Executioner:FaceTo(Saintvirgin)
	Saintvirgin:FaceTo(Executioner)
	Executioner:Say("중얼중얼")
	Saintvirgin:Say("중얼중얼")
	Session:ChangeScene("Combat")
end

function Field_501:OnSessionScene_Saintvirgin_Combat(Session)
--	GLog("Field_501:OnSessionScene_Saintvirgin_Combat\n")
	local Saintvirgin = AsNPC( Session:FindBookmark("NPC_Saintvirgin") )
	local Executioner = AsNPC( Session:FindBookmark("NPC_Executioner") )
	Session:CombatAll()
	Session:MakeCombat()
--	Session:AddChangeSceneRule("Peace", Saintvirgin, "peace", {})
	
	if Executioner == nil or Executioner:IsNull() or Executioner:IsDead() then return end
	Executioner:Assist(Saintvirgin)
end

--function Field_501:OnSessionScene_Saintvirgin_Peace(Session)
--	GLog("Field_501:OnSessionScene_Saintvirgin_Peace\n")
--	local Saintvirgin = AsNPC( Session:FindBookmark("NPC_Saintvirgin") )
--	Session:CombatAll()
--	Session:AddChangeSceneRule("Combat", Saintvirgin, "combat", {})
--end

function Field_501:OnSessionScene_Saintvirgin_Dead(Session)
--	GLog("Field_501:OnSessionScene_Saintvirgin_Dead\n")
	local Executioner = AsNPC( Session:FindBookmark("NPC_Executioner") )
	Executioner:Die(Executioner)
	Session:EndSession()
end

function Field_501:OnSessionScene_Saintvirgin_Finish(Session)
--	GLog("Field_501:OnSessionScene_Saintvirgin_Finish\n")
end






-- 처형집행인 전투 : 전투 중 도망간다.
function Field_501:OnSessionScene_Executioner_Begin(Session)
--	GLog("Field_501:OnSessionScene_Executioner_Begin")
	local Executioner = Session:FindBookmark("NPC_Executioner")
	Session:CombatAll()
	Session:AddChangeSceneRule("Flee", Executioner, "hp", {0, 20})
	Session:AddChangeSceneRule("Dead", Executioner, "dead", {})
end

function Field_501:OnSessionScene_Executioner_Flee(Session)
	local Executioner = Session:FindBookmark("NPC_Executioner")
	Executioner:Patrol({50100201,50100202}, PT_ONCE)
	Executioner:Despawn(false)
	Session:EndSession()
end

function Field_501:OnSessionScene_Executioner_Dead(Session)
	GLog("코드에 문제가 있음. Field_501:OnSessionScene_Executioner_Dead\n")
	Session:EndSession()
end


function Field_501:OnDie(DespawnInfo)
	local Field = DespawnInfo.Field
	
	if (DespawnInfo.NPCID == 501100) then -- 일반교도 죽였을 때 문열어라
		local Door1 = Field:GetSpawnNPC(101)		
		Door1:UseTalentSelf( 250120001 )		
		
		Field:SetTimer( 1, 10, false )
		--Field:ActivateSpawnGroup(5)
		--DespawnInfo.NPC:NarrationNow( "$$Field_121001_124"  )				
	end	
	
	if (DespawnInfo.NPCID == 501001) then -- 수도원장 네이터 죽였을 때 문열어라
		local Door1 = Field:GetSpawnNPC(102)		
		Door1:UseTalentSelf( 250120101 )		
		
		--Field:SetTimer( 1, 10, false )
		--Field:ActivateSpawnGroup(5)
		--DespawnInfo.NPC:NarrationNow( "$$Field_121001_124"  )				
	end	
	
	

end

function Field_501:OnTimer( Index )
	if Index == 1 then
		local Door1 = this:GetSpawnNPC(101)
		Door1:UseTalentSelf( 250120002 )		
		return	
	end
end