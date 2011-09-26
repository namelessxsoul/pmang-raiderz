function NPC_101217:OnDialogExit(Player, DialogID, nExit)
	if (1010313 == DialogID) then
		if (1 == nExit) then
			Player:UpdateQuestVar(101031, 2)
		end
	end
end
