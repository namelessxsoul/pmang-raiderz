function Quest_109016:OnBegin(Player, NPC)
	this:UpdateVar(0)
end
--[[
function Quest_109016:OnObjComplete(Player, ObjectiveID)
	if (ObjectiveID == 1)then
		local Field = Player:GetField()
		Field:EnableSensor(5) 
		--Player:Tip("$$Quest_109016_9")
	end
end
--]]