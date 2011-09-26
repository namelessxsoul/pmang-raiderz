-- 호수의 수호자 이리스

function NPC_101002:OnDialogExit(Player, DialogID, ExitID) -- 홍익인간 했으면 이리스 죽이라는 퀘 계속 줌
	if (DialogID == 1010491) and (1 == ExitID) then
		Player:UpdateQuestVar(101049, 1)
		-- 이리스가 우호가 바뀌면서 콜트의 공격패턴을 갖춰야 한다..
	end
end

