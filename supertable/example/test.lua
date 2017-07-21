TriggerServerEvent('GetUserMoney')

AddEventHandler('ReceiveUserMoney', function(func)
    Money = func
end)













--[[
AddEventHandler('rconCommand', function(commandName, args)
    if commandName == 'test' then
        local player = GetPlayers()[1]  
        local money = 0
        print("Test Command Worked so far?")
        
        GetUserMoney(player, function(PlayerMoney) -- Async method that adjusts value...
            money = PlayerMoney
            print(money)
        end)
        
        SetTimeout(3000, function() -- Waits 3 secs for the previous query to finish (remember it's async)
            print(money)
        end)
        
        Wait(1000)
        print (money) -- This will print 500 in console as well but not rcon as the event has expired (i think)
    end
    CancelEvent()
end) ]]--