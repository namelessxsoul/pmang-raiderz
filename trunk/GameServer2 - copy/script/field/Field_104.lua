--[[
	f0104.lua
	
	Swamp of the Silence
	Script by Joongpil Cho(Venister)
]]--

--[[ --------------------------------------------------------------------------------------------------------------------------
	PORTAL
-------------------------------------------------------------------------------------------------------------------------- ]]--

-- Portal to Swamp
function Field_104:OnSensorEnter_1(Actor)
	AsPlayer(Actor):GateToMarker(103, 3);
end

-- Portal to Limos Desert
function Field_104:OnSensorEnter_2(Actor)
	AsPlayer(Actor):GateToMarker(105, 2);
end
