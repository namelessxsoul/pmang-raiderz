-- 전투 지원 모집병

function NPC_3067:OnDialogExit(Player, DialogID, ExitID)
	
	
	if (8891012 == DialogID) then
		if (1 == ExitID) then
			Player:GateToTrial(1100000)	
		end
	end
end
