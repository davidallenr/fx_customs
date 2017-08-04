  -- @Date:   2017-07-331
  -- @Project: FX Customs
  -- @Owner: Jink Left
  -- @LICENSE: NO LICENSE/LICENSE
  -- @Last modified time: 2017-07-31
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
    [1] = { outside = { x = -362.796, y = -132.400, z = 38.252, heading = 71.187}, inside = {x = -337.386,y = -136.924,z = 38.573, heading = 269.455}},
    [2] = { outside = { x = -1140.191, y = -1985.478, z = 12.729, heading = 315.290}, inside = {x = -1155.536,y = -2007.183,z = 12.744, heading = 155.413}},
    [3] = { outside = { x = 716.464, y = -1088.869, z = 21.929, heading = 88.768}, inside = {x = 731.816,y = -1088.822,z = 21.733, heading = 269.318}},
    [4] = { outside = { x = 1174.811, y = 2649.954, z = 37.371, heading = 0.450}, inside = {x = 1175.04,y = 2640.216,z = 37.321, heading = 182.402}},
  }

local mods = {[1] = { name = "Spoilers", mod = 0 }, [2] = { name = "Front Bumper", mod = 1 }, [3] = { name = "Rear Bumper", mod = 2 }, [4] = { name = "Side Skirt", mod = 3 }, [5] = { name = "Exhaust", mod = 4 }, [6] = { name = "Roll Cage", mod = 5 }, [7] = { name = "Grille", mod = 6 }, [8] = { name = "Hood", mod = 7 }, [9] = { name = "Fender", mod = 8 }, [10] = { name = "Right Fender", mod = 9 }, [11] = { name = "Roof", mod = 10 }, }

---TODO JINK ONLY FOR TESTING DELETE AFTER
local vehicle_generator = {
	[1] = { name = "police4", x = 1165.95, y = 2666.74, z = 37.9, heading = 360.402 },
	[2] = { name =  "cavalcade", x = 1170.95, y = 2666.74, z = 37.9, heading = 360.402 },
	[3] = { name =  "police", x = 1175.95, y = 2666.74, z = 37.9, heading = 360.402 },
	--- Motorcycles
	[4] = { name =  "daemon2", x = 1187.95, y = 2666.74, z = 37.9, heading = 182.402 },
	[5] = { name =  "bf400", x = 1190.95, y = 2666.74, z = 37.9, heading = 360.402 },
	[6] = { name =  "shotaro", x = 1195.95, y = 2666.74, z = 37.9, heading = 360.402 },
	[7] = { name =  "sandking", x = 1180.95, y = 2666.74, z = 37.9, heading = 360.402 },
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

function GetVehicleData()
  local player = GetPlayerPed(-1)
  local veh = GetVehiclePedIsIn(player,false)
  local model = GetEntityModel(veh)
  local bike = IsThisModelABike(model) 
  local stolen = IsVehicleStolen(veh)
  local vehiclecol = table.pack(GetVehicleColours(veh))
  local extracol = table.pack(GetVehicleExtraColours(veh))
  local neoncolor = table.pack(GetVehicleNeonLightsColour(veh))
  local plate_index = GetVehicleNumberPlateTextIndex(veh) 
  local veh_state = GetVehicleBodyHealth(veh)
  local plate_index = GetVehicleNumberPlateTextIndex(veh)
  local plate = GetVehicleNumberPlateText(veh)
  local windowtint = GetVehicleWindowTint(veh)
  local wheeltype = GetVehicleWheelType(veh)
  local vehicle_name = GetHashKey(veh)
  local mods = mods
  local tempMods = {}
  local vehicleData = {}
  
  for i = 0, 24 do
    SetVehicleModKit(veh, 0)
    local vehMods = GetVehicleMod(veh, i)
    if vehMods ~= nil then
      tempMods[#tempMods+1] = vehMods
    end
  end

  vehicleData[#vehicleData+1] = { player = player }
  vehicleData[#vehicleData+1] = { veh = veh}
  vehicleData[#vehicleData+1] = { model = model }
  vehicleData[#vehicleData+1] = { bike = bike }
  vehicleData[#vehicleData+1] = { stolen = stolen }
  vehicleData[#vehicleData+1] = { vehiclecol = vehiclecol }
  vehicleData[#vehicleData+1] = { extracol = extracol }
  vehicleData[#vehicleData+1] = { neoncolor = neoncolor }
  vehicleData[#vehicleData+1] = { veh_state = veh_state }
  vehicleData[#vehicleData+1] = { plate = plate }
  vehicleData[#vehicleData+1] = { plate_index = plate_index }
  vehicleData[#vehicleData+1] = { windowtint = windowtint }
  vehicleData[#vehicleData+1] = { wheeltype = wheeltype }
  vehicleData[#vehicleData+1] = { vehicle_name = vehicle_name }
  vehicleData[#vehicleData+1] = { tempMods = tempMods }

  callback = vehicleData
  return callback

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
	local veh = GetVehiclePedIsIn(player,false)
	local model = GetEntityModel(veh)
	local bike = IsThisModelABike(model) 
	local veh_data = GetVehicleData()

	Citizen.Trace(dump(vdata))
	if DoesEntityExist(veh) then
	    if not exports.ft_menuBuilder:IsOpened() and GetLastInputMethod(2) then
		    if bike then -- IF THE PLAYER IS RIDING A MOTORCYLE THEN USE THIS MENU
				local buttons = {{ text = "Wheels", menu = "wheels2"  }, { text = "Accessories", menu = "accessories"  }, { text = "Paint", menu = "paint" }, { text = "Tuning", menu = "tuning"  }, { text = "Lights", menu = "lights"  },{ text = "Custom Mods", menu = "mods"  },{ text = "Vehicle Extras", menu = "extras"  }, { text = "Previous Menu", back = true }}
		    	local modButtons = {}
		    	exports.ft_menuBuilder:AddButtonTable("fx_main", buttons)
		    	for i = 1,#mods do -- FOR 1 TO THE LENGTH OF THE LOCAL MODS AT THE BEGINNING DO THIS
						 SetVehicleModKit(veh, 0)
					 	if GetNumVehicleMods(veh,mods[i].mod) ~= nil and GetNumVehicleMods(veh,mods[i].mod) ~= false then
						 	 modType = mods[i].mod
							if modType ~= nil then 
								for i = 0, GetNumVehicleMods(veh, modType) - 1 do
								 	local lbl = GetModTextLabel(veh,modType,i)
									if lbl ~= nil then
										local name = tostring(GetLabelText(lbl))
										if name ~= "NULL" then
							 				local button = { text = name, subText = cost['custom_mods'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = modType, mod = i, confirmed = true , cost = cost['custom_mods'].total}} -- ADDS A BUTTON WITH THE CUSTOM MODS LABEL TEXT
							 				modButtons[#modButtons+1] = button
						 					--Citizen.Trace(" Name: " .. name.." | Mod "..modType.." | Number: "..i)
								 		end
							 		end
							 	end
						 	end
						end
					end
				if modButtons ~= nil then
					exports.ft_menuBuilder:AddButtonTable("mods", modButtons) -- EXPORTS THIS TO THE MODS MENU
				end
				local modButtons = {}
					for i = 1,100 do --CHECKS FROM 1-100 FOR EXTRA OPTIONS OF VEHICLES. 100 IS EXCESSIVE, THE HIGHEST I'VE FOUND IS LIKE 19.
						SetVehicleModKit(veh, 0)
						local extra = DoesExtraExist(veh, i)
						--Citizen.Trace("Extra.." .. tostring(extra) .. " i " .. i)
						if extra ~= nil and extra then
							local button = { text = "Vehicle Extra : " .. tostring(i), subText = "Free", eventServer = "fx_customs:ConfirmMod", data = { value = true, id = i, confirmed = true , cost = 0}} -- ADDS A BUTTON FOR VEHICLE EXTRA MODS.
							modButtons[#modButtons+1] = button
						end
					end
				if modButtons ~= nil then
					exports.ft_menuBuilder:AddButtonTable("extras2", modButtons)
				end
		    	exports.ft_menuBuilder:Open("fx_customs") -- OPENS Fx_customs menu if on motorcyle
			else
				local buttons = {{ text = "Wheels", menu = "wheels"  }, { text = "Accessories", menu = "accessories"  }, { text = "Paint", menu = "paint" }, { text = "Tuning", menu = "tuning"  }, { text = "Lights", menu = "lights"  }, { text = "Window Tint", menu = "windows"  },{ text = "Custom Mods", menu = "mods"  },{ text = "Vehicle Extras", menu = "extras"  }, { text = "Previous Menu", back = true }}
				local modButtons = {}
				exports.ft_menuBuilder:AddButtonTable("fx_main", buttons)
				 	for i = 1,#mods do
						 SetVehicleModKit(veh, 0)
						 if GetNumVehicleMods(veh,mods[i].mod) ~= nil and GetNumVehicleMods(veh,mods[i].mod) ~= false then
						 	 modType = mods[i].mod
							if modType ~= nil then 
								for i = 0, GetNumVehicleMods(veh, modType) - 1 do
								 	local lbl = GetModTextLabel(veh,modType,i)
									if lbl ~= nil then
										local name = tostring(GetLabelText(lbl))
										if name ~= "NULL" then
							 				local button = { text = name, subText = cost['custom_mods'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = modType, mod = i, confirmed = true , cost = cost['custom_mods'].total}}
							 				modButtons[#modButtons+1] = button	
											--Citizen.Trace("Mod Type : " .. tostring(modType) .. " || Mod : " .. tostring(mod))
								 		end
							 		end
							 	end
						 	end
						end
					end
				if modButtons ~= nil then
					exports.ft_menuBuilder:AddButtonTable("mods", modButtons)
				end
				local modButtons = {}
					for i = 1,100 do
						SetVehicleModKit(veh, 0)
						local extra = DoesExtraExist(veh, i)
						if extra ~= nil and extra then
							local button = { text = "Vehicle Extra : " .. tostring(i), subText = "Free", eventServer = "fx_customs:ConfirmMod", data = { value = true, id = i, confirmed = true , cost = 0}}
							modButtons[#modButtons+1] = button
						end
					end
				if modButtons ~= nil then
					exports.ft_menuBuilder:AddButtonTable("extras2", modButtons)
				end
				exports.ft_menuBuilder:Open("fx_customs") -- OPENS Fx_customs menu if not on motorcyle
			end
			vehicleInGarage = true
	    	TriggerServerEvent("fx_customs:UpdateVeh", veh_data )	 
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
----JINK DELETE OR COMMENT OUT AFTER THIS SPAWNS THE VEHICLES BY #4 LS CUSTOMS. THIS IS FOR DEBUGGING PURPOSES.
Citizen.CreateThread(function()
	for i=1,#vehicle_generator do
	 	local vehicle = GetHashKey(vehicle_generator[i].name)
	 	local x,y,z,h = vehicle_generator[i].x,vehicle_generator[i].y,vehicle_generator[i].z,vehicle_generator[i].h
	 	RequestModel(vehicle)
 		while not HasModelLoaded(vehicle) do
	 		Citizen.Wait(0)
		end
		CreateVehicle(vehicle, x, y, z, h, true, true)
	end
end)


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
			   		if DoesEntityExist(veh) then
				        drawTxt("Press ~b~HOME~w~ to enter ~b~Los Santos Customs ",4,1,0.5,0.8,1.0,255,255,255,255) -- DRAWS THE TEXT ON THE SCREEN
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
----------------------------------------------------
---------------[	EVENTS 		]-------------------
----------------------------------------------------
local firstspawn = 0
AddEventHandler('playerSpawned', function(spawn)
  if firstspawn == 0 then
	exports.ft_menuBuilder:Generator(menu)  -- Generates game menu on player spawn // (menu) is the name of the table storing the menu
    AddBlips()
    firstspawn = 1
  end
end)

RegisterNetEvent('fx_customs:LeaveGarage')
AddEventHandler('fx_customs:LeaveGarage', function(data)
	SetVehicleOutsideGarage()
end)

RegisterNetEvent('fx_customs:NeonSide') -- This event triggers how you want neons setup
AddEventHandler('fx_customs:NeonSide', function(data)
	local side = data.side
	if side == "front" then 
		neonSide = 2
		elseif side == "left" then
			neonSide = 0
			elseif side == "back" then
				neonSide = 3 
				elseif side == "all" then
					neonSide = 1
	end
end)

RegisterNetEvent('fx_customs:Paint')
AddEventHandler('fx_customs:Paint', function(data)
	local paint = data.paints
	--Citizen.Trace(" dumping paint data: " .. dump(data))
	if paint == "primary" then -- Sets the Primary Paint via a menu choice. 
		--Citizen.Trace(" In paint is 1: " .. tostring(paint))
		paintCar = 1
		elseif paint == "secondary" then -- Sets the Secondary Paint via a menu choice.
			--Citizen.Trace(" In paint is 2: " .. tostring(paint))
			paintCar = 2
			elseif paint == "pearl" then -- Sets the Pearlsecent Paint via a menu choice.
				--Citizen.Trace(" In paint is 3: " .. tostring(paint))
				paintCar = 3 
				elseif paint == "wheel" then -- Sets the Rim Paint via a menu choice.
					--Citizen.Trace(" In paint is 4: " .. tostring(paint))
					paintCar = 4
	end
end)

RegisterNetEvent('fx_customs:BackWheel') -- Most likely will remove this event as menus are working better than planned.
AddEventHandler('fx_customs:BackWheel', function(data)
	local wheels = data.wheels
	--Citizen.Trace(" dumping paint data: " .. dump(data))
	if wheels == "back" then 
		setWheel = 1
		elseif wheels == "front" then
			setWheel = 2
	end
end)

RegisterNetEvent('fx_customs:VehicleExtra') 
AddEventHandler('fx_customs:VehicleExtra', function(data)
	local extra = data.extra
	--Citizen.Trace(" dumping paint data: " .. dump(data))
	if extra == "true" then 
		--Citizen.Trace("SetExtra Event True :" .. tostring(setExtra))
		setExtra = true
		elseif extra == "false" then
			--Citizen.Trace("SetExtra Event False :" .. tostring(setExtra))
			setExtra = false
	end
end)

RegisterNetEvent('fx_customs:SetVehicleMod')
AddEventHandler('fx_customs:SetVehicleMod', function(data)
	local player = GetPlayerPed(-1)
	local veh = GetVehiclePedIsUsing(player)
	local damaged = IsVehicleDamaged(veh)
	local modtype = data.modtype
	local mod = data.mod
	local wheeltype = data.wtype
	local windowtint = data.tint
	local colorIndex = data.colorindex
	local neonSide = neonSide
	local paintCar = paintCar
	local r,g,b = data.r,data.g,data.b
	local plateIndex = data.plateindex
	local smoke = data.smoke
	local bulletProof = data.burst
	local xeon = data.xeon
	local turbo = data.turbo
	local id = data.id
	local extra = data.extra
	local vehData = data.veh_data
	
	if damaged then
		TriggerServerEvent("fx_customs:Notify", "We've applied your vehicle update maybe you might want a repair!")
	else
		TriggerServerEvent("fx_customs:Notify", "We've applied your vehicle update.")
	end
	
	SetVehicleModKit(veh, 0) -- Sets Modkit to be able to apply vehicle mods.
	if modtype ~= nil then
		--Citizen.Trace("Setting Mod Type to : " .. tostring(modtype) .. " | Setting mod to : " .. tostring(mod))
		SetVehicleMod(veh, modtype, mod)
	end
	if wheeltype ~= nil then
		SetVehicleWheelType(veh, wheeltype)
	end
	if windowtint ~= nil then
		--Citizen.Trace("Setting windowtint to : " .. tostring(windowtint))
		SetVehicleWindowTint(veh,  windowtint)
	end
	if r ~= nil and g ~= nil and b ~= nil and smoke ~= nil then -- Tire Smoke is nested with neon R/G/B in an Elseif to prevent double setting the RGB of
		 --Citizen.Trace("i'm setting tire smoke" .. tostring(smoke) .." | R :" .. tostring(r) .." | G : " .. tostring(g) .." | B : " .. tostring(b))
		 if smoke then
		 	ToggleVehicleMod(veh, 20, true)
			SetVehicleTyreSmokeColor(veh, r, g, b)
		end
	elseif r ~= nil and g ~= nil and b ~= nil and neonSide ~= nil then
		if neonSide == 2 then
			--Citizen.Trace("Side " .. tostring(neonSide))
			for i=0,3, 1 do 
				if i == 2 then
					SetVehicleNeonLightEnabled(veh, i, true)
					SetVehicleNeonLightsColour(veh, r, g, b)
				else
					SetVehicleNeonLightEnabled(veh, i, false)
				end
			end
			elseif neonSide == 3 then
				--Citizen.Trace(" | Side " .. tostring(neonSide))
				for i=0,3, 1 do 
					if i == 3 then
						SetVehicleNeonLightEnabled(veh, i, true)
						SetVehicleNeonLightsColour(veh, r, g, b)
					else
						SetVehicleNeonLightEnabled(veh, i, false)
					end
				end
				elseif neonSide == 0 then
					--Citizen.Trace(" | Side " .. tostring(neonSide))
					for i=0,3, 1 do
						if i <= 1 then
							SetVehicleNeonLightEnabled(veh, i, true)
							SetVehicleNeonLightsColour(veh, r, g, b)
						else
							SetVehicleNeonLightEnabled(veh, i, false)
						end
					end
					elseif neonSide == 1 then
						--Citizen.Trace(" | Side " .. tostring(neonSide))	 		
						for i=0,3, 1 do 
							SetVehicleNeonLightEnabled(veh, i, true)
							SetVehicleNeonLightsColour(veh, r, g, b)
						end

		end
	end
	if paintCar ~= nil and colorIndex ~= nil then
		if paintCar == 1 then
			local vehiclecol = table.pack(GetVehicleColours(veh))
			for k, v in pairs(vehiclecol) do
				if k == 2 then
					SetVehicleColours(veh, colorIndex, v)
					--Citizen.Trace("Setting colorIndex to : " .. tostring(colorIndex) .. "Setting v to : " .. tostring(v) )
				end
			end
			elseif paintCar == 2 then
				local vehiclecol = table.pack(GetVehicleColours(veh))
				for k, v in pairs(vehiclecol) do
					if k == 1 then
						SetVehicleColours(veh, v, colorIndex)
						--Citizen.Trace("Setting colorIndex to : " .. tostring(colorIndex) .. "Setting v to : " .. tostring(v) )
					end
				end
				elseif paintCar == 3 then
					local extracol = table.pack(GetVehicleExtraColours(veh))
					for k, v in pairs(extracol) do
						if k == 2 then
							SetVehicleExtraColours(veh, colorIndex, v)
							--Citizen.Trace("Setting colorIndex to : " .. tostring(colorIndex) .. "Setting v to : " .. tostring(v) )
						end
					end
					elseif paintCar == 4 then
						local extracol = table.pack(GetVehicleExtraColours(veh))
						for k, v in pairs(extracol) do
							if k == 1 then
								SetVehicleExtraColours(veh, v, colorIndex)
								--Citizen.Trace("Setting colorIndex to : " .. tostring(colorIndex) .. "Setting v to : " .. tostring(v) )
							end
						end
		end
	end
	if plateIndex ~= nil then
		Citizen.Trace(dump(vehData))
		SetVehicleNumberPlateTextIndex(veh, plateIndex)	
	end
	if bulletProof ~= nil then -- BulletProof tires are a toggle Triggered by the menu.
		if bulletProof then
			SetVehicleTyresCanBurst(veh, false)
		else
			SetVehicleTyresCanBurst(veh, true)
		end
	end
	if xeon ~= nil then -- Xeon headlights are a toggle triggered by the menu.
		if xeon then
			ToggleVehicleMod(veh, 22, true)
		else
			ToggleVehicleMod(veh, 22, false)
		end
	end
	if turbo ~= nil then --Turbo is a toggle triggered by the menu.
		if turbo then
			ToggleVehicleMod(veh, 18, true)
		else
			ToggleVehicleMod(veh, 18, false)
		end	
	end
	if id ~= nil then -- Set Vehicle extra for some reason false enabled the extra and true disabled?
		if setExtra then
			SetVehicleExtra(veh, id, false)
			--Citizen.Trace("SetExtra :" .. tostring(setExtra))
			elseif not setExtra then
				SetVehicleExtra(veh, id, true)
				--Citizen.Trace("SetExtra Else If : " .. tostring(setExtra))
		end
	end
end)

RegisterNetEvent('fx_customs:RepairVehicle')
AddEventHandler('fx_customs:RepairVehicle', function(paid)
	local player = GetPlayerPed(-1)
	local veh = GetVehiclePedIsUsing(player)
	local damaged = IsVehicleDamaged(veh)
	--Citizen.Trace("I'm Repairing Vehicle." .. veh)
	if damaged and paid then
		SetVehicleFixed(veh)
		TriggerServerEvent("fx_customs:Notify", "We've repaired your vehicle for a fee")
	else
		TriggerServerEvent("fx_customs:Notify", "You have nothing to repair.")
	end		
end)