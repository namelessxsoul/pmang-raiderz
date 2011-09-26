--³ë¿¤

function NPC_107202:OnDialogExit(Player, DialogID, ExitID)
 	if (1 == ExitID) then
		local GateDestTable = {}
		GateDestTable[9990023] = 107091
		Player:GateToTrial(GateDestTable[DialogID])
	end
end

