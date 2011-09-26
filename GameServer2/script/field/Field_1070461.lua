-- 타리비의 동굴
function Field_1070461:OnSensorEnter_3(Actor)
	if (Actor:IsPlayer() == true) then
		local Field = AsPlayer(Actor):GetField()
		Field:DisableSensor(3)						
		local Guard = Field:GetSpawnNPC(2)
		Guard:Balloon("$$Field_1070461_7")
		Guard:Balloon("$$Field_1070461_8")
	end
end

function Field_1070461:OnSensorEnter_4(Actor)
	if (Actor:IsPlayer() == true) then
		local Field = AsPlayer(Actor):GetField()
		Field:DisableSensor(4)				
		local Guard1 = Field:GetSpawnNPC(3)
		local Guard2 = Field:GetSpawnNPC(2)
		Guard1:Balloon("$$Field_1070461_18")
		Guard1:Attack(Actor)
		Guard2:Attack(Actor)
	end
end

function Field_1070461:OnSensorEnter_5(Actor)
	if (Actor:IsPlayer() == true) then
		local Field = AsPlayer(Actor):GetField()
		Field:DisableSensor(5)				
		local Guard1 = Field:GetSpawnNPC(4)
		local Guard2 = Field:GetSpawnNPC(5)
		Guard1:ClearJob()
		Guard2:ClearJob()
		Guard1:NonDelayBalloon("$$Field_1070461_32")
		Guard2:NonDelayBalloon("$$Field_1070461_33")		
		Guard1:Attack(Actor)
		Guard2:Attack(Actor)
	end
end

function Field_1070461:OnSensorEnter_6(Actor)
	if (Actor:IsPlayer() == true) then
		local Field = AsPlayer(Actor):GetField()
		Field:DisableSensor(6)				
		local Leader = Field:GetSpawnNPC(1)
		Leader:Balloon("$$Field_1070461_44")
	end
end
