function Quest_113018:OnObjComplete(Player, ObjectiveID)
	local Field = Player:GetField()
	
	if (1 == ObjectiveID) then	
			Player:Tip("갑자기 땅속에서 봉봉이 솟아나 당신을 공격합니다!!")
			Field:SpawnByID(7009); 
			Field:SpawnByID(7010);--  구울 버서커 소환
			local enemy1 = Field:GetSpawnNPC(7009)
			local enemy2 = Field:GetSpawnNPC(7010)
			enemy1:Attack(Player)
			enemy2:Attack(Player)
	end
end
