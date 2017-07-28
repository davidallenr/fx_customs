  -- @Date:   2017-07-27
  -- @Project: FX Customs
  -- @Owner: Jink Left
  -- @Last modified time: 2017-07-27
  --------------------------------------------
  
menus = {
  opened = false,
  backMenu = {},
  curent = nil,
  list = {},
  selectedButton = 0,
  gameMenu = false,
  freeze = false,
  conf = {
    x = 0.9,
    y = 0.25,
    width = 0.2,
    height = 0.04,
    maxButton = 3,
    from = 1,
    to = 10,
    backlock = false
  },
}

function IsOpened()
  return menus.opened
end

function Current()
  return menus.curent
end

function Help(text, state)
  Citizen.CreateThread(function()

    SetTextComponentFormat("STRING")
    AddTextComponentString(text)
    DisplayHelpTextFromStringLabel(0, state, 0, -1)

  end)
end

function Message(icon, type, sender, title, text)
  Citizen.CreateThread(function()

    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    SetNotificationMessage(icon, icon, true, type, sender, title, text)
    DrawNotification(false, true)

  end)
end

function Notification(message)
  Citizen.CreateThread(function()

    SetNotificationTextEntry('STRING')
    AddTextComponentString(message)
    DrawNotification(false, false)

  end)
end

function IsModOwned(modtype, mod, text, font, centre, x, y, scale, r, g, b, a) 
    -- TODO JINK ADD LOGIC FOR OWNED MODS BEING DRAWN AS OWNED IN THE MENU   
  -- for k, v in pairs(vehMods) do
    -- if k == modtype and v == mod then
    --   Citizen.Trace("inModType".. tostring(modtype) .. "mod : " .. tostring(mod))
       --Text2( font, centre, x, y, scale, r, g, b, a)
    -- else
      Text(text, font, centre, x, y, scale, r, g, b, a)
    -- end
  -- end
end

function Text(text, font, centre, x, y, scale, r, g, b, a)
  Citizen.CreateThread(function()

    SetTextFont(font)
    SetTextProportional(0)
    SetTextScale(scale, scale)
    SetTextColour(r, g, b, a)
    SetTextCentre(centre)
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x, y)

  end)
end

function Text2(font, centre, x, y, scale, r, g, b, a) -- TODO JINK MENU FOR OWNED MODS
  Citizen.CreateThread(function()

    SetTextFont(font)
    SetTextProportional(0)
    SetTextScale(scale, scale * .9)
    SetTextColour(r, g, b, a)
    SetTextCentre(centre)
    SetTextEntry("STRING")
    AddTextComponentString("OWNED")
    DrawText(x - .009, y)

  end)
end

function DrawMenuButton(data, x, y, width, height, selected)
  Citizen.CreateThread(function()

    local color = {}
    if selected then
      color.text = { red = 0, blue = 0, green = 0 }
      color.rect = { red = 255, blue = 255, green = 255, alpha = 255 }
    else
      color.text = { red = 255, blue = 255, green = 255 }
      color.rect = { red = 0, blue = 0, green = 0, alpha = 150 }
    end

    Text(data.text, 0, 0, x - width / 2 + 0.005, y - height / 2 + 0.0035, 0.4, color.text.red, color.text.blue, color.text.green, 255)
    DrawRect(x, y, width, height, color.rect.red, color.rect.blue, color.rect.green, color.rect.alpha)
    if data.subText ~= nil then
      IsModOwned(data.modtype, data.mod, data.subText, 0, 0, x + width / 2 - 0.0385, y - height / 2 + 0.0035, 0.4, color.text.red, color.text.blue, color.text.green, 255)
    end


  end)
end

function Generator(data)
  Citizen.CreateThread(function()

    if type(data) == "table" then
      for name, menu in pairs(data) do
        Add(name, menu.buttons, menu.settings)
      end
    end

  end)
end

-- Check table size
function TableLength(T)

  local count = 0
  for _ in pairs(T) do
    count = count + 1
  end
  return count

end

-- Reset Values
function Reset()
  Citizen.CreateThread(function()

    menus.selectedButton = 0
    menus.freeze = false
    menus.conf.from = 1
    menus.conf.to = 10
    menus.conf.x = 0.9
    menus.conf.y = 0.25
    menus.conf.maxButton = 5

  end)
end

-- Freeze menu
function Freeze(status)
  Citizen.CreateThread(function()

    menus.freeze = status

  end)
end

-- Add new menu
function Add(name, buttons, settings)
  Citizen.CreateThread(function()

    if settings.top ~= nil and settings.top then
      settings.y = 0
      settings.top = nil
    end

    if settings.left ~= nil and settings.left then
      settings.x = 0 + (menus.conf.width / 2)
      settings.horizontalPosition = nil
    elseif settings.center ~= nil and settings.center then
      settings.x = 0.9 / 2
      settings.horizontalPosition = nil
    end

    menus.list[name] = {
      buttons = buttons,
      settings = settings,
    }

  end)
end

-- Remove menu
function Remove(name)
  Citizen.CreateThread(function()

    if menus.list[name] ~= nil then
      menus.list[name] = nil
    end

  end)
end

-- Clean buttons
function CleanButtons(name)
  Citizen.CreateThread(function()

    if menus.list[name] ~= nil then
      menus.list[name].buttons = {}
    end

  end)
end

-- Add button
function AddButton(name, button)
  Citizen.CreateThread(function()

    if menus.list[name] ~= nil then
      table.insert(menus.list[name].buttons, button)
    end

  end)
end


-- Next menu
function Next(name)
  Citizen.CreateThread(function()

    if menus.curent ~= nil then
      local data = {
        name = menus.curent,
        from = menus.conf.from,
        to = menus.conf.to,
        x = menus.conf.x,
        y = menus.conf.y,
        maxButton = menus.conf.maxButton,
        selectedButton = menus.selectedButton,
      }
      table.insert(menus.backMenu, data) -- Check if curent menu is backMenu

      Reset()
      menus.curent = name
    else
      return
    end

  end)
end

-- Back last menu
function Back()
  Citizen.CreateThread(function()

    local backNumber = TableLength(menus.backMenu)
    local data = menus.backMenu[backNumber]

    -- Back menu
    if data.from ~= nil then
      menus.conf.from = data.from
    end

    if data.to ~= nil then
      menus.conf.to = data.to
    end

    if data.selectedButton ~= nil then
      menus.selectedButton = data.selectedButton
    end

    menus.curent = data.name
    menus.conf.freeze = false

    -- Remove menu
    table.remove(menus.backMenu, backNumber)
    menus.backMenu[backNumber] = nil

  end)
end

-- Open menu
function Open(name)
  Citizen.CreateThread(function()

    -- Check if menu is opened or not
    if menus.opened then
      return
    end

    if menus.list[name] ~= nil then
      menus.opened = true
      menus.curent = name
    else
      return
    end

  end)
end

-- Close Values
function Close()
  Citizen.CreateThread(function()
    local name = menus.curent     
      local data = menus.list[name]
      local settings = data.settings

      Citizen.Trace(dump(data))  
        local buttons = data.buttons[3]
        if settings.closable ~= nil and settings.closable == false then
          if buttons.close then
            Reset()
            menus.backMenu = {}
            menus.curent = nil
            menus.opened = false
            menus.conf.backlock = false
          else
            return
          end
        end

        Reset()
        menus.backMenu = {}
        menus.curent = nil
        menus.opened = false
        menus.conf.backlock = false
  end)
end

function BackBtn()
  Citizen.CreateThread(function()

    if menus.conf.backlock then
      return
    end

    menus.conf.backlock = true

    local name = menus.curent
    local data = menus.list[name]
    local settings = data.settings

    -- No closable menu for back button
    if settings.closable ~= nil and settings.closable == false then
      return
    end

    if settings.back ~= nil then
      local callback = settings.back
      callback(settings.data)
    end

    local backNumber = TableLength(menus.backMenu)
    if next(menus.backMenu) and backNumber > 0 then
      Back()
    else
      Close()
    end

  end)
end

function Hover()
  Citizen.CreateThread(function()

    local selected = menus.selectedButton
    if selected ~= 0 then

      local curent = menus.curent
      local menu = menus.list[curent]
      local infos = menu.buttons[selected]

      if infos.hoverCallback ~= nil then
        local callback = infos.hoverCallback
        callback(infos.data)
      elseif infos.hoverEventServer ~= nil then
        TriggerServerEvent(infos.hoverEventServer, infos.data)
      elseif infos.hoverEventClient ~= nil then
        TriggerEvent(infos.hoverEventClient, infos.data)
      else
        return
      end

    end

  end)
end

function Exec()
  Citizen.CreateThread(function()

    local selected = menus.selectedButton
    if selected ~= 0 then

      local curent = menus.curent
      local menu = menus.list[curent]
      local infos = menu.buttons[selected]

      -- Execute function
      if infos.callback ~= nil then
        local callback = infos.callback
        callback(infos.data)
      end

      -- Send to server event
      if infos.eventServer ~= nil then
        TriggerServerEvent(infos.eventServer, infos.data)
      end

      -- Send to client event
      if infos.eventClient ~= nil then
        TriggerEvent(infos.eventClient, infos.data)
      end

      -- Go to next menu
      if infos.menu ~= nil and menus.list[infos.menu] ~= nil then
        Next(infos.menu)
      end

      --
      if infos.freeze ~= nil and infos.freeze then
        menus.freeze = infos.freeze
      elseif infos.close ~= nil and infos.close then
        Close()
      elseif infos.back ~= nil and infos.back then
        Back()
      end

    end

  end)
end

function Show()
  Citizen.CreateThread(function()

    -- Open game menu
    if IsPauseMenuActive() then
      menus.gameMenu = true
    else
      menus.gameMenu = false
    end

    if menus.opened then

      local curent = menus.curent
      local menu = menus.list[curent]
      local settings = menu.settings
      local buttons = menu.buttons

      if buttons == nil then
        Close()
      end

      local countBtns = TableLength(buttons)

      -- Position
      local posX = settings.x or menus.conf.x
      local posY = settings.y or menus.conf.y
      local maxButton = settings.maxButton or menus.conf.maxButton

      local y = posY -- Position for buttonss
      local selected = false

      -- Big title
      if settings.title ~= nil then
        Text(settings.title, 1, 1, posX, posY, 1.0, 255, 255, 255, 255)
        y = y + 0.12
      end

      -- Top menu
      local count = menus.selectedButton .. "/" .. countBtns

      -- Sub title
      posY = posY + 0.08
      DrawRect(posX, posY, menus.conf.width, menus.conf.height, (settings.red or 93), (settings.green or 166), (settings.blue or 202), (settings.alpha or 150))
      Text(settings.menuTitle, 0, 0, posX - menus.conf.width / 2 + 0.005, posY - menus.conf.height / 2 + 0.0028, 0.4, 255, 255, 255, 255)

      -- Numbers
      Text(count, 0, 0, posX + menus.conf.width / 2 - 0.0385, posY - 0.015, 0.4, 255, 255, 255, 255)

      for i, button in pairs(buttons) do

        if i >= menus.conf.from and i <= menus.conf.to then
          if i == menus.selectedButton then
            selected = true
          else
            selected = false
          end

          DrawMenuButton(button, posX, y, menus.conf.width, menus.conf.height, selected)
          y = y + 0.04
        end
      end

      if not menus.freeze then

        -- Down
        if IsControlJustPressed(2, 187) and GetLastInputMethod(2) and not menus.gameMenu then
          if menus.selectedButton < countBtns then

            menus.selectedButton = menus.selectedButton + 1
            if menus.selectedButton > menus.conf.to then
              menus.conf.to = menus.conf.to + 1
              menus.conf.from = menus.conf.from + 1
            end

            Hover()
            PlaySound(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", 0, 0, 1)

          end
        end

        -- Up
        if IsControlJustPressed(2, 188) and GetLastInputMethod(2) and not menus.gameMenu then
          if menus.selectedButton > 1 then
            menus.selectedButton = menus.selectedButton - 1
            if menus.selectedButton < menus.conf.from then
              menus.conf.from = menus.conf.from - 1
              menus.conf.to = menus.conf.to - 1
            end
            Hover()
            PlaySound(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", 0, 0, 1)

          end
        end

        -- Back
        if IsControlJustPressed(2, 177) and not IsControlJustPressed(2, 322) and not IsControlJustPressed(2, 24) and not IsControlJustPressed(0, 25) and GetLastInputMethod(2) and not menus.gameMenu then

          BackBtn()
          PlaySound(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", 0, 0, 1)

        end
        if IsControlJustPressed(2, 177) and not IsControlJustPressed(2, 322) and not IsControlJustPressed(2, 24) and not IsControlJustPressed(0, 25)  and GetLastInputMethod(2) and not menus.gameMenu then

          menus.conf.backlock = false

        end

        -- Enter
        if IsControlJustPressed(2, 201) and GetLastInputMethod(2) and not menus.gameMenu then

          Exec()
          PlaySound(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", 0, 0, 1)

        end

      end -- end ckeck freeze

    end

  end)
end