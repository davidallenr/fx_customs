--SET
function CreateUser(player)
    exports['supertable']:Super_Create_User(player)
end

function UpdateMoney(player, amount)
    exports['supertable']:Super_Update_Money(player,amount)
end

function UpdateBank(player, amount)
    exports['supertable']:Super_Update_Bank(player, amount)
end

function UpdateName(player)
    exports['supertable']:Super_Update_Name(player)
end

-- 0 = unbanned ... 1 = banned...

function UpdateBan(player, value) 
    exports['supertable']:Super_Update_Ban(player, intbanned)
end

function UpdateJob(player, job)
    exports['supertable']:Super_Update_Job(player, job)
end

function UpdateModel(player, model)
    exports['supertable']:Super_Update_Model(player, model)
end

--GET

function UserExists(player, resultCallBack)
    exports['supertable']:Super_User_Exists(player, resultCallBack)
end

function IsUserBanned(player, resultCallBack)
    exports['supertable']:Super_Is_Banned(player, resultCallBack)
end

function GetUserMoney(player, resultCallBack)
    return exports['supertable']:Super_Get_Money(player, resultCallBack)
end

function GetUserBank(player, resultCallBack)
    return exports['supertable']:Super_Get_Bank(player, resultCallBack)
end

function GetJob(player, resultCallBack)
    return exports['supertable']:Super_Get_Job(player, resultCallBack)
end

function GetUserModel(player, resultCallBack)
    return exports['supertable']:Super_Get_Model(player, resultCallBack)
end

function GetUserSteamID(player)
    return exports['supertable']:Super_Get_Steam_ID(player)
end

