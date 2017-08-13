  -- @Date:   2017-08-13
  -- @Project: FX Customs
  -- @Owner: Jink Left
  -- @LICENSE: NO LICENSE/LICENSE
  -- @Last modified time: 2017-08-13
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

----------------------------------------------------
---------------[	FUNCTIONS 		]---------------
----------------------------------------------------
function AddBlips()
  for i, pos in ipairs(locations) do
    local blip = AddBlipForCoord(pos.inside.x,pos.inside.y,pos.inside.z)
    SetBlipSprite(blip, 72)
    SetBlipScale(blip, 0.9)
    SetBlipAsShortRange(blip,true)
  end
end

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
  local hash = GetEntityModel(veh)
  local bike = IsThisModelABike(hash)
  local model = GetDisplayNameFromVehicleModel(hash) 
  local stolen = IsVehicleStolen(veh)
  local vehiclecol = table.pack(GetVehicleColours(veh))
  local extracol = table.pack(GetVehicleExtraColours(veh))
  local neoncolor = table.pack(GetVehicleNeonLightsColour(veh))
  local plate_index = GetVehicleNumberPlateTextIndex(veh) 
  local veh_state = math.floor(GetVehicleBodyHealth(veh))
  local plate_index = GetVehicleNumberPlateTextIndex(veh)
  local plate = GetVehicleNumberPlateText(veh)
  local windowtint = GetVehicleWindowTint(veh)
  local wheeltype = GetVehicleWheelType(veh)
  local turbo_tog = IsToggleModOn(veh, 18)
  local smoke_tog = IsToggleModOn(veh, 20)
  local xeon_tog = IsToggleModOn(veh, 22)
  local vehicle_class = GetVehicleClass(veh)
  local vehicle_smoke = table.pack(GetVehicleTyreSmokeColor(veh))
  local burst = GetVehicleTyresCanBurst(veh)
  local tempMods = {}
  local neonsides = {}
  local vehicleData = {}
  
	for i = 0, 24 do
		SetVehicleModKit(veh, 0)
		local vehMods = GetVehicleMod(veh, i)
		if vehMods ~= nil then
		  tempMods[#tempMods+1] = vehMods
		end
	end
	for i = 0, 3 do
		SetVehicleModKit(veh, 0)
		local neon = IsVehicleNeonLightEnabled(veh, i)
		if neon ~= nil then
			neonsides[#neonsides+1] = neon
		end
	end
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
							local custom_mods = { modtype = modType, mod = i}
			 				vehicleData[#vehicleData+1] = { custom_mods = custom_mods }
				 		end
			 		end
			 	end
		 	end
		end
	end

  vehicleData[#vehicleData+1] = { player = player }
  vehicleData[#vehicleData+1] = { veh = veh}
  vehicleData[#vehicleData+1] = { hash = hash}
  vehicleData[#vehicleData+1] = { turbo_tog = turbo_tog }
  vehicleData[#vehicleData+1] = { smoke_tog = smoke_tog }
  vehicleData[#vehicleData+1] = { xeon_tog = xeon_tog }
  vehicleData[#vehicleData+1] = { model = model }
  vehicleData[#vehicleData+1] = { bike = bike }
  vehicleData[#vehicleData+1] = { stolen = stolen }
  vehicleData[#vehicleData+1] = { vehiclecol = vehiclecol }
  vehicleData[#vehicleData+1] = { extracol = extracol }
  vehicleData[#vehicleData+1] = { neoncolor = neoncolor }
  vehicleData[#vehicleData+1] = { neonsides = neonsides }
  vehicleData[#vehicleData+1] = { veh_state = veh_state }
  vehicleData[#vehicleData+1] = { plate = plate }
  vehicleData[#vehicleData+1] = { burst = burst }
  vehicleData[#vehicleData+1] = { plate_index = plate_index }
  vehicleData[#vehicleData+1] = { windowtint = windowtint }
  vehicleData[#vehicleData+1] = { wheeltype = wheeltype }
  vehicleData[#vehicleData+1] = { vehicle_class = vehicle_class }
  vehicleData[#vehicleData+1] = { vehicle_smoke = vehicle_smoke }
  vehicleData[#vehicleData+1] = { tempMods = tempMods }

  local callback = vehicleData
  return callback

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

function SetVehicleInGarage()	
	local pos = insidePosition
	local player = GetPlayerPed(-1)
	local veh = GetVehiclePedIsIn(player,false)
	local model = GetEntityModel(veh)
	local bike = IsThisModelABike(model) 
	veh_data = GetVehicleData()	

	if DoesEntityExist(veh) then
	    if not exports.ft_menuBuilder:IsOpened() and GetLastInputMethod(2) then
		    if bike then -- IF THE PLAYER IS RIDING A MOTORCYLE THEN USE THIS MENU
				local buttons = {{ text = "Wheels", menu = "wheels2"  }, { text = "Accessories", menu = "accessories"  }, { text = "Paint", menu = "paint" }, { text = "Tuning", menu = "tuning2"  }, { text = "Lights", menu = "lights2"  },{ text = "Custom Mods", menu = "mods"  },{ text = "Vehicle Extras", menu = "extras"  }, { text = "Previous Menu", back = true }}
		    	local modButtons = {}
		    	exports.ft_menuBuilder:AddButton("fx_main", buttons)
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
							 				local button = { text = name, subText = cost['custom_mods'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = modType, mod = i, toggle = 0, confirmed = true , cost = cost['custom_mods'].total}} -- ADDS A BUTTON WITH THE CUSTOM MODS LABEL TEXT
							 				modButtons[#modButtons+1] = button

								 		end
							 		end
							 	end
						 	end
						end
					end
				if modButtons ~= nil then
					exports.ft_menuBuilder:AddButton("mods", modButtons) -- EXPORTS THIS TO THE MODS MENU
				end
				local modButtons = {}
				for i = 1,100 do --CHECKS FROM 1-100 FOR EXTRA OPTIONS OF VEHICLES. 100 IS EXCESSIVE, THE HIGHEST I'VE FOUND IS LIKE 19.
					SetVehicleModKit(veh, 0)
					local extra = DoesExtraExist(veh, i)
					if extra ~= nil and extra then
						local button = { text = "Vehicle Extra : " .. tostring(i), subText = "Free", eventServer = "fx_customs:ConfirmMod", data = { value = true, id = i, toggle = 0, confirmed = true , cost = 0}} -- ADDS A BUTTON FOR VEHICLE EXTRA MODS.
						modButtons[#modButtons+1] = button
					end
				end
				if modButtons ~= nil then
					exports.ft_menuBuilder:AddButton("extras2", modButtons)
				end
		    	exports.ft_menuBuilder:Open("fx_customs") -- OPENS Fx_customs menu if on motorcyle
			else
				local buttons = {{ text = "Wheels", menu = "wheels"  }, { text = "Accessories", menu = "accessories"  }, { text = "Paint", menu = "paint" }, { text = "Tuning", menu = "tuning"  }, { text = "Lights", menu = "lights"  }, { text = "Window Tint", menu = "windows"  },{ text = "Custom Mods", menu = "mods"  },{ text = "Vehicle Extras", menu = "extras"  }, { text = "Previous Menu", back = true }}
				local modButtons = {}
				exports.ft_menuBuilder:AddButton("fx_main", buttons)
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
						 				local button = { text = name, subText = cost['custom_mods'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = modType, mod = i, toggle = 0, confirmed = true , cost = cost['custom_mods'].total}}
						 				modButtons[#modButtons+1] = button	

							 		end
						 		end
						 	end
					 	end
					end
				end
				if modButtons ~= nil then
					exports.ft_menuBuilder:AddButton("mods", modButtons)
				end
				local modButtons = {}
				for i = 1,100 do
					SetVehicleModKit(veh, 0)
					local extra = DoesExtraExist(veh, i)
					if extra ~= nil and extra then
						local button = { text = "Vehicle Extra : " .. tostring(i), subText = "Free", eventServer = "fx_customs:ConfirmMod", data = { value = true, id = i, toggle = 0, confirmed = true , cost = 0}}
						modButtons[#modButtons+1] = button
					end
				end
				if modButtons ~= nil then
					exports.ft_menuBuilder:AddButton("extras2", modButtons)
				end
				exports.ft_menuBuilder:Open("fx_customs") -- OPENS Fx_customs menu if not on motorcyle
			end
			exports.ft_menuBuilder:CleanButtons("fx_main")
			exports.ft_menuBuilder:CleanButtons("mods")
			exports.ft_menuBuilder:CleanButtons("extras2")
			vehicleInGarage = true
	    	TriggerServerEvent("fx_customs:SetVehicle", veh_data )	 
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

function SetModSpecifics(data)
	local wheels = data.wheels
	local extra = data.extra
	local side = data.side
	local paint = data.paints	
	local specific = {}

	if extra == "enable" then 
		setExtra = 1
	elseif extra == "disable" then
		setExtra = 0
	end
	if wheels == "back" then 
		setWheel = 1
	elseif wheels == "front" then
		setWheel = 2
	end
	if side == "front" then 
		neonSide = 2
	elseif side == "left" then
		neonSide = 0
	elseif side == "back" then
		neonSide = 3 
	elseif side == "all" then
		neonSide = 1
	end

	if paint == "primary" then -- Sets the Primary Paint via a menu choice. 
		paintCar = 1
	elseif paint == "secondary" then -- Sets the Secondary Paint via a menu choice.
		paintCar = 2
	elseif paint == "pearl" then -- Sets the Pearlsecent Paint via a menu choice.
		paintCar = 3 
	elseif paint == "wheel" then -- Sets the Rim Paint via a menu choice.
		paintCar = 4
	end
	
	if paintCar ~= nil then
		specific[#specific+1] = { paintCar = paintCar }
	end
	if neonSide ~= nil then
		specific[#specific+1] = { neonSide = neonSide }
	end
	if setExtra ~= nil then
		specific[#specific+1] = { setExtra = setExtra }
	end

	local data = GetVehicleData()
	if data ~= nil then
		data[#data+1] = { specific = specific }
		TriggerServerEvent("fx_customs:UpdateVehicleInfo",data)
	end
end

function SetDatabasePlate(result)
local originaldata = result
	if originaldata ~= nil then
		for k,v in pairs(originaldata) do
		    if v ~= nil then
		    	if v.plate ~= nil then
		    		o_plate = v.plate 
		    	end
		    end
		end
	end
end

function SetDatabaseMods(result, data)
	local originaldata = result
	if originaldata ~= nil then
		for k,v in pairs(originaldata) do
		    if v ~= nil then
		       	if v.vehicle_name ~= nil then  
		          o_vehicle_name = v.vehicle_name 
		        end
		        if v.model ~= nil then
		          o_model = v.model
		        end
		        if v.xeon ~= nil then
		          o_xeon = v.xeon
		        end
		        if v.bike ~= nil then
		          o_bike = v.bike
		        end
		        if v.plate_index ~= nil then 
		          o_plate_index = v.plate_index
		        end 
		        if v.wheeltype ~= nil then
		          o_wheeltype = v.wheeltype
		        end
		        if v.front_wheel ~= nil then
		          o_front_wheel = v.front_wheel
		        end
		        if v.back_wheel ~= nil then
		          o_back_wheel = v.back_wheel
		        end
		        if v.windowtint ~= nil then 
		          o_windowtint = v.windowtint
		        end
		        if v.primary_color ~= nil then 
		          o_primary_color = v.primary_color
		        end
		        if v.secondary_color ~= nil then 
		          o_secondary_color = v.secondary_color
		        end
		        if v.pearl_color ~= nil then 
		          o_pearl_color = v.pearl_color
		        end
		        if v.wheel_color ~= nil then 
		          o_wheel_color = v.wheel_color
		        end
		        if v.neon_r ~= nil then
		        	o_neon_r = v.neon_r
		        end
		        if v.neon_g ~= nil then
		        	o_neon_g = v.neon_g
		        end
		        if v.neon_b ~= nil then
		        	o_neon_b = v.neon_b
		        end
		        if v.neon_front ~= nil then
		        	o_neon_front = v.neon_front
		        end
		        if v.neon_left ~= nil then
		        	o_neon_left = v.neon_left
		        end
		        if v.neon_right ~= nil then
		        	o_neon_right = v.neon_right
		        end
		        if v.neon_back ~= nil then
		        	o_neon_back = v.neon_back
		        end
			end
		end
	end
end

function SetVehicleMods(data,preview)
	local player = GetPlayerPed(-1)
	local veh = GetVehiclePedIsUsing(player)
	local plate = GetVehicleNumberPlateText(veh)
	local damaged = IsVehicleDamaged(veh)
	local modtype = data.modtype
	local mod = data.mod
	local wheeltype = data.wtype
	local windowtint = data.tint
	local colorIndex = data.colorindex
	local neonSide = neonSide
	local paintCar = paintCar
	local r,g,b = data.r,data.g,data.b
	local tr,tg,tb = data.tr,data.tg,data.tb
	local plateIndex = data.plateindex
	local bulletProof = data.burst
	local xeon = data.xeon
	local turbo = data.turbo
	local id = data.id
	local extra = data.extra
	local vehData = data.veh_data

	if data.reset and plate == o_plate then
		SetVehicleModKit(veh, 0) -- Sets Modkit to be able to apply vehicle mods.
		local hash = GetEntityModel(veh)
		local bike = IsThisModelABike(hash)
		if bike and o_front_wheel ~= nil and o_back_wheel ~= nil then
			SetVehicleWheelType(veh, 6)		
			SetVehicleMod(veh, 23, tonumber(o_front_wheel))
			SetVehicleMod(veh, 24, tonumber(o_back_wheel))
		elseif o_wheeltype ~= nil then
			SetVehicleWheelType(veh, tonumber(o_wheeltype))		
			SetVehicleMod(veh, 23, tonumber(o_front_wheel))
		end

		if o_primary_color ~= nil and o_secondary_color ~= nil and o_pearl_color ~= nil and o_wheel_color ~= nil then
			SetVehicleColours(veh, tonumber(o_primary_color), tonumber(o_secondary_color))
			SetVehicleExtraColours(veh, tonumber(o_pearl_color), tonumber(o_wheel_color))
		end
		if o_xeon ~= nil then -- Xeon headlights are a toggle triggered by the menu.
			if tonumber(o_xeon) == 1 then
				ToggleVehicleMod(veh, 22, true)
			elseif tonumber(o_xeon) == 0 then
				ToggleVehicleMod(veh, 22, false)
			end
		end
		if o_windowtint ~= nil and not bike then
			SetVehicleWindowTint(veh,  tonumber(o_windowtint))
		end
		if o_neon_r ~= nil and o_neon_g ~= nil and o_neon_b ~= nil and not bike then
			if tonumber(o_neon_back) == 0 and tonumber(o_neon_front) == 0 and tonumber(o_neon_left) == 0 and tonumber(o_neon_right) == 0 then
				SetVehicleNeonLightEnabled(veh, 0, false)
				SetVehicleNeonLightEnabled(veh, 1, false)
				SetVehicleNeonLightEnabled(veh, 2, false)
				SetVehicleNeonLightEnabled(veh, 3, false)	
			else
				SetVehicleNeonLightsColour(veh, tonumber(o_neon_r),tonumber(o_neon_g), tonumber(o_neon_b))
			end
		end
	else
		SetVehicleModKit(veh, 0) -- Sets Modkit to be able to apply vehicle mods.
		if plate == o_plate then
			if modtype ~= nil then
				if mod ~= nil then
					local vehMods = GetVehicleMod(veh, modtype)		
					if wheeltype ~= nil then
						SetVehicleWheelType(veh, wheeltype)
						SetVehicleMod(veh, modtype, mod)
					elseif vehMods == mod  and not preview then
						SetVehicleMod(veh, modtype, -1)
					else
						SetVehicleMod(veh, modtype, mod)
					end
				end
			end
			if windowtint ~= nil then
				SetVehicleWindowTint(veh, windowtint)
			end
			if tr ~= nil and tg ~= nil and tb ~= nil and data.smoke ~= nil then -- Tire Smoke is nested with neon R/G/B in an Elseif to prevent double setting the RGB of
			 	if data.enabled == 1 then
				 	ToggleVehicleMod(veh, 20, true)
				 	local updateveh = GetVehicleData()
					SetVehicleTyreSmokeColor(veh, tr, tg, tb)
				else
					ToggleVehicleMod(veh, 20, false)
				end
			elseif r ~= nil and g ~= nil and b ~= nil and neonSide ~= nil then
				if neonSide == 2 then
					for i=0,3, 1 do
						if data.enabled == 1 then
							if i == 2 then
								SetVehicleNeonLightEnabled(veh, i, true)
								SetVehicleNeonLightsColour(veh, r, g, b)
							else
								SetVehicleNeonLightEnabled(veh, i, false)
							end
						else 
							for i=0,3 do
								SetVehicleNeonLightEnabled(veh, i, false)
							end
						end
					end
				elseif neonSide == 3 then
					for i=0,3, 1 do 
						if data.enabled == 1 then
							if i == 3 then
								SetVehicleNeonLightEnabled(veh, i, true)
								SetVehicleNeonLightsColour(veh, r, g, b)
							else
								SetVehicleNeonLightEnabled(veh, i, false)
							end
						else 
							
						end
					end
				elseif neonSide == 0 then
					for i=0,3, 1 do
						if data.enabled == 1 then
							if i <= 1 then
								SetVehicleNeonLightEnabled(veh, i, true)
								SetVehicleNeonLightsColour(veh, r, g, b)
							else
								SetVehicleNeonLightEnabled(veh, i, false)
							end
						else
							for i=0,3 do
								SetVehicleNeonLightEnabled(veh, i, false)
							end
						end
					end
				elseif neonSide == 1 then 		
					for i=0,3, 1 do
						if data.enabled == 1 then
							SetVehicleNeonLightEnabled(veh, i, true)
							SetVehicleNeonLightsColour(veh, r, g, b)
						else 
							for i=0,3 do
								SetVehicleNeonLightEnabled(veh, i, false)
							end
						end
					end
				end
			end
			if paintCar ~= nil and colorIndex ~= nil then
				if paintCar == 1 then
					local vehiclecol = table.pack(GetVehicleColours(veh))
					for k, v in pairs(vehiclecol) do
						if k == 2 then
							SetVehicleColours(veh, colorIndex, v)
						end
					end
				elseif paintCar == 2 then
					local vehiclecol = table.pack(GetVehicleColours(veh))
					for k, v in pairs(vehiclecol) do
						if k == 1 then
							SetVehicleColours(veh, v, colorIndex)
						end
					end
				elseif paintCar == 3 then
					local extracol = table.pack(GetVehicleExtraColours(veh))
					for k, v in pairs(extracol) do
						if k == 2 then
							SetVehicleExtraColours(veh, colorIndex, v)
						end
					end
				elseif paintCar == 4 then
					local extracol = table.pack(GetVehicleExtraColours(veh))
					for k, v in pairs(extracol) do
						if k == 1 then
							SetVehicleExtraColours(veh, v, colorIndex)
						end
					end
				end
			end
			if plateIndex ~= nil then
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
				if setExtra == 1 then
					SetVehicleExtra(veh, id, false)
				elseif setExtra  == 0 then
					SetVehicleExtra(veh, id, true)
				end
			end
			if not preview and not data.menupaint then
			    -- exports.ft_menuBuilder:Freeze(true) WORKING ON COOLDOWN FEATURE
			    -- Citizen.Wait(1000)
			    -- exports.ft_menuBuilder:Freeze(false) 
				if damaged then
					TriggerServerEvent("fx_customs:Notify", "We've applied your vehicle update maybe you might want a repair!")
				else
					TriggerServerEvent("fx_customs:Notify", "We've applied your vehicle update.")
				end
				local updateveh = GetVehicleData()
				TriggerServerEvent("fx_customs:UpdateVehicleInfo",updateveh)
			end
		end
	end
end
----------------------------------------------------
---------------[	MAIN THREAD 		]---------------
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
			   		if DoesEntityExist(veh) then
				        drawTxt("Press ~b~ENTER~w~ to enter ~b~Los Santos Customs ",4,1,0.5,0.8,1.0,255,255,255,255) -- DRAWS THE TEXT ON THE SCREEN
				        if IsControlJustPressed(1, 201) and GetLastInputMethod(2) then -- ENTER KEY IS  201 ON CONTROLS	 	        	
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

RegisterNetEvent('fx_customs:OriginalState')
AddEventHandler('fx_customs:OriginalState', function(result)
	original_state = result
end)

RegisterNetEvent('fx_customs:LeaveGarage')
AddEventHandler('fx_customs:LeaveGarage', function(data)
	SetVehicleOutsideGarage()
end)

RegisterNetEvent('fx_customs:SetModSpecifics') -- This event triggers how you want neons setup
AddEventHandler('fx_customs:SetModSpecifics', function(data)
	if data ~= nil then
		SetModSpecifics(data)
	end
end)

RegisterNetEvent('fx_customs:SetOriginalMod')
AddEventHandler('fx_customs:SetOriginalMod', function(result)
	SetDatabaseMods(result)
end)

RegisterNetEvent('fx_customs:SetVehicleMod')
AddEventHandler('fx_customs:SetVehicleMod', function(data, preview, result)
	SetDatabasePlate(result)
	SetVehicleMods(data,preview)
end)

RegisterNetEvent('fx_customs:RepairVehicle')
AddEventHandler('fx_customs:RepairVehicle', function(paid)
	local player = GetPlayerPed(-1)
	local veh = GetVehiclePedIsUsing(player)
	local damaged = IsVehicleDamaged(veh)
	if damaged and paid then
		SetVehicleFixed(veh)
		TriggerServerEvent("fx_customs:Notify", "We've repaired your vehicle for a fee")
	else
		TriggerServerEvent("fx_customs:Notify", "You have nothing to repair.")
	end		
end)