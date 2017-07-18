AddEventHandler('onMySQLReady', function ()
    Super_First_Run()
end)

AddEventHandler('playerConnecting', function(name, setCallback)
    local player = source
    print ("Calling user exists")
    Super_User_Exists(player, function(doesUserExist)
        if not doesUserExist then
            print ("about to create user")
            Super_Create_User(player)
        end
    end)
    
    Super_Is_Banned(player, function(UserBanned)
        if UserBanned then
            DropPlayer(player, "You are banned.")
        end
    end)
end)

function Super_First_Run() 
    local sql = "CREATE TABLE IF NOT EXISTS supertable (id int NOT NULL AUTO_INCREMENT, steamid varchar(255), steamname varchar(255), money int, bank int, banned TINYINT(1), PRIMARY KEY (id))"
    local param = {}
    
    print ("SUPERTABLE EXISTS")
        
    MySQL.Async.execute(sql, param)
    Wait(3000)
    Update_Table_Job()
    Update_Table_PlayerModel()
    Wait(1000)
    print ("Ignore these 'errors'. They are expected and SuperTable is functioning properly!")
end

function Super_Create_User(player)
    local steamid = Super_Get_Steam_ID(player)
    local sourcename = GetPlayerName(player)
    print (steamid)
        
    local sql = "INSERT IGNORE INTO supertable (steamid, steamname, money, bank, banned) VALUES (@id, @name, 500, 0, 0)"
    local param = {id = steamid, name = sourcename}
        
    MySQL.Async.execute(sql, param)
end

function Super_Update_Money(player, amount)
    local steamid = Super_Get_Steam_ID(player)
    local tempamount = amount

    local sql = "UPDATE supertable SET money = money + @money WHERE steamid = @id"
    local param = {id = steamid, money = tempamount}
    
    MySQL.Async.execute(sql, param)
end

function Super_Update_Bank(player, amount)
    local steamid = Super_Get_Steam_ID(player)
    local tempamount = amount

    local sql = "UPDATE supertable SET bank = bank + @money WHERE steamid = @id"
    local param = {id = steamid, money = tempamount}
    
    MySQL.Async.execute(sql, param)
end

function Super_Update_Name(player)
    local tempid = Super_Get_Steam_ID(player) 
    local tempname = GetPlayerName(player)
    
    local sql = "UPDATE supertable SET steamname = @name WHERE steamid = @id"
    local param = {id = tempid, name = tempname}
    
    MySQL.Async.execute(sql, param)
end

function Super_Update_Ban(player, intbanned) -- 1 = banned 0 = unbanned
    local tempid = Super_Get_Steam_ID(player)
    local banned = intbanned
    
    local sql = "UPDATE supertable SET banned = @banvalue WHERE steamid = @id"
    local param = {id = tempid, banvalue = banned}

    MySQL.Async.execute(sql, param)
end

function Super_Update_Job(player, varcharjob)
    local tempid = Super_Get_Steam_ID(player)
    local job = varcharjob

    local sql = "UPDATE supertable SET job = @jobvalue WHERE steamid = @id"
    local param = {id = tempid, jobvalue = job}
    
    MySQL.Async.execute(sql, param)
end
    
function Super_Update_Model(player, varcharmodel)
    local tempid = Super_Get_Steam_ID(player)
    local playermodel = varcharmodel

    local sql = "UPDATE supertable SET playermodel = @model WHERE steamid = @id"
    local param = {id = tempid, model = playermodel}
    
    MySQL.Async.execute(sql, param)
end

function Super_User_Exists(player, resultCallBack)
    local steamid = Super_Get_Steam_ID(player)    
    
    MySQL.Async.fetchScalar("SELECT COUNT(steamid) FROM supertable WHERE steamid = @id", {id = steamid}, function (result)
        print ("Only " .. result .. " entry for this user exists")
        
        if result > 0 then
            print("User Already Exists In Table")
        else 
            print("User Does Not Exist In Table")
        end
        
        resultCallBack(result > 0)
        
    end)
end

function Super_Is_Banned(player, resultCallBack)
    local steamid = Super_Get_Steam_ID(player)    
    
    MySQL.Async.fetchScalar("SELECT banned FROM supertable WHERE steamid LIKE @id LIMIT 1", {id = steamid}, function (result)        
        if result then
            print("User is banned!")
        else 
            print("User is not banned!")
        end
        
        resultCallBack(result)
        
    end)
end

function Super_Get_Money(player, resultCallBack)
    local steamid = Super_Get_Steam_ID(player)
    
    MySQL.Async.fetchScalar("SELECT money FROM supertable WHERE steamid LIKE @id LIMIT 1", {id = steamid}, function (result)
        resultCallBack(result)
    end)
end

function Super_Get_Bank(player, resultCallBack)
    local steamid = Super_Get_Steam_ID(player)
    
    MySQL.Async.fetchScalar("SELECT bank FROM supertable WHERE steamid LIKE @id LIMIT 1", {id = steamid}, function (result)
        resultCallBack(result)
    end)
end

function Super_Get_Job(player, resultCallBack)
    local steamid = Super_Get_Steam_ID(player)
    
    MySQL.Async.fetchScalar("SELECT job FROM supertable WHERE steamid LIKE @id LIMIT 1", {id = steamid}, function (result)
        resultCallBack(result)
    end)
end

function Super_Get_Model(player, resultCallBack)
    local steamid = Super_Get_Steam_ID(player)
    
    MySQL.Async.fetchScalar("SELECT playermodel FROM supertable WHERE steamid LIKE @id LIMIT 1", {id = steamid}, function (result)
        resultCallBack(result)
    end)
end

function Super_Get_Steam_ID(player)
    local identifiers = GetPlayerIdentifiers(player)
    local steamid = string.upper(string.sub(identifiers[1], 7))

    return steamid
end

function Update_Table_Job()
    local sql = "ALTER TABLE supertable ADD job varchar(255)"
    local param = {}
    
    MySQL.Async.execute(sql, param)
end

function Update_Table_PlayerModel()
    local sql = "ALTER TABLE supertable ADD playermodel varchar(255)"
    local param = {}
    
    MySQL.Async.execute(sql, param)
end