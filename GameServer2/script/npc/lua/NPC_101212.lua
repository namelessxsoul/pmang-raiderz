function NPC_101212:OnDialogExit(Player, DialogID, nExit)
	if (1010201 == DialogID) then
		if (1 == nExit) then
			Player:UpdateQuestVar(101020, 1)
			-- 스폰, 디스폰
			-- 가디엘교 3명 습격
			-- 대사 
			-- 교도 처치하면 로렌스는 원래 사람으로.
		end
	end
end
