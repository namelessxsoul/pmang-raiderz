-- 숙박객 테이노
function NPC_3075:Init(NPCID)
	
	
	
	
end

-- Event List
function NPC_3075:OnInteract(Interactor)
	
end

-- 대화 끝나면.. 
function NPC_3075:OnDialogExit(Player, nDialogID, nExit)
	if (3075 == nDialogID) then
		if (2 == nExit) then
			this:Balloon("$$NPC_3075_18")
		end
		if (3 == nExit) then
			this:Balloon("$$NPC_3075_21")		
			this:UseTalent(600002, Player)
		end
		if (4 == nExit) then
			this:Balloon("$$NPC_3075_25")
			this:UseTalent(600003, Player)
		end
		if (5 == nExit) then
			this:Balloon("$$NPC_3075_29")
			this:UseTalent(600004, Player)
		end
	end
end


