-- 택배 왔습니다. 

--[[
function Quest_3010:OnBegin(Player, NPC)
	Player:AddItem(10031, 1) quest.xml에서 받는걸로 변경
	Player:AddItem(10032, 1)
	Player:AddItem(10033, 1)	
end--]]

function Quest_3010:OnObjComplete(Player, ObjectiveID, Trigger)
	if (ObjectiveID == 1) then
		Player:Tip("$$Quest_3010_12")
	elseif (ObjectiveID == 2) then
		Player:Tip("$$Quest_3010_14")
	elseif (ObjectiveID == 3) then
		Player:Tip("$$Quest_3010_16")
	end	
end

function Quest_3010:OnComplete(Player)
	Player:Tip("$$Quest_3010_21")
end

--[[
function Quest_3010:OnObjComplete(Player, ObjectiveID)
	if (ObjectiveID == 1) then
		local Field = Player:GetField()
		Field:SpawnByID(12001)
		Field:SpawnByID(12002)
		Field:SpawnByID(12003)	
		this:ScriptSelf("ActiveSpider")
	end
end
function ActiveSpider (Self, NPC, Spider1, Spider2, Spider3)
		local Field = Self:GetField()
		local Randy = Field:GetSpawnNPC(10005)
		local Spider1 = Field:GetSpawnNPC(12001)
		local Spider2 = Field:GetSpawnNPC(12002)
		local Spider3 = Field:GetSpawnNPC(12003)
		
		Randy:Balloon("$$Quest_3010_41", 3)	
		Spider1:Balloon("{ani=roar}")
		Spider2:Balloon("$$Quest_3010_43", 4)
		Spider3:Balloon("{ani=roar}")	
		Randy:Say("$$Quest_3010_45", 3)	
	end
end --]]
