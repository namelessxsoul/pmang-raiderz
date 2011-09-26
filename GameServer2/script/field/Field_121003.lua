-- 오염된화원 보스룸

function Field_121003:OnDie(DespawnInfo)
	
	if (DespawnInfo.SpawnID == 1) then 
		local Field = DespawnInfo.Field
		local Door1 = Field:GetSpawnNPC(2)		
		Door1:UseTalentSelf( 212102201 ) -- 잠겨있던 문 열리도록
		Field:SpawnByID(3)  -- 열리지 않는 문 스폰		
		DespawnInfo.NPC:NarrationNow( "$$Field_121003_10"  )				
	end	

end

