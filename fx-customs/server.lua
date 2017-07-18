  -- @Date:   2017-07-18
  -- @Project: FX Customs
  -- @Owner: Jink Left
  -- @Last modified time: 2017-07-18
----------------------------------------------------
---------------[MYSQL ASYNC FUNCTION]---------------
AddEventHandler('onMySQLReady', function ()
    FxFirstRun()
end)

function FxFirstRun() 
    local sql = "CREATE TABLE IF NOT EXISTS fx_customs (id int NOT NULL AUTO_INCREMENT, steamid varchar(255), steamname varchar(255), car_id int(11), tire_smoke varchar(45), spoiler varchar(45), front_bumper varchar(45), rear_bumper varchar(45), side_skirt varchar(45), exhaust varchar(45), frame varchar(45), grille varchar(45), hood varchar(45), fender varchar(45), right_fender varchar(45), roof varchar(45), engine varchar(45),brakes varchar(45),transmission varchar(45),horn varchar(45), suspension varchar(45), armor varchar(45), turbo varchar(45), xeon_headlights varchar(45), front_wheels varchar(45), back_wheels varchar(45), license_plate varchar(45), window_tint varchar(45), mod23 varchar(45), mod24 varchar(45), vehicle_colorprimary varchar(60), vehicle_colorsecondary varchar(60), vehicle_pearlescentcolor varchar(60), vehicle_wheelcolor varchar(60), PRIMARY KEY (id))"
    local param = {}
    
    print ("Creating FX-Customs DB")
    Wait(4000)    
    MySQL.Async.execute(sql, param)
    
    print ("Finished first Run creation")
end

----------------------------------------------------
---------------[MYSQL ASYNC FUNCTION]---------------