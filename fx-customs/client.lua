  -- @Date:   2017-07-27
  -- @Project: FX Customs
  -- @Owner: Jink Left
  -- @Last modified time: 2017-07-27
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

local mods = {
	[1] = { name = "Spoilers", mod = 0, toggle = false, default = nil},
	[2] = { name = "Front Bumper", mod = 1, toggle = false, default = nil},
	[3] = { name = "Rear Bumper", mod = 2, toggle = false, default = nil},
	[4] = { name = "Side Skirt", mod = 3, toggle = false, default = nil},
	[5] = { name = "Exhaust", mod = 4, toggle = false, default = nil},
	[6] = { name = "Frame", mod = 5, toggle = false, default = nil},
	[7] = { name = "Grille", mod = 6, toggle = false, default = nil},
	[8] = { name = "Hood", mod = 7, toggle = false, default = nil},
	[9] = { name = "Fender", mod = 8, toggle = false, default = nil},
	[10] = { name = "Right Fender", mod = 9, toggle = false, default = nil},
	[11] = { name = "Roof", mod = 10, toggle = false, default = nil},
	[12] = { name = "Engine", mod = 11, toggle = false, default = nil},
	[13] = { name = "Brakes", mod = 12, toggle = false, default = nil},
	[14] = { name = "Transmission", mod = 13, toggle = false, default = nil},
	[15] = { name = "Horns", mod = 14, toggle = false, default = nil},
	[16] = { name = "Suspension", mod = 15, toggle = false, default = nil},
	[17] = { name = "Armor", mod = 16, toggle = false, default = nil},
	[18] = { name = "Turbo", mod = 18, toggle = true, default = "off"},
	[19] = { name = "Tire Smoke", mod = 20, toggle = false, default = "off"},
	[20] = { name = "Xeon Head Lights", mod = 22, toggle = true, default = "off"},
	[21] = { name = "Front Wheels", mod = 23, toggle = false, default = nil},
	[22] = { name = "Back Wheels", mod = 24, toggle = true, default = nil},
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
  for i, pos in ipairs(locations) do
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
	vehicleInGarage = false

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
	local stolen = IsVehicleStolen(veh)
	local vehiclecol = table.pack(GetVehicleColours(veh))
	local extracol = table.pack(GetVehicleExtraColours(veh))
	local neoncolor = table.pack(GetVehicleNeonLightsColour(veh))
	local plate_index = GetVehicleNumberPlateTextIndex(veh)
	local model = GetEntityModel(veh)
	local veh_state = GetVehicleBodyHealth(veh)
	local plate = GetVehicleNumberPlateText(veh)
	local windowtint = GetVehicleWindowTint(veh)
	local wheeltype = GetVehicleWheelType(veh)
	local vehicle_name = GetHashKey(veh)
	local mods = mods
	local tempMods = {}

	for i = 0,24 do
		tempMods[i] = GetVehicleMod(veh,i)
	end 
	vehMods = tempMods

	Citizen.Trace("Vehicle : " .. tostring(veh) .."Plate Index : " .. tostring(plate_index) .."Model : " .. tostring(model) .."Vehicle Name: " .. tostring(vehicle_name))
	Citizen.Trace(dump(tempMods))

	if DoesEntityExist(veh) then
	 	 -- Send {menu} to Menu Generator export
	    if not IsOpened() and GetLastInputMethod(2) then
	    	Open("fx_customs")
	    	--	if debug then
	    	--Citizen.Trace( "Vehicle Col : " .. dump(vehiclecol) .. " | Extra Col : " .. dump(extracol) .. " | Neon : " .. dump(neoncolor) .. " | Plate : " .. tostring(vehicle_plate) .. " | Window Tint : " .. tostring(windowtint) .. " | Wheel Typ : " .. tostring(vehicle_wheeltype))
	    	--Citizen.Trace( "Mods : " .. dump(mods))
	  		--for k,v in pairs(mods) do
			-- 	Citizen.Trace(k .. dump(v))
			-- end
			vehicleInGarage = true
	    	TriggerServerEvent("fx_customs:UpdateVeh", veh, stolen, vehiclecol, extracol, neoncolor, plate_index, model, veh_state, plate, windowtint, wheeltype, vehicle_name, mods)	 
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
				        	SetVehicleInGarage()
	      				end
			    	end
	      		end
		    end	
	    end
  	end
end)

Citizen.CreateThread(function()
  if NetworkIsSessionStarted() then

	  while true do
	    Citizen.Wait(5)

	    -- Open game menu
	    if not IsPauseMenuActive() then
	      Show()
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
  	Generator(menu)
    AddBlips()
    firstspawn = 1
  end
end)

RegisterNetEvent('fx_customs:LeaveGarage')
AddEventHandler('fx_customs:LeaveGarage', function(data)
	for k,v in pairs(data) do
		Citizen.Trace(tostring(k) .. " | " .. tostring(v))
		SetVehicleOutsideGarage()
	end
end)

RegisterNetEvent('fx_customs:SetVehicleMod')
AddEventHandler('fx_customs:SetVehicleMod', function(modtype,mod,wheeltype)
	local player = GetPlayerPed(-1)
	local veh = GetVehiclePedIsUsing(player)
	local damaged = IsVehicleDamaged(veh)
	
	if damaged then
		TriggerServerEvent("fx_customs:Notify","Los Santos Customs", "We've applied your vehicle update maybe you might want a repair!")
	else
		TriggerServerEvent("fx_customs:Notify","Los Santos Customs", "We've applied your vehicle update.")
	end
	if wheeltype ~= nil then
		SetVehicleWheelType(veh, wheeltype)
	end
	SetVehicleModKit(veh, 0)
	SetVehicleMod(veh, modtype, mod)
end)

RegisterNetEvent('fx_customs:RepairVehicle')
AddEventHandler('fx_customs:RepairVehicle', function(paid)
	local player = GetPlayerPed(-1)
	local veh = GetVehiclePedIsUsing(player)
	local damaged = IsVehicleDamaged(veh)
	Citizen.Trace("I'm Repairing Vehicle." .. veh)
	if damaged and paid then
		SetVehicleFixed(veh)
		TriggerServerEvent("fx_customs:Notify","Los Santos Customs", "We've repaired your vehicle for a fee")
	end
end)