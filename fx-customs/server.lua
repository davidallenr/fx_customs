  -- @Date:   2017-08-05
  -- @Project: FX Customs
  -- @Owner: Jink Left
  -- @LICENSE: NO LICENSE/LICENSE
  -- @Last modified time: 2017-08-05
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
        end
        if v.burst ~= nil then 
          bulletproof = v.burst
        end
        if v.specific ~= nil then
          for k,v in pairs(v.specific) do
          print(tostring(v.paintCar))
            if v.paintCar == 1 then
              print("setting paint car 1")
              paintCar = 1
            elseif v.paintCar == 2 then
              print("setting paint car 2")
              paintCar = 2
            elseif v.paintCar == 3 then
              print("setting paint car 3")
              paintCar = 3
            elseif v.paintCar == 4 then
              print("setting paint car 4")
              paintCar = 4
            end   
            if v.neonSide ~= nil then
              print("setting NEON SIDE")
              neonSide = 1
            end
            if v.smoke ~= nil then
              print("setting SMOKE car 4")
              smoke = 1
            end     
          end
        end
      end
    end
  end
end

function AddVehicle(player)
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
                  if data.mod ~= nil then
                    local modtype = data.modtype
                    local mod = data.mod
                    local vmod = result[1]

                    if modtype == 0 then
                      if tonumber(mod) == tonumber(vmod.spoilers) then
                          Notify("You already own that spoiler!")
                        else
                        MySQL.Async.execute(sql, param)
                          TriggerClientEvent('fx_customs:SetVehicleMod',-1,data)
                        end
                      elseif modtype == 1 then
                      if tonumber(tmod) == tonumber(vmod.bumper) then
                          Notify("You already own that bumper!")
                        else
                        MySQL.Async.execute(sql, param)
                          TriggerClientEvent('fx_customs:SetVehicleMod',-1,data)
                        end
                      elseif modtype == 2 then
                      if tonumber(mod) == tonumber(vmod.rear_bumper) then
                          Notify("You already own that bumper!")
                        else
                        MySQL.Async.execute(sql, param)
                          TriggerClientEvent('fx_customs:SetVehicleMod',-1,data)
                        end
                      elseif modtype == 3 then
                      if tonumber(mod) == tonumber(vmod.side_skirt) then
                          Notify("You already own that side skirt!")
                        else
                        MySQL.Async.execute(sql, param)
                          TriggerClientEvent('fx_customs:SetVehicleMod',-1,data)
                        end
                      elseif modtype == 4 then
                      if tonumber(mod) == tonumber(vmod.exhaust) then
                          Notify("You already own that exhaust!")
                        else
                        MySQL.Async.execute(sql, param)
                          TriggerClientEvent('fx_customs:SetVehicleMod',-1,data)
                        end
                      elseif modtype == 5 then
                      if tonumber(mod) == tonumber(vmod.frame) then
                          Notify("You already own that frame mod!")
                        else
                        MySQL.Async.execute(sql, param)
                          TriggerClientEvent('fx_customs:SetVehicleMod',-1,data)
                        end
                      elseif modtype == 6 then
                      if tonumber(mod) == tonumber(vmod.grille) then
                          Notify("You already own that grille!")
                        else
                        MySQL.Async.execute(sql, param)
                          TriggerClientEvent('fx_customs:SetVehicleMod',-1,data)
                        end
                      elseif modtype == 7 then
                      if tonumber(mod) == tonumber(vmod.transmission) then
                          Notify("You already own that transmission!")
                        else
                        MySQL.Async.execute(sql, param)
                          TriggerClientEvent('fx_customs:SetVehicleMod',-1,data)
                        end
                      elseif modtype == 8 then
                      if tonumber(mod) == tonumber(vmod.fender) then
                          Notify("You already own that fender!")
                        else
                        MySQL.Async.execute(sql, param)
                          TriggerClientEvent('fx_customs:SetVehicleMod',-1,data)
                        end
                      elseif modtype == 9 then
                      if tonumber(mod) == tonumber(vmod.right_fender) then
                          Notify("You already own that fender!")
                        else
                        MySQL.Async.execute(sql, param)
                          TriggerClientEvent('fx_customs:SetVehicleMod',-1,data)
                        end
                      elseif modtype == 10 then
                      if tonumber(mod) == tonumber(vmod.roof) then
                          Notify("You already own that Mod!")
                        else
                        MySQL.Async.execute(sql, param)
                          TriggerClientEvent('fx_customs:SetVehicleMod',-1,data)
                        end
                      elseif modtype == 11 then
                      if tonumber(mod) == tonumber(vmod.engine) then
                          Notify("You already own that engine mod!")
                        else
                        MySQL.Async.execute(sql, param)
                          TriggerClientEvent('fx_customs:SetVehicleMod',-1,data)
                        end
                      elseif modtype == 12 then
                      if tonumber(mod) == tonumber(vmod.brakes) then
                          Notify("You already own those brakes!")
                        else
                        MySQL.Async.execute(sql, param)
                          TriggerClientEvent('fx_customs:SetVehicleMod',-1,data)
                        end
                      elseif modtype == 13 then
                        if tonumber(mod) == tonumber(vmod.transmission) then
                          Notify("You already own that transmission!")
                        else
                        MySQL.Async.execute(sql, param)
                          TriggerClientEvent('fx_customs:SetVehicleMod',-1,data)
                        end
                      elseif modtype == 14 then
                      if tonumber(mod) == tonumber(vmod.horn) then
                          Notify("You already own that horn!")
                        else
                        MySQL.Async.execute(sql, param)
                          TriggerClientEvent('fx_customs:SetVehicleMod',-1,data)
                        end
                      elseif modtype == 15 then
                      if tonumber(mod) == tonumber(vmod.suspension) then
                          Notify("You already own that suspension!")
                        else
                        MySQL.Async.execute(sql, param)
                          TriggerClientEvent('fx_customs:SetVehicleMod',-1,data)
                        end
                      elseif modtype == 16 then
                      if tonumber(mod) == tonumber(vmod.armor) then
                          Notify("You already own that vehicle plating!")
                        else
                        MySQL.Async.execute(sql, param)
                          TriggerClientEvent('fx_customs:SetVehicleMod',-1,data)
                        end
                      elseif modtype == 20 then
                        if smoke ~= nil then
                          local r,g,b = data.r,data.g,data.b
                      local vmod = result[1]
                      if smoke ~= nil then -- Sets the Primary Paint via a menu choice. 
                      if tonumber(r) == tonumber(vmod.smoke_r) then
                        if tonumber(g) == tonumber(vmod.smoke_g) then
                          if tonumber(b) == tonumber(vmod.smoke_b) then
                                Notify("Your tire smoke is already that color!")
                                end
                              end
                            else
                          MySQL.Async.execute(sql, param)
                              TriggerClientEvent('fx_customs:SetVehicleMod',-1,data)
                            end
                          end
                        end
                      elseif modtype == 23 or modtype == 24 then
                      if tonumber(data.wtype) == tonumber(vmod.wheeltype) or tonumber(data.wtype) ~= tonumber(vmod.wheeltype) then
                        if tonumber(vmod.bike) == 1 then
                          if tonumber(mod) == tonumber(vmod.front_wheel) then
                              Notify("You already own those wheels!")
                            elseif tonumber(mod) == tonumber(vmod.back_wheel) then
                              Notify("You already own those wheels!")
                            else
        
                            MySQL.Async.execute(sql, param)
                              TriggerClientEvent('fx_customs:SetVehicleMod',-1,data)
                            end
                          else
                            if tonumber(mod) == tonumber(vmod.front_wheel) or tonumber(mod) == tonumber(vmod.back_wheel) then
                              Notify("You already own those wheels!")
                            else
                            MySQL.Async.execute(sql, param)
                              TriggerClientEvent('fx_customs:SetVehicleMod',-1,data)
                            end
                          end
                        end
                      end
              end
                  end
                  if data.turbo ~= nil then -- JINK TO CURRENTL WORKS BUT WILL LET YOU BUY TWICE
                    local modtype = data.modtype
                local mod = data.mod
                local vmod = result[1]
                if tonumber(mod) == tonumber(vmod.turbo) then
                    Notify("You already have a turbo!")
                    else
                    MySQL.Async.execute(sql, param)
                      TriggerClientEvent('fx_customs:SetVehicleMod',-1,data)
                    end
                  elseif data.burst ~= nil then -- JINK TO CURRENTL WORKS BUT WILL LET YOU BUY TWICE
                    local burst = data.burst
                local vmod = result[1]
                if tonumber(burst) and tonumber(vmod.bulletproof) == 0 then
                    Notify("You already have a this mod!")
                    else
                    MySQL.Async.execute(sql, param)
                      TriggerClientEvent('fx_customs:SetVehicleMod',-1,data)
                    end
                  elseif data.xeon ~= nil then -- JINK TO CURRENTL WORKS BUT WILL LET YOU BUY TWICE
                    local xeon = data.xeon
                local vmod = result[1]
                if xeon and tonumber(vmod.xeon) == 0 then
                    Notify("You already have a this mod!")
                    else
                    MySQL.Async.execute(sql, param)
                      TriggerClientEvent('fx_customs:SetVehicleMod',-1,data)
                    end 
                  elseif data.tint ~= nil then -- JINK TO CURRENTL WORKS BUT WILL LET YOU BUY TWICE
                    local tint = data.tint
                local vmod = result[1]
                if tonumber(tint) == tonumber(vmod.windowtint) then
                    Notify("You already have a this mod!")
                    else
                    MySQL.Async.execute(sql, param)
                      TriggerClientEvent('fx_customs:SetVehicleMod',-1,data)
                    end
                  elseif data.plateindex ~= nil then -- JINK TO CURRENTL WORKS BUT WILL LET YOU BUY TWICE
                    local plate = data.plateindex
                local vmod = result[1]
                if tonumber(plate) == tonumber(vmod.plate_index) then
                    Notify("You already have a this mod!")
                    else
                    MySQL.Async.execute(sql, param)
                      TriggerClientEvent('fx_customs:SetVehicleMod',-1,data)
                    end     
                  elseif data.colorindex ~= nil then
                    local colorindex = data.colorindex
                local vmod = result[1]
                if paintCar == 1 then -- Sets the Primary Paint via a menu choice. 
                if tonumber(colorindex) == tonumber(vmod.primary_color) then
                      Notify("You've already painted your vehicles body that color!")
                      else
                      MySQL.Async.execute(sql, param)
                        TriggerClientEvent('fx_customs:SetVehicleMod',-1,data)
                      end
              elseif paintCar == 2 then -- Sets the Secondary Paint via a menu choice.
                if tonumber(colorindex) == tonumber(vmod.secondary_color) then
                      Notify("You've already painted part of your vehicles body that color!")
                      else
                      MySQL.Async.execute(sql, param)
                        TriggerClientEvent('fx_customs:SetVehicleMod',-1,data)
                      end   
              elseif paintCar == 3 then -- Sets the Pearlsecent Paint via a menu choice.
                if tonumber(colorindex) == tonumber(vmod.pearl_color) then
                      Notify("You already have that colored shimmer!")
                      else
                      MySQL.Async.execute(sql, param)
                        TriggerClientEvent('fx_customs:SetVehicleMod',-1,data)
                      end       
              elseif paintCar == 4 then -- Sets the Rim Paint via a menu choice.
                if tonumber(colorindex) == tonumber(vmod.wheel_color) then
                      Notify("Your rims are already that color!")
                      else
                      MySQL.Async.execute(sql, param)
                        TriggerClientEvent('fx_customs:SetVehicleMod',-1,data)
                      end             
              end
            elseif neonSide ~= nil then
                    local r,g,b = data.r,data.g,data.b
                local vmod = result[1]
                if neonSide ~= nil then 
                if tonumber(r) == tonumber(vmod.neon_r) then
                  if tonumber(g) == tonumber(vmod.neon_g) then
                    if tonumber(b) == tonumber(vmod.neon_b) then
                          Notify("You've already set your neons to that color!")
                        end
                        end
                      else
                      MySQL.Async.execute(sql, param)
                        TriggerClientEvent('fx_customs:SetVehicleMod',-1,data)
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
    end)
  elseif data.repair ~= nil then
    local value = GetUserMoney(player, function(res) 
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
