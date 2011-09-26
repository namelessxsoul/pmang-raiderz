function NPC_101206:OnDialogExit(Player, DialogID, nExit)
	if (1010051 == DialogID) then
		if (1 == nExit) then
			Player:UpdateQuestVar(101005, 1)
		end
	end
end
