-- «—¿‹ ¬ﬂ µÈ¿Ã≈∞ººø‰

function Quest_101026:OnObjInteract(Player, ObjectiveID, Trigger, Progress, NPC)
	if (ObjectiveID == 4) then
		if (Trigger == true) then
			Player:UpdateQuestVar(101026, 4)
		end
	end
end

function Quest_101026:OnObjComplete(Player, ObjectiveID, Trigger)
	if (ObjectiveID == 3) then
		Player:RemoveItem(10181, 1)
	end
end
