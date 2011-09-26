function NPC_101218:OnDialogExit(Player, DialogID, nExit)
	if (1010312 == DialogID) then
		if (1 == nExit) then
			Player:UpdateQuestVar(101031, 1)
		end
	end
end
