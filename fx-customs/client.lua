  -- @Date:   2017-07-18
  -- @Project: FX Customs
  -- @Owner: Jink Left
  -- @Last modified time: 2017-07-18
  
function AddBlips()
	for i,pos in ipairs(locations) do
		local blip = AddBlipForCoord(pos.inside.x,pos.inside.y,pos.inside.z)
		SetBlipSprite(blip, 72)
	 	SetBlipScale(blip, 0.9)
		SetBlipAsShortRange(blip,true)
	end
end

local firstspawn = 0
AddEventHandler('playerSpawned', function(spawn)
	if firstspawn == 0 then
		AddBlips()
		firstspawn = 1
	end
end)