  -- @Date:   2017-07-27
  -- @Project: FX Customs
  -- @Owner: Jink Left
  -- @Last modified time: 2017-07-27
----------------------------------------------------
---------------[MYSQL ASYNC FUNCTION]---------------
AddEventHandler('onMySQLReady', function ()
  FxFirstRun()
end)

function FxFirstRun() 
    local sql = "CREATE TABLE IF NOT EXISTS fx_customs (id int(11) NOT NULL AUTO_INCREMENT, steamid varchar(255) NOT NULL, steamname varchar(255) NOT NULL, vehicle_name varchar(60) DEFAULT NULL, vehicle_model varchar(60) DEFAULT NULL, vehicle_plate varchar(60) DEFAULT NULL, vehicle_state varchar(60) DEFAULT NULL, vehicle_colorprimary varchar(60) DEFAULT NULL, vehicle_colorsecondary varchar(60) DEFAULT NULL, vehicle_pearlescentcolor varchar(60) DEFAULT NULL, vehicle_wheelcolor varchar(60) DEFAULT NULL, vehicle_plateindex varchar(255) DEFAULT NULL, vehicle_neoncolor1 varchar(255) DEFAULT NULL, vehicle_neoncolor2 varchar(255) DEFAULT NULL, vehicle_neoncolor3 varchar(25) DEFAULT NULL, vehicle_windowtint varchar(255) DEFAULT NULL, vehicle_wheeltype varchar(255) DEFAULT NULL, mods1 varchar(255) DEFAULT NULL, mods2 varchar(255) DEFAULT NULL, mods3 varchar(255) DEFAULT NULL, mods4 varchar(255) DEFAULT NULL, mods5 varchar(255) DEFAULT NULL, mods6 varchar(255) DEFAULT NULL, mods7 varchar(255) DEFAULT NULL, mods8 varchar(255) DEFAULT NULL, mods9 varchar(255) DEFAULT NULL, mods10 varchar(255) DEFAULT NULL, mods11 varchar(255) DEFAULT NULL, mods12 varchar(255) DEFAULT NULL, mods13 varchar(255) DEFAULT NULL, mods14 varchar(255) DEFAULT NULL, mods15 varchar(255) DEFAULT NULL, mods16 varchar(255) DEFAULT NULL, mods17 varchar(255) DEFAULT NULL, mods18 varchar(255) NOT NULL DEFAULT 'off', mods19 varchar(255) NOT NULL DEFAULT 'off',  mods20 varchar(255) NOT NULL DEFAULT 'off', mods21 varchar(255) DEFAULT NULL, mods22 varchar(255) DEFAULT NULL, vehicle_neon0 varchar(255) DEFAULT NULL, vehicle_neon1 varchar(255) DEFAULT NULL, vehicle_neon2 varchar(255) DEFAULT NULL, vehicle_neon3 varchar(255) DEFAULT NULL, vehicle_bulletproof varchar(255) DEFAULT NULL, vehicle_smokecolor1 varchar(255) DEFAULT NULL, vehicle_smokecolor2 varchar(255) DEFAULT NULL, vehicle_smokecolor3 varchar(255) DEFAULT NULL, vehicle_modvariation varchar(255) NOT NULL DEFAULT 'off', PRIMARY KEY (id))"
    local param = {}
    
    print ("Creating FX-Customs DB")
    Wait(4000)    
    MySQL.Async.execute(sql, param)
    
    print ("Finished FX_Custom DB creation")
end

function addVehicle(steamid,steamname,plate,plateindex,stolen)
  
  MySQL.Async.fetchAll("SELECT * FROM fx_customs WHERE vehicle_plate = @vehicle_plate", { ['@vehicle_plate'] = plate}, function (result)
    if (not result[1]) then
      if not stolen then  
          MySQL.Async.execute("INSERT INTO fx_customs (steamid, steamname, vehicle_plate, vehicle_plateindex) VALUES (@steamid,@steamname,@plate,@plateindex)",{ ['@steamid'] = steamid, ['@steamname'] = steamname, ['@plate'] = plate, ['@plateindex'] = plateindex})
        else
          print("Vehicle is coming back STOLEN so it is not added")
          Notify("Los Santos Customs", "Welcome to the shop!")
        end
    else
      print("Vehicle Has Already Been Added") 
    end
  end)
end
----------------------------------------------------
---------------[  FUNCTIONS     ]---------------
function Notify(text1,text2)

local notification = {
  type = "pnotify"            -- Choices are (pnotify, normal)
}  
  if(notification.type == "pnotify") then
        TriggerClientEvent("pNotify:SendNotification", -1, {
            text = "<strong> <h2>" .. text1 .."</h2> </strong> <br />" .. "<h3>" .. text2 .. "<h3> <br />",
                  type = "success",
                  timeout = (2000),
                  layout = "bottomCenter",
                  queue = "top",
            })
    elseif (notification.type == "normal") then 
      TriggerEvent("chatMessage", "Server", { 0, 0, 0 }, text1 .. text2)
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
AddEventHandler('fx_customs:UpdateVeh', function(veh, stolen, vehiclecol, extracol, neoncolor, plate_index, model, veh_state, plate, windowtint, wheeltype, vehicle_name, mods) 
    local player = source
    print("player = " .. tostring(player))
    local steamid = GetUserSteamID(player)
  local steamname = GetPlayerName(player) 
    local vehicle = veh
    local plateindex = plate_index
    local state = veh_state
  addVehicle(steamid,steamname,plate,plateindex, stolen)
  print("steam ID : " .. tostring(steamid) .. " | Source Name : " .. tostring(steamname).. " | Plate Number : " .. tostring(plate))
end)

RegisterServerEvent('fx_customs:ConfirmMod')
AddEventHandler('fx_customs:ConfirmMod', function(data)
  local player = source
    local steamid = GetUserSteamID(player)
  local steamname = GetPlayerName(player)
  local price = data.cost
  local paid = false

  print("Price : " .. tostring(price) .. " Confirmed : " .. tostring(confirmed) .. " Repair : " .. tostring(repair))  
    print(tostring(value))

  if data.confirmed ~= nil then   
      local modtype = data.modtype
      local mod = data.mod
      local wheeltype = data.wtype
      local value = GetUserMoney(player, function(res) 
        print(tostring(player) .. " | " .. tostring(price) .. " | modtype : " .. tostring(modtype) .. " | mod : " .. tostring(mod))
        local playerMoney = res
        local newMoney = playerMoney - price
        if playerMoney >= price then 
            print("NewMoney is GREATER than 0")
            print("NewMoney : " .. newMoney)
            MySQL.Async.execute("UPDATE supertable SET money = @newMoney WHERE steamid = @id", {newMoney = newMoney, id = steamid}, function ()
              end)
            TriggerClientEvent('fx_customs:SetVehicleMod',-1,modtype,mod,wheeltype)
        else
          Notify("Los Santos Customs", "You did not have enough cash for the purchase!")
        end
      end)
  elseif data.repair ~= nil then
    local value = GetUserMoney(player, function(res) 
      print(tostring(steamid) .. " | " .. tostring(result) .. " | Data : " .. dump(data))
      local playerMoney = res
      local newMoney = playerMoney - price
      if newMoney ~= nil and newMoney >= 0 then
        local paid = true
        print("NewMoney is GREATER than 0")
        print("NewMoney : " .. newMoney)
        MySQL.Async.execute("UPDATE supertable SET money = @newMoney WHERE steamid = @id", {newMoney = newMoney, id = steamid}, function ()
          end)
        TriggerClientEvent('fx_customs:RepairVehicle',-1, paid)
      end
    end)
  end

end)

RegisterServerEvent('fx_customs:Notify')
AddEventHandler('fx_customs:Notify', function(text1,text2)
  Notify(text1,text2)
end)