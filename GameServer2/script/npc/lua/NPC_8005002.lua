-- 베틀아레나 진행요원 젤린데

function NPC_8005002:OnDialogExit(Player, DialogID, Exit)
	if (8005002 == DialogID) then
		if (1 == Exit) then
			Player:GateToMarker(8005, 10)
			
		end
	end		
end
