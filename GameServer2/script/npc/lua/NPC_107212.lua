-- 도전퀘 테스트 : 미라지가 도전자 퀘스트로 보내주기 

function NPC_107212:OnDialogExit(Player, DialogID, ExitID)
 	if (1 == ExitID) then
		local GateDestTable = {}
		GateDestTable[9990043] = 107092
		Player:GateToTrial(GateDestTable[DialogID])
	end
end


