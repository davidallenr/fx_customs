  -- @Date:   2017-07-18
  -- @Project: FX Customs
  -- @Owner: Jink Left
  -- @Last modified time: 2017-07-18
  
local FirstJoinProper = false
-- Load client at 100%
Citizen.CreateThread(function()

  while true do
    Citizen.Wait(0)

    if NetworkIsSessionStarted() then

      if not FirstJoinProper then
          -- Send menu to Menu Generator
        exports.ft_menuBuilder:Generator(menu)
      end

      -- Press F1
      if IsControlJustPressed(1, 213) then
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