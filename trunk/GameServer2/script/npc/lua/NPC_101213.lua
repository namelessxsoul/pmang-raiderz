function NPC_101213:OnDialogExit(Player, DialogID, nExit)
	if (1010261 == DialogID) then
		if (1 == nExit) then
			Player:UpdateQuestVar(101026, 3)
		end
	elseif (1010343 == DialogID) then
		if (1 == nExit) then
			Player:UpdateQuestVar(101034, 2)
		end
	end
end
