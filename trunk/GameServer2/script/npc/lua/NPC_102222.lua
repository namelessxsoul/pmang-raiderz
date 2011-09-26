-- 도전퀘 테스트 : 에다산 가이드 리아라가 도전자 퀘스트로 보내주기 

function NPC_102222:OnDialogExit(Player, DialogID, ExitID)
 	if (1 == ExitID) then
		local GateDestTable = {}
		GateDestTable[9991133] = 113096
		Player:GateToTrial(GateDestTable[DialogID])
	end
end


