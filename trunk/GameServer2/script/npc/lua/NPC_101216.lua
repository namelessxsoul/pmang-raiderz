function NPC_101216:OnDialogExit(Player, DialogID, nExit)
	if (1010314 == DialogID) then
		if (1 == nExit) then
			Player:UpdateQuestVar(101031, 3)
		end
	end
end
