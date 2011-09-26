-- 도전퀘 테스트 : 크리스가 도전자 퀘스트로 보내주기 

function NPC_107224:OnDialogExit(Player, DialogID, ExitID)
 	if (1 == ExitID) then
		local GateDestTable = {}
		GateDestTable[9990013] = 107095
		Player:GateToTrial(GateDestTable[DialogID])
	end
end


