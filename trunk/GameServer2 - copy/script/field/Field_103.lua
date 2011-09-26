--[[
	f0103.lua
	
	Swamp of the Silence
	Script by Joongpil Cho(Venister)
]]--

--[[ --------------------------------------------------------------------------------------------------------------------------
	PORTAL
-------------------------------------------------------------------------------------------------------------------------- ]]--

-- Portal to Mt. Eda
function Field_103:OnSensorEnter_1(Actor)
	AsPlayer(Actor):GateToMarker(102, 3);
end

-- Portal to Silent Forest
function Field_103:OnSensorEnter_2(Actor)
	if (bEntered == true) then
		AsPlayer(Actor):GateToMarker(112, 1);
	end
end

-- Portal to Rinden Hills
function Field_103:OnSensorEnter_4(Actor)
	if (bEntered == true) then
		AsPlayer(Actor):GateToMarker(104, 1);
	end
end
