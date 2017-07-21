  -- @Date:   2017-07-20
  -- @Project: FX Customs
  -- @Owner: Jink Left
  -- @Last modified time: 2017-07-20
----------------------------------------------------
--------------------[   DATA   ]--------------------
local FirstJoinProper = false
local near = false
local closed = false
local insideGarage = false
local currentGarage = 0
local insidePosition = {}
local outsidePosition = {}
local locations = {
    [1] = { outside = { x = -362.7962, y = -132.4005, z = 38.25239, heading = 71.187133}, inside = {x = -337.3863,y = -136.9247,z = 38.5737, heading = 269.455}},
    [2] = { outside = { x = -1140.191, y = -1985.478, z = 12.72923, heading = 315.290466}, inside = {x = -1155.536,y = -2007.183,z = 12.744, heading = 155.413}},
    [3] = { outside = { x = 716.4645, y = -1088.869, z = 21.92979, heading = 88.768}, inside = {x = 731.8163,y = -1088.822,z = 21.733, heading = 269.318}},
    [4] = { outside = { x = 1174.811, y = 2649.954, z = 37.37151, heading = 0.450}, inside = {x = 1175.04,y = 2640.216,z = 37.32177, heading = 182.402}},
  }

----------------------------------------------------
---------------[	FUNCTIONS 		]---------------
----------------------------------------------------
function dump(o)
   if type(o) == 'table' then
      local s = '{ '
      for k,v in pairs(o) do
         if type(k) ~= 'number' then k = '"'..k..'"' end
         s = s .. '['..k..'] = ' .. dump(v) .. ','
      end
      return s .. '} '
   else
      return tostring(o)
   end
end

function AddBlips()
  for i,pos in ipairs(locations) do
    local blip = AddBlipForCoord(pos.inside.x,pos.inside.y,pos.inside.z)
    SetBlipSprite(blip, 72)
    SetBlipScale(blip, 0.9)
    SetBlipAsShortRange(blip,true)
  end
end

function drawTxt(text,font,centre,x,y,scale,r,g,b,a)
	SetTextFont(font)
	SetTextProportional(0)
	SetTextScale(scale, scale)
	SetTextColour(r, g, b, a)
	SetTextDropShadow(0, 0, 0, 0,255)
	SetTextEdge(1, 0, 0, 0, 255)
	SetTextDropShadow()
	SetTextOutline()
	SetTextCentre(centre)
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawText(x , y)
end


function SetVehicleOutsideGarage()	
	local pos = outsidePosition
	local ped = GetPlayerPed(-1)
	local veh = GetVehiclePedIsUsing(ped)

	SetEntityCoordsNoOffset(veh,pos.x,pos.y,pos.z)
	SetEntityHeading(veh,pos.heading)
	SetVehicleOnGroundProperly(veh)
    SetVehicleHasBeenOwnedByPlayer(veh,true)
    local id = NetworkGetNetworkIdFromEntity(veh)
    SetNetworkIdCanMigrate(id, true)
    Citizen.InvokeNative(0x629BFA74418D6239,Citizen.PointerValueIntInitialized(veh))
	SetPlayerInvincible(GetPlayerIndex(),false)
	SetEntityInvincible(veh,false)
	SetEntityCollision(veh,true,true)
	FreezeEntityPosition(veh, false)
	SetVehicleDoorsLocked(veh,0)
	currentGarage = 0  	  
   
end


function SetVehicleInGarage()	
	local pos = insidePosition
	local player = GetPlayerPed(-1)
	local veh = GetVehiclePedIsUsing(player)

	 

	if DoesEntityExist(veh) then
	 	 -- Send {menu} to Menu Generator export
	    if not exports.ft_menuBuilder:IsOpened() and GetLastInputMethod(2) then
	    	exports.ft_menuBuilder:Open("fx_customs")	 
	    	Citizen.Trace("Position : " .. tostring(pos.x) .."Position : " .. tostring(pos.y) .."Position : " .. tostring(pos.z) .."Position Heading: " .. tostring(pos.heading) .. " Ped is : " .. tostring(player) .. " Veh is : " .. tostring(veh))
	  		SetEntityCoordsNoOffset(veh,pos.x,pos.y,pos.z)
			SetEntityHeading(veh,pos.heading)
			SetVehicleOnGroundProperly(veh)
			FreezeEntityPosition(veh, true)
			SetVehicleDoorsLocked(veh,4)
			SetPlayerInvincible(GetPlayerIndex(),true)
			SetEntityInvincible(veh,true)
			SetEntityCollision(veh,false,false)		
      	end
	end
end
----------------------------------------------------
---------------[	THREADS 		]---------------
---------------------------------------------------- 

Citizen.CreateThread(function()
  	while true do	
    Citizen.Wait(0)
	    if NetworkIsSessionStarted() then  	 	
			for i, pos in pairs(locations) do
		    	 local player = GetPlayerPed(-1)
		    	 local playerLoc = GetEntityCoords(player)
		    	 local veh = GetVehiclePedIsUsing(player)
		    	 local distance = GetDistanceBetweenCoords(pos.outside.x, pos.outside.y, pos.outside.z, playerLoc )

			    if distance < 5 and not near then
			    --	if debug then
			    --    	Citizen.Trace(tostring(playerLoc) .. "Distance : " .. tostring(distance))	
			    --    	Citizen.Trace("You're Near LSC" .. tostring(currentGarage) .. " Near is : " .. tostring(near))
			   	--	end
			   		if DoesEntityExist(veh) then
				        drawTxt("Press ~b~HOME~w~ to enter ~b~Los Santos Customs ",4,1,0.5,0.8,1.0,255,255,255,255) 
				        if IsControlJustPressed(1, 213) and GetLastInputMethod(2) then -- HOME KEY IS  213 ON CONTROLS	 	        	
				        	Citizen.Trace("You're Near LSC" .. tostring(currentGarage) .. " Near is : " .. tostring(near))
			   				currentGarage = i
				        	insidePosition = pos.inside
				        	outsidePosition = pos.outside
				        	SetVehicleInGarage() -- TODO JINK IMPLEMENT FUNCTION FOR BEING INTO GARAGE THAT BRINGS UP MENU
	      				end
			    	end
	      		end
		    end	
	    end
  	end
end)
----------------------------------------------------
---------------[	EVENTS 		]-------------------
----------------------------------------------------
local firstspawn = 0
AddEventHandler('playerSpawned', function(spawn)
  if firstspawn == 0 then
  	exports.ft_menuBuilder:Generator(menu)
    AddBlips()
    firstspawn = 1
  end
end)

RegisterNetEvent('fx_customs:LeaveGarage')
AddEventHandler('fx_customs:LeaveGarage', function(data)
	for k,v in pairs(data) do
		Citizen.Trace(tostring(k) .. " | " .. tostring(v))
		exports.ft_menuBuilder:Close()
		SetVehicleOutsideGarage()
	end
end)