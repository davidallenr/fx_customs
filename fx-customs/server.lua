  -- @Date:   2017-07-331
  -- @Project: FX Customs
  -- @Owner: Jink Left
  -- @LICENSE: NO LICENSE/LICENSE
  -- @Last modified time: 2017-07-31
----------------------------------------------------
---------------[MYSQL ASYNC FUNCTION]---------------
AddEventHandler('onMySQLReady', function ()
  FxFirstRun()
end)

function FxFirstRun() 
    local sql = "CREATE TABLE IF NOT EXISTS fx_customs (id int(11) NOT NULL AUTO_INCREMENT, steamid varchar(255) NOT NULL, steamname varchar(255) NOT NULL, vehicle_class varchar(60) DEFAULT NULL, model varchar(60) DEFAULT NULL, bike varchar(60) DEFAULT NULL, veh_state varchar(60) DEFAULT NULL, plate varchar(60) DEFAULT NULL, plate_index varchar(255) DEFAULT NULL, primary_color varchar(60) DEFAULT NULL, secondary_color varchar(60) DEFAULT NULL, pearl_color varchar(60) DEFAULT NULL, wheel_color varchar(60) DEFAULT NULL, wheeltype varchar(255) DEFAULT NULL, neon_left varchar(255) DEFAULT NULL, neon_right varchar(255) DEFAULT NULL, neon_front varchar(255) DEFAULT NULL, neon_back varchar(255) DEFAULT NULL, neon_r varchar(255) DEFAULT NULL, neon_g varchar(255) DEFAULT NULL, neon_b varchar(25) DEFAULT NULL, smoke_r varchar(255) DEFAULT NULL, smoke_g varchar(255) DEFAULT NULL, smoke_b varchar(255) DEFAULT NULL, spoilers varchar(255) DEFAULT NULL, front_bumper varchar(255) DEFAULT NULL, rear_bumper varchar(255) DEFAULT NULL, side_skirt varchar(255) DEFAULT NULL, exhaust varchar(255) DEFAULT NULL, frame varchar(255) DEFAULT NULL, grille varchar(255) DEFAULT NULL, hood varchar(255) DEFAULT NULL, fender varchar(255) DEFAULT NULL, right_fender varchar(255) DEFAULT NULL, roof varchar(255) DEFAULT NULL, engine varchar(255) DEFAULT NULL, brakes varchar(255) DEFAULT NULL, transmission varchar(255) DEFAULT NULL, horn varchar(255) DEFAULT NULL, suspension varchar(255) DEFAULT NULL, armor varchar(255) DEFAULT NULL, turbo varchar(255) DEFAULT NULL, tire_smoke varchar(255) DEFAULT NULL, xeon varchar(255) DEFAULT NULL, front_wheel varchar(255) DEFAULT NULL, back_wheel varchar(255) DEFAULT NULL, windowtint varchar(255) DEFAULT NULL, bulletproof varchar(255) DEFAULT NULL, PRIMARY KEY (id))"    
   -- print ("Creating FX-Customs DB")
    Wait(4000)    
    MySQL.Async.execute(sql, param)
    
    --print ("Finished FX_Custom DB creation")
end

function UpdateVehicleInfo(player, input)
  local steamid = GetUserSteamID(player)
    local steamname = GetPlayerName(player)
  if input ~= nil then
    print("START--------------------")
      for k,v in pairs(input) do
        if v ~= nil then
          if v.vehicle_name ~= nil then  
          vehicle_name = v.vehicle_name 
        end
        if v.model ~= nil then
          model = v.model
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
                                              elseif k == 19 then
                                                turbo = v
                                                elseif k == 21 then
                                                  tire_smoke = v
                                                  elseif k == 23 then
                                                    xeon = v
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
          -- print(tostring(windowtint))
        end
        if v.burst ~= nil then 
          bulletproof = v.burst
          -- print(tostring(bulletproof))
        end
        -- if v.custom_mods ~= nil then 
        -- end
      end
    end
  end
end

function AddVehicle(player)
  -- print(tostring(steamid))
  -- print(tostring(steamname))
  local steamid = GetUserSteamID(player)
    local steamname = GetPlayerName(player)
  MySQL.Async.fetchAll("SELECT * FROM fx_customs WHERE plate = @plate", { ['@plate'] = plate}, function (result)
  print("Running Query")
    if (not result[1]) then
        if not stolen then  
          print("Inserting Vehicle For First Time")
          MySQL.Async.execute("INSERT INTO fx_customs ( steamid, steamname, vehicle_class, model, bike, veh_state, plate, plate_index, primary_color, secondary_color, pearl_color, wheel_color, wheeltype, neon_r, neon_g, neon_b, neon_left, neon_right, neon_front, neon_back, smoke_r, smoke_g, smoke_b, spoilers, front_bumper, rear_bumper, side_skirt, exhaust, frame, grille, hood, fender, right_fender, roof, engine, brakes, transmission, horn, suspension, armor, turbo, tire_smoke, xeon, front_wheel, back_wheel, windowtint, bulletproof) VALUES (@steamid, @steamname, @vehicle_class, @model, @bike, @veh_state, @plate, @plate_index, @primary_color, @secondary_color, @pearl_color, @wheel_color, @wheeltype, @neon_r, @neon_g, @neon_b, @neon_left, @neon_right, @neon_front, @neon_back, @smoke_r, @smoke_g, @smoke_b, @spoilers, @front_bumper, @rear_bumper, @side_skirt, @exhaust, @frame, @grille, @hood, @fender, @right_fender, @roof, @engine, @brakes, @transmission, @horn, @suspension, @armor, @turbo, @tire_smoke, @xeon, @front_wheel, @back_wheel, @windowtint, @bulletproof) ",
              { ['@steamid'] = steamid, ['@steamname'] = steamname, ['@vehicle_class'] = vehicle_class, ['@model'] = model, ['@bike'] = bike, ['@veh_state'] = veh_state, ['@plate'] = plate, ['@plate_index'] = plate_index, ['@primary_color'] = primary_color, ['@secondary_color'] = secondary_color, ['@pearl_color'] = pearl_color, ['@wheel_color'] = wheel_color, ['@wheeltype'] = wheeltype, ['@neon_r'] = neon_r, ['@neon_g'] = neon_g, ['@neon_b'] = neon_b, ['@neon_left'] = neon_left, ['@neon_right'] = neon_right, ['@neon_front'] = neon_front, ['@neon_back'] = neon_back, ['@smoke_r'] = smoke_r, ['@smoke_g'] = smoke_g, ['@smoke_b'] = smoke_b, ['@spoilers'] = spoilers, ['@front_bumper'] = front_bumper, ['@rear_bumper'] = rear_bumper, ['@side_skirt'] = side_skirt, ['@exhaust'] = exhaust, ['@frame'] = frame, ['@grille'] = grille, ['@hood'] = hood, ['@fender'] = fender, ['@right_fender'] = right_fender, ['@roof'] = roof, ['@engine'] = engine, ['@brakes'] = brakes, ['@transmission'] = transmission, ['@horn'] = horn, ['@suspension'] = suspension, ['@armor'] = armor, ['@turbo'] = turbo, ['@tire_smoke'] = tire_smoke, ['@xeon'] = xeon, ['@front_wheel'] = front_wheel, ['@back_wheel'] = back_wheel, ['@windowtint'] = windowtint, ['@bulletproof'] = bulletproof}) 
      else
          print("Vehicle is coming back STOLEN so it is not added")
            Notify("Welcome to the shop!")
        end
    else
      print("Vehicle Has Been Updated") 
    MySQL.Async.execute( "UPDATE fx_customs SET steamid = @steamid, steamname = @steamname, vehicle_class = @vehicle_class, model = @model, bike = @bike, veh_state = @veh_state, plate = @plate, plate_index = @plate_index, primary_color = @primary_color, secondary_color = @secondary_color, pearl_color = @pearl_color, wheel_color = @wheel_color, wheeltype = @wheeltype, neon_r = @neon_r, neon_g = @neon_g, neon_b = @neon_b, neon_left = @neon_left, neon_right = @neon_right, neon_front = @neon_front, neon_back = @neon_back, smoke_r = @smoke_r, smoke_g = @smoke_g, smoke_b = @smoke_b, spoilers = @spoilers, front_bumper = @front_bumper, rear_bumper = @rear_bumper, side_skirt = @side_skirt, exhaust = @exhaust, frame = @frame, grille = @grille, hood = @hood, fender = @fender, right_fender = @right_fender, roof = @roof, engine = @engine, brakes = @brakes, transmission = @transmission, horn = @horn, suspension = @suspension, armor = @armor, turbo = @turbo, tire_smoke = @tire_smoke, xeon = @xeon, front_wheel = @front_wheel, back_wheel = @back_wheel, windowtint = @windowtint, bulletproof = @bulletproof WHERE plate = @plate",
      { ['@steamid'] = steamid, ['@steamname'] = steamname, ['@vehicle_class'] = vehicle_class, ['@model'] = model, ['@bike'] = bike, ['@veh_state'] = veh_state, ['@plate'] = plate, ['@plate_index'] = plate_index, ['@primary_color'] = primary_color, ['@secondary_color'] = secondary_color, ['@pearl_color'] = pearl_color, ['@wheel_color'] = wheel_color, ['@wheeltype'] = wheeltype, ['@neon_r'] = neon_r, ['@neon_g'] = neon_g, ['@neon_b'] = neon_b, ['@neon_left'] = neon_left, ['@neon_right'] = neon_right, ['@neon_front'] = neon_front, ['@neon_back'] = neon_back, ['@smoke_r'] = smoke_r, ['@smoke_g'] = smoke_g, ['@smoke_b'] = smoke_b, ['@spoilers'] = spoilers, ['@front_bumper'] = front_bumper, ['@rear_bumper'] = rear_bumper, ['@side_skirt'] = side_skirt, ['@exhaust'] = exhaust, ['@frame'] = frame, ['@grille'] = grille, ['@hood'] = hood, ['@fender'] = fender, ['@right_fender'] = right_fender, ['@roof'] = roof, ['@engine'] = engine, ['@brakes'] = brakes, ['@transmission'] = transmission, ['@horn'] = horn, ['@suspension'] = suspension, ['@armor'] = armor, ['@turbo'] = turbo, ['@tire_smoke'] = tire_smoke, ['@xeon'] = xeon, ['@front_wheel'] = front_wheel, ['@back_wheel'] = back_wheel, ['@windowtint'] = windowtint, ['@bulletproof'] = bulletproof}, function()
      end)
    end
  end)
end

----------------------------------------------------
---------------[  FUNCTIONS     ]---------------
function Notify(input)

local notification = { type = "pnotify"  }            -- Choices are (pnotify, normal)

  if(notification.type == "pnotify") then
        TriggerClientEvent("pNotify:SendNotification", -1, {
            text = "<strong> " .. input .." </strong> ",
                  type = "success",
                  progressBar = "false",
                  animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out", }, 
                  timeout = (1500),
                  layout = "centerLeft",
                  queue = "top",
            })
    elseif (notification.type == "normal") then 
      TriggerEvent("chatMessage", "Server", { 0, 0, 0 }, input)
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

function getPlayerID(source)
  return getIdentifier(GetPlayerIdentifiers(source))
end

function getIdentifier(id)
  for _, v in ipairs(id) do
    return v
  end
end
----------------------------------------------------
---------------[  EVENTS    ]-------------------
RegisterServerEvent('fx_customs:UpdateVeh')
AddEventHandler('fx_customs:UpdateVeh', function(updateveh) 
    local player = source
  local vdata = updateveh
  UpdateVehicleInfo(player, vdata)
    AddVehicle(player)
end)

RegisterServerEvent('fx_customs:SetVehicle')
AddEventHandler('fx_customs:SetVehicle', function(veh_data) 
    local player = source
  local vdata = veh_data
    UpdateVehicleInfo(player, vdata)
    AddVehicle(player)
end)

RegisterServerEvent('fx_customs:ConfirmMod')
AddEventHandler('fx_customs:ConfirmMod', function(data)
  local player = source
  local steamid = GetUserSteamID(player)
  local steamname = GetPlayerName(player)
  local price = data.cost
  local paid = false

  if data.confirmed ~= nil then
      local value = GetUserMoney(player, function(res) 
        local playerMoney = res
        local newMoney = playerMoney - price
        if playerMoney >= price then
          local sql = "UPDATE supertable SET money = @newMoney WHERE steamid = @id"
      local param = {newMoney = newMoney, id = steamid}
          MySQL.Async.fetchAll("SELECT * FROM fx_customs WHERE plate = @plate", { ['@plate'] = plate}, function (result)
            if result[1] then
              if data ~= nil then
                if data.modtype ~= nil then
                  print(tostring(data.modtype))
                  print(tostring(data.mod))
              --print("Setting Transmission")
                  if data.modtype == 0 and data.mod ~= result.spoilers then
                    MySQL.Async.execute(sql, param)
                      TriggerClientEvent('fx_customs:SetVehicleMod',-1,data)
                    elseif data.modtype == 1 and data.mod ~= result.front_bumper then
                    MySQL.Async.execute(sql, param)
                      TriggerClientEvent('fx_customs:SetVehicleMod',-1,data)
                    elseif data.modtype == 2 and data.mod ~= result.rear_bumper then
                    MySQL.Async.execute(sql, param)
                      TriggerClientEvent('fx_customs:SetVehicleMod',-1,data)
                    elseif data.modtype == 3 and data.mod ~= result.side_skirt then
                    MySQL.Async.execute(sql, param)
                      TriggerClientEvent('fx_customs:SetVehicleMod',-1,data)
                    elseif data.modtype == 4 and data.mod ~= result.exhaust then
                    MySQL.Async.execute(sql, param)
                      TriggerClientEvent('fx_customs:SetVehicleMod',-1,data)
                    elseif data.modtype == 5 and data.mod ~= result.frame then
                    MySQL.Async.execute(sql, param)
                      TriggerClientEvent('fx_customs:SetVehicleMod',-1,data)
                    elseif data.modtype == 6 and data.mod ~= result.grille then
                    MySQL.Async.execute(sql, param)
                      TriggerClientEvent('fx_customs:SetVehicleMod',-1,data)
                    elseif data.modtype == 7 and data.mod ~= result.hood then
                    MySQL.Async.execute(sql, param)
                      TriggerClientEvent('fx_customs:SetVehicleMod',-1,data)
                    elseif data.modtype == 8 and data.mod ~= result.fender then
                    MySQL.Async.execute(sql, param)
                      TriggerClientEvent('fx_customs:SetVehicleMod',-1,data)
                    elseif data.modtype == 9 and data.mod ~= result.right_fender then
                    MySQL.Async.execute(sql, param)
                      TriggerClientEvent('fx_customs:SetVehicleMod',-1,data)
                    elseif data.modtype == 10 and data.mod ~= result.roof then
                    MySQL.Async.execute(sql, param)
                      TriggerClientEvent('fx_customs:SetVehicleMod',-1,data)
                    elseif data.modtype == 11 and data.mod ~= result.engine then
                    MySQL.Async.execute(sql, param)
                      TriggerClientEvent('fx_customs:SetVehicleMod',-1,data)
                    elseif data.modtype == 12 and data.mod ~= result.brakes then
                    MySQL.Async.execute(sql, param)
                      TriggerClientEvent('fx_customs:SetVehicleMod',-1,data)
                    elseif data.modtype == 13 and data.mod ~= result.transmission then
                    MySQL.Async.execute(sql, param)
                      TriggerClientEvent('fx_customs:SetVehicleMod',-1,data)
                    elseif data.modtype == 14 and data.mod ~= result.horn then
                    MySQL.Async.execute(sql, param)
                      TriggerClientEvent('fx_customs:SetVehicleMod',-1,data)
                    elseif data.modtype == 15 and data.mod ~= result.suspension then
                    MySQL.Async.execute(sql, param)
                      TriggerClientEvent('fx_customs:SetVehicleMod',-1,data)
                    elseif data.modtype == 16 and data.mod ~= result.armor then
                    MySQL.Async.execute(sql, param)
                      TriggerClientEvent('fx_customs:SetVehicleMod',-1,data)
                    elseif data.modtype == 18 and data.mod ~= result.turbo then
                    MySQL.Async.execute(sql, param)
                      TriggerClientEvent('fx_customs:SetVehicleMod',-1,data)
                    elseif data.modtype == 20 and data.mod ~= result.tire_smoke then
                    MySQL.Async.execute(sql, param)
                      TriggerClientEvent('fx_customs:SetVehicleMod',-1,data)
                    elseif data.modtype == 22 and data.mod ~= result.xeon then
                    MySQL.Async.execute(sql, param)
                      TriggerClientEvent('fx_customs:SetVehicleMod',-1,data)
                    elseif data.modtype == 23 and data.mod ~= result.front_wheel and data.wtype ~= result.wheeltype then
                    MySQL.Async.execute(sql, param)
                      TriggerClientEvent('fx_customs:SetVehicleMod',-1,data)
                    elseif data.modtype == 24 and data.mod ~= result.back_wheel and data.wtype ~= result.wheeltype then
                    MySQL.Async.execute(sql, param)
                      TriggerClientEvent('fx_customs:SetVehicleMod',-1,data)
                    elseif data.colorindex ~= nil then
                    MySQL.Async.execute(sql, param)
                      TriggerClientEvent('fx_customs:SetVehicleMod',-1,data)
                    else
                      Notify("You already own that Mod!")
                    end
              -- data.tint
              -- data.r
              -- data.g
              -- data.b
              -- data.plateindex
              -- data.smoke
              -- data.burst
                  end

              end
            else
              Notify("That vehicle is coming back hot. The most we will do is repair it for you.")
            end

            end)
        else
          Notify("You did not have enough cash for the purchase!")
        end
      end)
  elseif data.repair ~= nil then
    local value = GetUserMoney(player, function(res) 
     -- print(tostring(steamid) .. " | " .. tostring(result) .. " | Data : " .. dump(data))
      local playerMoney = res
      local newMoney = playerMoney - price
      if playerMoney >= price then
          local paid = true
          MySQL.Async.execute("UPDATE supertable SET money = @newMoney WHERE steamid = @id", {newMoney = newMoney, id = steamid}, function ()
            end)
          TriggerClientEvent('fx_customs:RepairVehicle',-1, paid)
        else
          Notify("You did not have enough cash for the purchase!")
        end
    end)
  end

end)

RegisterServerEvent('fx_customs:Notify')
AddEventHandler('fx_customs:Notify', function(text)
  Notify(text)
end)
