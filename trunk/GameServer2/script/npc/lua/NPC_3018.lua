-- 음유시인 라임
function NPC_3018:Init(NPCID)
	
end

-- Event List
function NPC_3018:OnDialogExit(Player, nDialogID, nExit)
	GLog0("NPC_3018:OnInteract\n")

	if (3018 == nDialogID) then
		if (3 == nExit) then
			this:Balloon("$$NPC_3018_12")
		end
		if (10 == nExit) then
			Player:Cutscene(1021)
		end
		if (11 == nExit) then
			Player:PartyCutscene(1022)
		end	
		if (12 == nExit) then
			Player:PartyCutscene(109000)
		end		
		if (15 == nExit) then
			Player:Cutscene(209003)
		end			
		if (13 == nExit) then
			this:MoveToActor(Player, -1)
		end	
		if (14 == nExit) then
			this:StayawayFrom(Player, 1000)
		end			
	end
end
