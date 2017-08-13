  -- @Date:   2017-08-13
  -- @Project: FX Customs
  -- @Owner: Jink Left
  -- @LICENSE: NO LICENSE/LICENSE
  -- @Last modified time: 2017-08-13
---------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------[MYSQL ASYNC FUNCTION]--------------------------------------------------------------
AddEventHandler('onMySQLReady', function ()
  FxFirstRun()
end)

function FxFirstRun() 
    local sql = "CREATE TABLE IF NOT EXISTS fx_customs_cars (id int(11) NOT NULL AUTO_INCREMENT, steamid varchar(255) NOT NULL, user_group varchar(255) NOT NULL, vehicle_class varchar(60) DEFAULT NULL, model varchar(60) DEFAULT NULL, bike varchar(60) DEFAULT NULL, veh_state varchar(60) DEFAULT NULL, plate varchar(60) DEFAULT NULL, plate_index varchar(255) DEFAULT NULL, primary_color varchar(60) DEFAULT NULL, secondary_color varchar(60) DEFAULT NULL, pearl_color varchar(60) DEFAULT NULL, wheel_color varchar(60) DEFAULT NULL, wheeltype varchar(255) DEFAULT NULL, neon_left varchar(255) DEFAULT NULL, neon_right varchar(255) DEFAULT NULL, neon_front varchar(255) DEFAULT NULL, neon_back varchar(255) DEFAULT NULL, neon_r varchar(255) DEFAULT NULL, neon_g varchar(255) DEFAULT NULL, neon_b varchar(25) DEFAULT NULL, smoke_r varchar(255) DEFAULT NULL, smoke_g varchar(255) DEFAULT NULL, smoke_b varchar(255) DEFAULT NULL, spoilers varchar(255) DEFAULT NULL, front_bumper varchar(255) DEFAULT NULL, rear_bumper varchar(255) DEFAULT NULL, side_skirt varchar(255) DEFAULT NULL, exhaust varchar(255) DEFAULT NULL, frame varchar(255) DEFAULT NULL, grille varchar(255) DEFAULT NULL, hood varchar(255) DEFAULT NULL, fender varchar(255) DEFAULT NULL, right_fender varchar(255) DEFAULT NULL, roof varchar(255) DEFAULT NULL, engine varchar(255) DEFAULT NULL, brakes varchar(255) DEFAULT NULL, transmission varchar(255) DEFAULT NULL, horn varchar(255) DEFAULT NULL, suspension varchar(255) DEFAULT NULL, armor varchar(255) DEFAULT NULL, turbo varchar(255) DEFAULT NULL, tire_smoke varchar(255) DEFAULT NULL, xeon varchar(255) DEFAULT NULL, front_wheel varchar(255) DEFAULT NULL, back_wheel varchar(255) DEFAULT NULL, windowtint varchar(255) DEFAULT NULL, bulletproof varchar(255) DEFAULT NULL, PRIMARY KEY (id))"    
    local param = {}
    print ("Creating FX-Customs DB")
    Wait(2000)    
    MySQL.Async.execute(sql, param)    
    print ("Finished FX_Custom DB creation")
end

function AddVehicle(source)
  TriggerEvent('es:getPlayerFromId', source, function(user)
  local steamid = user.getIdentifier(user)
    local user_group = user.getGroup(user)
      MySQL.Async.fetchAll("SELECT * FROM fx_customs_cars WHERE plate = @plate", { ['@plate'] = plate}, function (result)
      if (not result[1]) then
        if not stolen then  
          first_insert = false
          MySQL.Async.execute("INSERT INTO fx_customs_cars ( steamid, user_group, vehicle_class, model, bike, veh_state, plate, plate_index, primary_color, secondary_color, pearl_color, wheel_color, wheeltype, neon_r, neon_g, neon_b, neon_left, neon_right, neon_front, neon_back, smoke_r, smoke_g, smoke_b, spoilers, front_bumper, rear_bumper, side_skirt, exhaust, frame, grille, hood, fender, right_fender, roof, engine, brakes, transmission, horn, suspension, armor, turbo, tire_smoke, xeon, front_wheel, back_wheel, windowtint, bulletproof) VALUES (@steamid, @user_group, @vehicle_class, @model, @bike, @veh_state, @plate, @plate_index, @primary_color, @secondary_color, @pearl_color, @wheel_color, @wheeltype, @neon_r, @neon_g, @neon_b, @neon_left, @neon_right, @neon_front, @neon_back, @smoke_r, @smoke_g, @smoke_b, @spoilers, @front_bumper, @rear_bumper, @side_skirt, @exhaust, @frame, @grille, @hood, @fender, @right_fender, @roof, @engine, @brakes, @transmission, @horn, @suspension, @armor, @turbo, @tire_smoke, @xeon, @front_wheel, @back_wheel, @windowtint, @bulletproof) ",
              { ['@steamid'] = steamid, ['@user_group'] = user_group, ['@vehicle_class'] = vehicle_class, ['@model'] = model, ['@bike'] = bike, ['@veh_state'] = veh_state, ['@plate'] = plate, ['@plate_index'] = plate_index, ['@primary_color'] = primary_color, ['@secondary_color'] = secondary_color, ['@pearl_color'] = pearl_color, ['@wheel_color'] = wheel_color, ['@wheeltype'] = wheeltype, ['@neon_r'] = neon_r, ['@neon_g'] = neon_g, ['@neon_b'] = neon_b, ['@neon_left'] = neon_left, ['@neon_right'] = neon_right, ['@neon_front'] = neon_front, ['@neon_back'] = neon_back, ['@smoke_r'] = smoke_r, ['@smoke_g'] = smoke_g, ['@smoke_b'] = smoke_b, ['@spoilers'] = spoilers, ['@front_bumper'] = front_bumper, ['@rear_bumper'] = rear_bumper, ['@side_skirt'] = side_skirt, ['@exhaust'] = exhaust, ['@frame'] = frame, ['@grille'] = grille, ['@hood'] = hood, ['@fender'] = fender, ['@right_fender'] = right_fender, ['@roof'] = roof, ['@engine'] = engine, ['@brakes'] = brakes, ['@transmission'] = transmission, ['@horn'] = horn, ['@suspension'] = suspension, ['@armor'] = armor, ['@turbo'] = turbo, ['@tire_smoke'] = tire_smoke, ['@xeon'] = xeon, ['@front_wheel'] = front_wheel, ['@back_wheel'] = back_wheel, ['@windowtint'] = windowtint, ['@bulletproof'] = bulletproof}) 
        end
      end
    end)
  end)
end

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------[  FUNCTIONS     ]---------------------------------------------------------------------------
function Notify(input)

  local notification = { type = "pnotify"  }            -- Choices are (pnotify, normal)

  if(notification.type == "pnotify") then
      TriggerClientEvent("pNotify:SendNotification", -1, {
          text = "<strong> " .. input .." </strong> ",
                type = "success",
                progressBar = "false",
                animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out", }, 
                timeout = (1000),
                layout = "centerLeft",
                queue = "top",
          })
  elseif (notification.type == "normal") then 
    TriggerEvent("chatMessage", "Server", { 0, 0, 0 }, input)
  end  
end

function UpdateVehicleInfo(source, input)
  if not preview then
    TriggerEvent('es:getPlayerFromId', source, function(user)
      local steamid = user.getIdentifier(user)
      local user_group = user.getGroup(user)
      if input ~= nil then
        for k,v in pairs(input) do
          if v ~= nil then
            if v.vehicle_name ~= nil then  
            vehicle_name = v.vehicle_name 
            end
            if v.model ~= nil then
              model = v.model
            end
            if v.turbo_tog ~= nil then
              turbo = v.turbo_tog
            end
            if v.smoke_tog ~= nil then
              tire_smoke = v.smoke_tog
            end
            if v.xeon_tog ~= nil then
              xeon = v.xeon_tog
            end
            if v.bike ~= nil then
              bike = v.bike
            end
            if v.veh_state ~= nil then
              veh_state = v.veh_state
            end
            if v.plate ~= nil then 
              plate = v.plate
            end
            if v.plate_index ~= nil then 
              plate_index = v.plate_index
            end 
            if v.veh ~= nil then 
              veh = v.veh
            end
            if v.stolen ~= nil then 
              stolen = v.stolen
            end
            if v.vehiclecol ~= nil then
              for k,v in pairs(v.vehiclecol) do
                if k == 1 then
                  primary_color = v
                elseif k == 2 then
                  secondary_color = v
                end
              end
            end
            if v.extracol ~= nil then
              for k,v in pairs(v.extracol) do
                if k == 1 then
                  pearl_color = v
                elseif k == 2 then
                  wheel_color = v
                end
              end
            end
            if v.wheeltype ~= nil then
              wheeltype = v.wheeltype
            end
            if v.neoncolor ~= nil then 
              for k,v in pairs(v.neoncolor) do
                if k == 1 then
                  neon_r = v
                elseif k == 2 then
                  neon_g = v
                elseif k == 3 then
                  neon_b = v
                end
              end
            end
            if v.neonsides ~= nil then
              for k,v in pairs(v.neonsides) do
                if k == 1 then
                  neon_left = v
                elseif k == 2 then
                  neon_right = v
                elseif k == 3 then
                  neon_front = v
                elseif k == 4 then
                  neon_back = v
                end
              end
            end
            if v.vehicle_smoke ~= nil then 
              for k,v in pairs(v.vehicle_smoke) do
                if k == 1 then
                  smoke_r = v
                elseif k == 2 then
                  smoke_g = v
                elseif k == 3 then
                  smoke_b = v
                end
              end
            end
            if v.tempMods ~= nil then
              for k,v in pairs(v.tempMods) do
                if k == 1 then
                  spoilers = v
                elseif k == 2 then
                  front_bumper = v
                elseif k == 3 then
                  rear_bumper = v
                elseif k == 4 then
                  side_skirt = v
                elseif k == 5 then
                  exhaust = v
                elseif k == 6 then
                  frame = v
                elseif k == 7 then
                  grille = v
                elseif k == 8 then
                  hood = v
                elseif k == 9 then
                  fender = v
                elseif k == 10 then
                  right_fender = v
                elseif k == 11 then
                  roof = v
                elseif k == 12 then
                  engine = v
                elseif k == 13 then
                  brakes = v
                elseif k == 14 then
                  transmission = v
                elseif k == 15 then
                  horn = v
                elseif k == 16 then
                  suspension = v
                elseif k == 17 then
                  armor = v
                elseif k == 24 then
                  front_wheel = v
                elseif k == 25 then
                  back_wheel = v
                end
              end
            end
            if v.vehicle_class ~= nil then
              if v.vehicle_class == 0 then
                vehicle_class = "Compact"
              elseif v.vehicle_class == 1 then
                vehicle_class = "Sedan"
              elseif v.vehicle_class == 2 then
                vehicle_class = "SUV"
              elseif v.vehicle_class == 3 then
                vehicle_class = "Coupes"
              elseif v.vehicle_class == 4 then
                vehicle_class = "Muscle"
              elseif v.vehicle_class == 5 then
                vehicle_class = "Sport Classic"
              elseif v.vehicle_class == 6 then
                vehicle_class = "Sports"
              elseif v.vehicle_class == 7 then
                vehicle_class = "Super"
              elseif v.vehicle_class == 8 then
                vehicle_class = "Motorcycle"
              elseif v.vehicle_class == 9 then
                vehicle_class = "Off-Road"
              elseif v.vehicle_class == 10 then
                vehicle_class = "Industrial"
              elseif v.vehicle_class == 11 then
                vehicle_class = "Utility"
              elseif v.vehicle_class == 12 then
                vehicle_class = "Van"
              elseif v.vehicle_class == 13 then
                vehicle_class = "Cycle"
              elseif v.vehicle_class == 14 then
                vehicle_class = "Boat"
              elseif v.vehicle_class == 15 then
                vehicle_class = "Helicopter"
              elseif v.vehicle_class == 16 then
                vehicle_class = "Plane"
              elseif v.vehicle_class == 17 then
                vehicle_class = "Service"
              elseif v.vehicle_class == 18 then
                vehicle_class = "Emergency"
              elseif v.vehicle_class == 19 then
                vehicle_class = "Military"
              elseif v.vehicle_class == 20 then
                vehicle_class = "Commercial"
              elseif v.vehicle_class == 21 then
                vehicle_class = "Train"
              end
            end
            if v.windowtint ~= nil then 
              windowtint = v.windowtint
            end
            if v.burst ~= nil then 
              bulletproof = v.burst
            end
            if v.specific ~= nil then
              for k,v in pairs(v.specific) do
                if v.paintCar == 1 then
                  paintCar = 1
                elseif v.paintCar == 2 then
                  paintCar = 2
                elseif v.paintCar == 3 then
                  paintCar = 3
                elseif v.paintCar == 4 then
                  paintCar = 4
                end   
                if v.neonSide == 0 then
                  neonSide = 0
                elseif v.neonSide == 1 then
                  neonSide = 1
                elseif v.neonSide == 2 then
                  neonSide = 2
                elseif v.neonSide == 3 then
                  neonSide = 3
                end 
                if v.setExtra ~= nil then
                  if v.setExtra == 1 then
                    set_extra = 1
                  elseif v.setExtra == 0 then
                    set_extra = 0
                  end
                end
              end
            end
          end
        end
      end
    end)
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

function GetVehicle(identifier)
  return MySQL.Sync.fetchAll("SELECT * FROM fx_customs_cars WHERE steamid = @steamid AND plate = @plate", { ['@steamid'] = identifier, ['@plate'] = plate })
end

function UpdateDB(type,identifier,mod)
  MySQL.Async.fetchAll("SELECT * FROM fx_customs_cars WHERE plate = @plate", { ['@plate'] = plate }, function (result)
    MySQL.Sync.execute("UPDATE fx_customs_cars SET "..type.." = @mod WHERE steamid=@steamid AND plate = @plate",{['@mod']= mod,['@steamid']= identifier, ['@plate'] = plate})
  end)
end
----------------------------------------------------
---------------[  EVENTS    ]-----------------------
RegisterServerEvent('fx_customs:Notify')
AddEventHandler('fx_customs:Notify', function(text)
  Notify(text)
end)

RegisterServerEvent('print')
AddEventHandler('print', function(text)
    print(text)
end)

RegisterServerEvent('fx_customs:SetCurerentState') -- Triggered from client function SetVehicleInGarage()
AddEventHandler('fx_customs:SetCurrentState', function(data) 
  local source = source
  TriggerEvent('es:getPlayerFromId', source, function(user)
    local steamid = user.getIdentifier(user)
    local result = GetVehicle(steamid)
    TriggerClientEvent("fx_customs:SetOriginalMod", -1, result,data)
  end)
end)

RegisterServerEvent('fx_customs:SetVehicle') -- Triggered from client function SetVehicleInGarage()
AddEventHandler('fx_customs:SetVehicle', function(veh_data) 
  local source = source
  local vdata = veh_data
  UpdateVehicleInfo(source, vdata)
  AddVehicle(source)
  Wait(600)
  TriggerEvent('es:getPlayerFromId', source, function(user)
    local steamid = user.getIdentifier(user)
    local result = GetVehicle(steamid)    
    if result[1] then
      TriggerClientEvent("fx_customs:SetOriginalMod", -1, result)
    end
  end)
end)

RegisterServerEvent('fx_customs:UpdateVehicleInfo') -- Triggered from client Paint,Extra,Neon,SetVehicleMod
AddEventHandler('fx_customs:UpdateVehicleInfo', function(data) 
  local source = source
  UpdateVehicleInfo(source, data)
  TriggerEvent('es:getPlayerFromId', source, function(user)
    local steamid = user.getIdentifier(user)
    local result = GetVehicle(steamid)
    TriggerClientEvent("fx_customs:SetOriginalMod", -1, result,data)
  end)
end)

RegisterNetEvent('fx_customs:ResetMods')
AddEventHandler('fx_customs:ResetMods', function(data)
  preview = false
  TriggerEvent('es:getPlayerFromId', source, function(user)
    local steamid = user.getIdentifier(user)
    local result = GetVehicle(steamid) -- LOOK INTO THIS   
    TriggerClientEvent("fx_customs:SetVehicleMod", -1, data, preview, result)
  end)
end)

RegisterNetEvent('fx_customs:PreviewMod')
AddEventHandler('fx_customs:PreviewMod', function(data)
  preview = true
  TriggerEvent('es:getPlayerFromId', source, function(user)
    local steamid = user.getIdentifier(user)
    local result = GetVehicle(steamid) -- LOOK INTO THIS   
    TriggerClientEvent("fx_customs:SetVehicleMod", -1, data, preview, result)
  end)
end)

RegisterServerEvent('fx_customs:ConfirmMod')
AddEventHandler('fx_customs:ConfirmMod', function(data)
  TriggerEvent('es:getPlayerFromId', source, function(user)
      local steamid = user.getIdentifier(user)
      local user_group = user.getGroup(user)
      preview = false
      local price = data.cost
      local paid = false
      if data.confirmed ~= nil then
      local playerMoney = user.getMoney(user)
        if playerMoney >= price then
          local update = "money = @newMoney"
          MySQL.Async.fetchAll("SELECT * FROM fx_customs_cars WHERE plate = @plate", { ['@plate'] = plate }, function (result)
            if result[1] then
              if data ~= nil then
                local vmod = result[1]
                local mod = data.mod
                local modtype = data.modtype
                if modtype == 0 or modtype == 1 or modtype == 2 or modtype == 3 or modtype == 4 or modtype == 5 or modtype == 6 or modtype == 7 or modtype == 8 or modtype == 9 or modtype == 10 then
                  user.removeMoney(price)   
                  TriggerClientEvent('fx_customs:SetVehicleMod',-1,data,preview,result)
                  if modtype == 0 then
                    UpdateDB("spoilers",steamid,mod)
                  elseif modtype == 1 then
                    UpdateDB("front_bumper",steamid,mod)
                  elseif modtype == 2 then
                    UpdateDB("rear_bumper",steamid,mod)
                  elseif modtype == 3 then
                    UpdateDB("side_skirt",steamid,mod) 
                  elseif modtype == 4 then
                    UpdateDB("exhaust",steamid,mod)
                  elseif modtype == 5 then
                    UpdateDB("frame",steamid,mod)
                  elseif modtype == 6 then
                    UpdateDB("grille",steamid,mod)
                  elseif modtype == 7 then
                    UpdateDB("hood",steamid,mod) 
                  elseif modtype == 8 then 
                    UpdateDB("fender",steamid,mod) 
                  elseif modtype == 9 then
                    UpdateDB("right_fender",steamid,mod)
                  elseif modtype == 10 then
                    UpdateDB("roof",steamid,mod)
                  end
                elseif modtype == 11 then
                  if tonumber(mod) == tonumber(vmod.engine) then
                    Notify("You already own that engine mod!")
                  else
                    user.removeMoney(price)
                    TriggerClientEvent('fx_customs:SetVehicleMod',-1,data,preview,result)
                    UpdateDB("engine",steamid,mod)
                  end
                elseif modtype == 12 then
                  if tonumber(mod) == tonumber(vmod.brakes) then
                    Notify("You already own those brakes!")
                  else
                    user.removeMoney(price)
                    TriggerClientEvent('fx_customs:SetVehicleMod',-1,data,preview,result)
                    UpdateDB("brakes",steamid,mod)
                  end
                elseif modtype == 13 then
                  if tonumber(mod) == tonumber(vmod.transmission) then
                    Notify("You already own that transmission!")
                  else
                    user.removeMoney(price)
                    TriggerClientEvent('fx_customs:SetVehicleMod',-1,data,preview,result)
                    UpdateDB("transmission",steamid,mod)
                  end
                elseif modtype == 14 then
                  if tonumber(mod) == tonumber(vmod.horn) then
                    Notify("You already own that horn!")
                  else
                    user.removeMoney(price)
                    TriggerClientEvent('fx_customs:SetVehicleMod',-1,data,preview,result)
                    UpdateDB("horn",steamid,mod)
                  end
                elseif modtype == 15 then
                  if tonumber(mod) == tonumber(vmod.suspension) then
                    Notify("You already own that suspension!")
                  else
                    user.removeMoney(price)
                    TriggerClientEvent('fx_customs:SetVehicleMod',-1,data,preview,result)
                    UpdateDB("suspension",steamid,mod)
                  end
                elseif modtype == 16 then
                  if tonumber(mod) == tonumber(vmod.armor) then
                    Notify("You already own that vehicle plating!")
                  else
                    user.removeMoney(price)
                    TriggerClientEvent('fx_customs:SetVehicleMod',-1,data,preview,result)
                    UpdateDB("armor",steamid,mod)
                  end 
                elseif modtype == 23 or modtype == 24 then
                  local wtype = data.wtype
                  if tonumber(vmod.bike) == 1 then
                    if tonumber(mod) == tonumber(vmod.front_wheel) then
                      Notify("You already own those wheels!")
                    elseif tonumber(mod) == tonumber(vmod.back_wheel) then
                      Notify("You already own those wheels!")
                    else  
                      TriggerClientEvent('fx_customs:SetVehicleMod',-1,data,preview,result)
                      if modtype == 23 then
                        UpdateDB("front_wheel",steamid,mod)
                      elseif modtype == 24 then
                        UpdateDB("back_wheel",steamid,mod)
                      end
                      UpdateDB("wheeltype",steamid,wtype)
                    end
                  else
                    if tonumber(mod) == tonumber(vmod.front_wheel) then
                      Notify("You already own those wheels!")
                    else
                      user.removeMoney(price)
                      TriggerClientEvent('fx_customs:SetVehicleMod',-1,data,preview,result)
                      UpdateDB("front_wheel",steamid,mod)
                      UpdateDB("wheeltype",steamid,wtype)
                    end
                  end
                elseif data.turbo ~= nil then 
                  if tonumber(vmod.turbo) == tonumber(data.toggle) then
                    Notify("You already bought this!")
                  else
                    user.removeMoney(price)
                    TriggerClientEvent('fx_customs:SetVehicleMod',-1,data,preview,result)
                    UpdateDB("turbo",steamid,data.turbo)
                  end
                elseif data.id ~= nil then
                  if set_extra ~= nil then
                    user.removeMoney(price)
                    TriggerClientEvent('fx_customs:SetVehicleMod',-1,data,preview,result)
                    -- EXTRA NOT CURRENTLY SAVED TO DB
                  end
                elseif data.burst ~= nil then 
                  local burst = data.burst
                  if tonumber(burst) and tonumber(vmod.bulletproof) == 0 then
                    Notify("You already have a this mod!")
                  else
                    user.removeMoney(price)
                    TriggerClientEvent('fx_customs:SetVehicleMod',-1,data,preview,result)
                    UpdateDB("bulletproof",steamid,mod)
                  end
                elseif data.xeon ~= nil then 
                  if tonumber(vmod.xeon) == tonumber(data.toggle) then
                    Notify("You already bought this!")
                  else
                    user.removeMoney(price)
                    TriggerClientEvent('fx_customs:SetVehicleMod',-1,data,preview,result)
                    UpdateDB("xeon",steamid,data.xeon)
                  end
                elseif data.tint ~= nil then 
                  local tint = data.tint
                  if tonumber(tint) == tonumber(vmod.windowtint) then
                    Notify("You already have a this mod!")
                  else
                    user.removeMoney(price)
                    TriggerClientEvent('fx_customs:SetVehicleMod',-1,data,preview,result)
                    UpdateDB("windowtint",steamid,data.tint)
                  end
                elseif data.plateindex ~= nil then 
                  local plate = data.plateindex
                  if tonumber(plate) == tonumber(vmod.plate_index) then
                    Notify("You already have a this mod!")
                  else
                    user.removeMoney(price)
                    TriggerClientEvent('fx_customs:SetVehicleMod',-1,data,preview,result)
                    UpdateDB("plate_index",steamid,data.plateindex)
                  end     
                elseif data.colorindex ~= nil then
                  local colorindex = data.colorindex
                  if paintCar == 1 then -- Sets the Primary Paint via a menu choice. 
                    if tonumber(colorindex) == tonumber(vmod.primary_color) then
                      Notify("You've already painted your vehicles body that color!")
                    else
                      user.removeMoney(price)
                      TriggerClientEvent('fx_customs:SetVehicleMod',-1,data,preview,result)
                      UpdateDB("primary_color",steamid,colorindex)
                    end
                  elseif paintCar == 2 then -- Sets the Secondary Paint via a menu choice.
                    if tonumber(colorindex) == tonumber(vmod.secondary_color) then
                      Notify("You've already painted part of your vehicles body that color!")
                    else
                      user.removeMoney(price)
                      TriggerClientEvent('fx_customs:SetVehicleMod',-1,data,preview,result)
                      UpdateDB("secondary_color",steamid,colorindex)
                    end   
                  elseif paintCar == 3 then -- Sets the Pearlsecent Paint via a menu choice.
                    if tonumber(colorindex) == tonumber(vmod.pearl_color) then
                      Notify("You already have that colored shimmer!")
                    else
                      user.removeMoney(price)
                      TriggerClientEvent('fx_customs:SetVehicleMod',-1,data,preview,result)
                      UpdateDB("pearl_color",steamid,colorindex)
                    end       
                  elseif paintCar == 4 then -- Sets the Rim Paint via a menu choice.
                    if tonumber(colorindex) == tonumber(vmod.wheel_color) then
                      Notify("Your rims are already that color!")
                    else
                      user.removeMoney(price)
                      TriggerClientEvent('fx_customs:SetVehicleMod',-1,data,preview,result)
                      UpdateDB("wheel_color",steamid,colorindex)
                    end             
                  end
                elseif neonSide ~= nil or data.smoke ~= nil then
                  local r,g,b = data.r,data.g,data.b
                  local tr,tg,tb = data.tr,data.tg,data.tb
                  local vmod = result[1]
                  if (tonumber(r) == tonumber(vmod.neon_r)) and (tonumber(g) == tonumber(vmod.neon_g)) and (tonumber(b) == tonumber(vmod.neon_b)) then
                    Notify("You've already set your neons to that color!")
                  elseif (tonumber(tr) == tonumber(vmod.smoke_r)) and (tonumber(tg) == tonumber(vmod.smoke_g)) and (tonumber(tb) == tonumber(vmod.smoke_b)) then
                    Notify("Your tire smoke is already that color!")
                  elseif data.modtype == nil then
                    user.removeMoney(price)
                    TriggerClientEvent('fx_customs:SetVehicleMod',-1,data,preview,result)
                    if r ~= nil and g ~= nil and b ~= nil then
                        UpdateDB("neon_r",steamid,r)
                        UpdateDB("neon_g",steamid,g)
                        UpdateDB("neon_b",steamid,b)
                        if tonumber(neonSide) == 1 then
                          UpdateDB("neon_front", steamid, 1)
                          UpdateDB("neon_left", steamid, 1)
                          UpdateDB("neon_right", steamid, 1)
                          UpdateDB("neon_back", steamid, 1)
                        elseif tonumber(neonSide) == 2 then
                          UpdateDB("neon_front", steamid, 1)
                          UpdateDB("neon_left", steamid, 0)
                          UpdateDB("neon_right", steamid, 0)
                          UpdateDB("neon_back", steamid, 0)
                        elseif tonumber(neonSide) == 3 then
                          UpdateDB("neon_front", steamid, 0)
                          UpdateDB("neon_left", steamid, 0)
                          UpdateDB("neon_right", steamid, 0)
                          UpdateDB("neon_back", steamid, 1)
                        elseif tonumber(neonSide) == 0 then
                          UpdateDB("neon_front", steamid, 0)
                          UpdateDB("neon_left", steamid, 0)
                          UpdateDB("neon_right", steamid, 0)
                          UpdateDB("neon_back", steamid, 0)
                        end
                    elseif tr ~= nil and tg ~= nil and tb ~= nil then
                        UpdateDB("smoke_r",steamid,tr)
                        UpdateDB("smoke_g",steamid,tg)
                        UpdateDB("smoke_b",steamid,tb)
                    end
                  end 
                end 
              end
            else
              Notify("That vehicle is coming back hot. The most we will do is repair it for you.")
            end
          end) 
        else
          Notify("You did not have enough cash for the purchase!")
        end
    elseif data.repair ~= nil then 
      local playerMoney = user.getMoney(user)
      if playerMoney >= price then
        local paid = true
        if veh_state < 1000 then
          user.removeMoney(price)
        end
        TriggerClientEvent('fx_customs:RepairVehicle',-1,paid)
      else
        Notify("You did not have enough cash for the purchase!")
      end
    end
  end)
end)