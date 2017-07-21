  -- @Date:   2017-07-20
  -- @Project: FX Customs
  -- @Owner: Jink Left
  -- @Last modified time: 2017-07-20
----------------------------------------------------
---------------[MYSQL ASYNC FUNCTION]---------------
AddEventHandler('onMySQLReady', function ()
	FxFirstRun()
end)

function FxFirstRun() 
    local sql = "CREATE TABLE IF NOT EXISTS fx_customs (id int(11) NOT NULL AUTO_INCREMENT, steamid varchar(255) NOT NULL, steamname varchar(255) NOT NULL, vehicle_name varchar(60) DEFAULT NULL, vehicle_model varchar(60) DEFAULT NULL, vehicle_price int(60) DEFAULT NULL, vehicle_plate varchar(60) DEFAULT NULL, vehicle_state varchar(60) DEFAULT NULL, vehicle_colorprimary varchar(60) DEFAULT NULL, vehicle_colorsecondary varchar(60) DEFAULT NULL, vehicle_pearlescentcolor varchar(60) DEFAULT NULL, vehicle_wheelcolor varchar(60) DEFAULT NULL, vehicle_plateindex varchar(255) DEFAULT NULL, vehicle_neoncolor1 varchar(255) DEFAULT NULL, vehicle_neoncolor2 varchar(255) DEFAULT NULL, vehicle_neoncolor3 varchar(25) DEFAULT NULL, vehicle_windowtint varchar(255) DEFAULT NULL, vehicle_wheeltype varchar(255) DEFAULT NULL, vehicle_mods0 varchar(255) DEFAULT NULL, vehicle_mods1 varchar(255) DEFAULT NULL, vehicle_mods2 varchar(255) DEFAULT NULL, vehicle_mods3 varchar(255) DEFAULT NULL, vehicle_mods4 varchar(255) DEFAULT NULL, vehicle_mods5 varchar(255) DEFAULT NULL, vehicle_mods6 varchar(255) DEFAULT NULL, vehicle_mods7 varchar(255) DEFAULT NULL, vehicle_mods8 varchar(255) DEFAULT NULL, vehicle_mods9 varchar(255) DEFAULT NULL, vehicle_mods10 varchar(255) DEFAULT NULL, vehicle_mods11 varchar(255) DEFAULT NULL, vehicle_mods12 varchar(255) DEFAULT NULL, vehicle_mods13 varchar(255) DEFAULT NULL, vehicle_mods14 varchar(255) DEFAULT NULL, vehicle_mods15 varchar(255) DEFAULT NULL, vehicle_mods16 varchar(255) DEFAULT NULL, vehicle_turbo varchar(255) NOT NULL DEFAULT 'off', vehicle_tiresmoke varchar(255) NOT NULL DEFAULT 'off', vehicle_xenon varchar(255) NOT NULL DEFAULT 'off', vehicle_mods23 varchar(255) DEFAULT NULL, vehicle_mods24 varchar(255) DEFAULT NULL, vehicle_neon0 varchar(255) DEFAULT NULL, vehicle_neon1 varchar(255) DEFAULT NULL, vehicle_neon2 varchar(255) DEFAULT NULL, vehicle_neon3 varchar(255) DEFAULT NULL, vehicle_bulletproof varchar(255) DEFAULT NULL, vehicle_smokecolor1 varchar(255) DEFAULT NULL, vehicle_smokecolor2 varchar(255) DEFAULT NULL, vehicle_smokecolor3 varchar(255) DEFAULT NULL, vehicle_modvariation varchar(255) NOT NULL DEFAULT 'off', PRIMARY KEY (id))"
    local param = {}
    
    print ("Creating FX-Customs DB")
    Wait(4000)    
    MySQL.Async.execute(sql, param)
    
    print ("Finished first Run creation")
end

----------------------------------------------------
---------------[	FUNCTIONS 		]---------------
function getPlayerID(source)
  return getIdentifier(GetPlayerIdentifiers(source))
end

function getIdentifier(id)
  for _, v in ipairs(id) do
    return v
  end
end
----------------------------------------------------
---------------[	EVENTS 		]-------------------