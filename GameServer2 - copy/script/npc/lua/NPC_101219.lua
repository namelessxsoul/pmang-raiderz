function NPC_101219:OnDialogExit(Player, DialogID, nExit)
	if (1010342 == DialogID) then
		if (1 == nExit) then
			Player:UpdateQuestVar(101034, 1)
		end
	end
end
