-- 도전퀘 테스트 : 조수 쇼티가 도전자 퀘스트로 보내주기 

function NPC_113220:OnDialogExit(Player, DialogID, ExitID)
 	if (1 == ExitID) then
		local GateDestTable = {}
		GateDestTable[9991073] = 113090
		Player:GateToTrial(GateDestTable[DialogID])
	end
end


