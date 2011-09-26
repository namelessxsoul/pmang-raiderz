-- 순례자 (호위 대상)

function NPC_102223:OnDialogExit(Player, DialogID, ExitID)
	if (1020031 == DialogID) and (2 == ExitID) then
		this:ClearJob()
		
		this:NonDelayBalloon("$$NPC_102223_7")
		this:SetAlwaysRun(true)
		this:DisableInteraction()
		this:EnableSensorCheck(102003) -- 102003센서 체크 켬. NPC는 센서 체크를 켜줘야만 센서와 상호작용이 가능
		this:Patrol({1020031,1020032,1020033}, PT_ONCE)
		this:Balloon("$$NPC_102223_12")
		this:NonDelayBalloon("$$NPC_102223_13")
		this:SetAlwaysRun(false)
		this:Patrol({1020034,1020035,1020036,1020037}, PT_ONCE)
		this:Balloon("$$NPC_102223_16")
		this:SetAlwaysRun(true)
		this:Patrol({1020038}, PT_ONCE)	
		this:FaceTo(Player)
		this:Balloon("$$NPC_102223_20")
		this:Despawn(true)
	end
end

function NPC_102223:OnHitCapsule_1_0(HitInfo)
	if (HitInfo.Damage >= 1) then
		--local Field = HitInfo.Victim:GetField()
		local dice = math.random(0,3)
		if( dice == 0) then 
			HitInfo.Victim:NonDelayBalloon("$$NPC_102223_30")
		end
		if( dice == 1) then 
			HitInfo.Victim:NonDelayBalloon("$$NPC_102223_33")
		end
		if( dice == 2) then 
			HitInfo.Victim:NonDelayBalloon("$$NPC_102223_36")	
		end
		if( dice == 3) then 
			HitInfo.Victim:NonDelayBalloon("$$NPC_102223_39")
		end			
	end
end
