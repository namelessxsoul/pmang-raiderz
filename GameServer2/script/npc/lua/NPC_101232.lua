-- 영웅의 오벨리스크

function NPC_101232:OnDialogExit(Player, DialogID, ExitID) -- 영웅 알현 퀘스트 중 소환됨. 퀘스트 완료한 사람도 계속 소환
	if (DialogID == 1010472) and (1 == ExitID) then
		Player:UpdateQuestVar(101047, 1)
		local Field = this:GetField()
		local Pos = vec3(31336.23, 47340.88, 1456.90) -- 포지션 알아내야 함
		Field:SpawnLimited(101233, Pos, 30)
		local Iris = Field:GetSpawnNPC(101233)
		Iris:FaceTo(this)
	end
end

function NPC_101232:OnInteract(Interactor)
	if (Interactor:CheckCondition(1010472) == true) then
		local Field = this:GetField()
		local Pos = vec3(31336.23, 47340.88, 1456.90) -- 포지션 알아내야 함
		Field:SpawnLimited(101233, Pos, 30)
		local Iris = Field:GetSpawnNPC(101233)
		Iris:FaceTo(this)
	end
end


