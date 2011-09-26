-- 지금 필요한 것은 무엇?
--[[
function Quest_107081:OnEnd(Player, NPC)
	local Field = Player:GetField()
	local Randy = Field:GetSpawnNPC(10005)
	local Son = Field:GetSpawnNPC(10014)
	local User = Randy:GetLastInteractPlayer()
	Son:WaitFor(Randy)
	Randy:DisableInteraction()
	Randy:Balloon("$$Quest_107081_10")
	Randy:MoveToMarker(29)
	Randy:Balloon("$$Quest_107081_12")
	Randy:Balloon("$$Quest_107081_13")	
	Randy:MoveToMarker(30)
	Randy:Balloon("$$Quest_107081_15")
	Randy:NextAction()
	Randy:WaitFor(Son)
		
	Son:Balloon("$$Quest_107081_19")
	Son:NextAction()
	Son:WaitFor(Randy)
	
	Randy:Balloon("$$Quest_107081_23")
	Randy:NextAction()
	Randy:WaitFor(Son)
	
	Son:Balloon("$$Quest_107081_27")
	Son:NextAction()
	Son:WaitFor(Randy)
		
	Randy:Balloon("$$Quest_107081_31")
	Randy:Balloon("$$Quest_107081_32")
	Randy:MoveToMarker(29)
	Randy:MoveToMarker(31)
	Randy:FaceTo(User)
	Randy:Balloon("$$Quest_107081_36")
	Randy:ScriptSelf("Enable")
	
	Randy:NextAction();
end

function Enable(Self)
	Self:EnableInteraction()
end
--]]