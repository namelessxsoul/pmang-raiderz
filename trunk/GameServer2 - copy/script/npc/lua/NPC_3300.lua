function NPC_3300:OnDialogExit(Player, DialogID, nExit)
	if (3300 == DialogID) then
		if (1 == nExit) then
			-- 투기장에 등록함
			Player:ArenaRegister();
		end
	end
end
