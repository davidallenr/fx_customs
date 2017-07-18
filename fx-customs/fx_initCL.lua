  -- @Date:   2017-06-11T12:15:17+02:00
  -- @Project: FX Customs
  -- @Creator: JinkLeft
  -- @Last modified time: 2017-07-17

local FirstJoinProper = false
-- Load client at 100%
Citizen.CreateThread(function()

  while true do
    Citizen.Wait(0)

    if NetworkIsSessionStarted() then

      if not FirstJoinProper then
          
        exports.ft_menuBuilder:Generator(menu) -- Menu is from  config->menu
      end

      
      if IsControlJustPressed(1, 213) then -- 213 = HOME
        if not exports.ft_menuBuilder:IsOpened() and GetLastInputMethod(2) then
          exports.ft_menuBuilder:Open("fx_customs")
        else
          exports.ft_menuBuilder:Close()
        end
      end

      FirstJoinProper = true
    end

  end
end)