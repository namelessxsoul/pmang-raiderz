function Quest_512002:OnObjComplete(Player, ObjectiveID)
	local Field = Player:GetField()
	
	if (1 == ObjectiveID) then	
			Field:SpawnByID(94); --  탐욕스러운 우노 소환
			Field:SpawnByID(95); --  불만에 가득 찬 니켈 소환
	elseif (2 == ObjectiveID) then	
			Field:SpawnByID(93); --  협잡꾼 도지 소환						
		
	end
end





