  -- @Date:   2017-08-08
  -- @Project: FX Customs
  -- @Owner: Jink Left
  -- @LICENSE: NO LICENSE/LICENSE
  -- @Last modified time: 2017-08-08
-------------------------------------------
---------------[COST MENU]----------------
cost = {
  ['repair'] = { total = 100, display = "$100"},
  ['rims'] = { total = 1000, display = "$1,000"},
  ['spoilers'] = { total = 100, display = "$100"},
  ['frontBumper'] = { total = 500, display = "$500"},
  ['rearBumper'] = { total = 500, display = "$500"},
  ['sideSkirt'] = { total = 500, display = "$500"},
  ['exhaust'] = { total = 500, display = "$500"},
  ['frame'] = { total = 500, display = "$500"},
  ['grille'] = { total = 500, display = "$500"},
  ['hood'] = { total = 500, display = "$500"},
  ['fender'] = { total = 500, display = "$500"},
  ['rightFender'] = { total = 500, display = "$500"},
  ['roof'] = { total = 500, display = "$500"},
  ['engine'] = { total = 500, display = "$500"},
  ['brakes'] = { total = 200, display = "$200"},
  ['transmission'] = { total = 500, display = "$500"},
  ['horn'] = { total = 50, display = "$50"},
  ['suspension'] = { total = 800, display = "$800"},
  ['armor'] = { total = 500, display = "$500"},
  ['turbo'] = { total = 500, display = "$500"},
  ['smoke'] = { total = 50, display = "$50"},
  ['headlights'] = { total = 80, display = "$80"},
  ['frontWheel'] = { total = 150, display = "$150"},
  ['backWheel'] = { total = 150, display = "$150"},
  ['windowtint'] = { total = 200, display = "$200"},
  ['neon'] = { total = 10, display = "$10"},
  ['paint'] = { total = 20, display = "$20"},
  ['plate'] = { total = 20, display = "$20"},
  ['bulletproof_tires'] = { total = 20, display = "$20"},
  ['custom_mods'] = { total = 2000, display = "$2,000"},
}

------------------------------------------
---------------[REPAIR MENU]---------------
menu = {

    fx_customs = {

      settings = {
        title = "Los Santos Customs",
        menuTitle = "Welcome",
        closable = false,
      },

      buttons = {
        { text = "Purchase Upgrades", menu = "fx_main" },
        { text = "Purchase Vehicle Repairs", menu = "fx_repair" },
        { text = "Close menu", close = true, eventClient = "fx_customs:LeaveGarage", data = { closed = true }},
      },
    },

    fx_main = {

      settings = {
        title = "Los Santos Customs",
        menuTitle = "Categories",
        back = CallbackBack,
        closable = true,
      },
      --- BUTTONS ARE GENERATED IN THE CLIENT
      buttons = {

      },
    },
---------------[REPAIR MENU]---------------
fx_repair = {

      settings = {
        title = "Los Santos Customs",
        menuTitle = "Welcome",
        back = CallbackBack,
        closable = true,
      },

      buttons = {
        { text = "Confirm", subText = cost['repair'].display, eventServer = "fx_customs:ConfirmMod", data = { repair = true , cost = cost['repair'].total} },
        { text = "Previous Menu", back = true },
      },
    },
---------------[CUSTOM MODS CATEGORY]---------------
mods = { 

      settings = {
        title = "Los Santos Customs",
        menuTitle = "Mods",
        back = CallbackBack,
        closable = true,
      },

      buttons = { 

      },
    },
---------------[EXTRAS CATEGORY]---------------
extras = { 

      settings = {
        title = "Los Santos Customs",
        menuTitle = "Vehicle Extras",
        back = CallbackBack,
        closable = true,
      },

      buttons = { 

        {text = "Enable", eventClient = "fx_customs:SetModSpecifics", menu = "extras2", data = { extra = "enable" } },
        {text = "Disable", eventClient = "fx_customs:SetModSpecifics",menu = "extras2", data = { extra = "disable" } },
      },
    },

extras2 = { 

      settings = {
        title = "Los Santos Customs",
        menuTitle = "Vehicle Extras",
        back = CallbackBack,
        closable = true,
      },

      buttons = { 

      },
    },
---------------[WHEEL CATEGORY]---------------
    wheels = { 

      settings = {
        title = "Los Santos Customs",
        menuTitle = "Categories",
        back = CallbackBack,
        closable = true,
      },

      buttons = { 
        { text = "Wheel Type", hoverEventServer = "fx_customs:ResetMods", menu = "wheeltype", data = { wheels = true, reset = true } },
        { text = "Rim Color", menu = "classic" , eventClient = "fx_customs:SetModSpecifics", data = { paints = "wheel" }},
        { text = "Wheel Accessories", menu = "wheelaccessories" },
      },
    },

    wheeltype = { 

      settings = {
        title = "Los Santos Customs",
        menuTitle = "Welcome",
        back = CallbackBack,
        closable = true,
      },

      buttons = { 
        
        { text = "Sport", hoverEventServer = "fx_customs:ResetMods", menu = "sport", data = { wheels = true, reset = true } },
        { text = "Muscle", hoverEventServer = "fx_customs:ResetMods", menu = "muscle", data = { wheels = true, reset = true } },
        { text = "Lowrider", hoverEventServer = "fx_customs:ResetMods", menu = "lowrider", data = { wheels = true, reset = true } },
        { text = "Suv", hoverEventServer = "fx_customs:ResetMods", menu = "suv", data = { wheels = true, reset = true } },
        { text = "Offroad", hoverEventServer = "fx_customs:ResetwMods", menu = "offroad", data = { wheels = true, reset = true } },
        { text = "Tuner", hoverEventServer = "fx_customs:ResetwMods", menu = "tuner", data = { wheels = true, reset = true } },
        { text = "Highend", hoverEventServer = "fx_customs:ResetMods", menu = "highend", data = { wheels = true, reset = true } },
      },
    },

    sport = { 

      settings = {
        title = "Los Santos Customs",
        menuTitle = "Welcome",
        back = CallbackBack,
        closable = true,
      },

          buttons = { 

              { text = "Stock", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = false, modtype = 23, mod = -1, confirmed = true , cost = cost['rims'].total} },
              { text = "Chrono", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = false, modtype = 23, mod = 4, confirmed = true , cost = cost['rims'].total} },
              { text = "Cosmo", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = false, modtype = 23, mod = 16, confirmed = true , cost = cost['rims'].total} },
              { text = "Dashvip", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = false, modtype = 23, mod = 17, confirmed = true , cost = cost['rims'].total} },
              { text = "Deepfive", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = false, modtype = 23, mod = 1, confirmed = true , cost = cost['rims'].total} },
              { text = "Diamondcut", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = false, modtype = 23, mod = 3, confirmed = true , cost = cost['rims'].total} },
              { text = "Duper7", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = false, modtype = 23, mod = 11, confirmed = true , cost = cost['rims'].total} },
              { text = "Endov1", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = false, modtype = 23, mod = 10, confirmed = true , cost = cost['rims'].total} },
              { text = "Endov2", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = false, modtype = 23, mod = 22, confirmed = true , cost = cost['rims'].total} },
              { text = "Feroccirr", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = false, modtype = 23, mod = 5, confirmed = true , cost = cost['rims'].total} },
              { text = "Fiftynine", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = false, modtype = 23, mod = 6, confirmed = true , cost = cost['rims'].total} },
              { text = "Groundride", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = false, modtype = 23, mod = 13, confirmed = true , cost = cost['rims'].total} },
              { text = "Icekid", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = false, modtype = 23, mod = 18, confirmed = true , cost = cost['rims'].total} },
              { text = "Inferno", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = false, modtype = 23, mod = false, confirmed = true , cost = cost['rims'].total} },
              { text = "Lozspeed", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = false, modtype = 23, mod = 2, confirmed = true , cost = cost['rims'].total} },
              { text = "Mercie", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = false, modtype = 23, mod = 7, confirmed = true , cost = cost['rims'].total} },
              { text = "Organictyped", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = false, modtype = 23, mod = 9, confirmed = true , cost = cost['rims'].total} },
              { text = "Ruffeld", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = false, modtype = 23, mod = 19, confirmed = true , cost = cost['rims'].total} },
              { text = "Slitsix", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = false, modtype = 23, mod = 23, confirmed = true , cost = cost['rims'].total} },
              { text = "Spacer", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = false, modtype = 23, mod = 14, confirmed = true , cost = cost['rims'].total} },
              { text = "Superfive", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = false, modtype = 23, mod = 21, confirmed = true , cost = cost['rims'].total} },
              { text = "Syntheticz", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = false, modtype = 23, mod = 8, confirmed = true , cost = cost['rims'].total} },
              { text = "Uzer", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = false, modtype = 23, mod = 12, confirmed = true , cost = cost['rims'].total} },
              { text = "Venum", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = false, modtype = 23, mod = 15, confirmed = true , cost = cost['rims'].total} },
              { text = "Wangenmaster", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = false, modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
            },
          },

    muscle = { 

      settings = {
        title = "Los Santos Customs",
        menuTitle = "Welcome",
        back = CallbackBack,
        closable = true,
      },

          buttons = { 

              { text = "Stock", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 1, modtype = 23, mod = -1, confirmed = true , cost = cost['rims'].total} },
              { text = "Azrea", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 1, modtype = 23, mod = 4, confirmed = true , cost = cost['rims'].total} },
              { text = "Blacktop", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 1, modtype = 23, mod = 6, confirmed = true , cost = cost['rims'].total} },
              { text = "Classicfive", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 1, modtype = 23, mod = false, confirmed = true , cost = cost['rims'].total} },
              { text = "Classicrod", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 1, modtype = 23, mod = 9, confirmed = true , cost = cost['rims'].total} },
              { text = "Dodman", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 1, modtype = 23, mod = 14, confirmed = true , cost = cost['rims'].total} },
              { text = "Dragspl", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 1, modtype = 23, mod = 7, confirmed = true , cost = cost['rims'].total} },
              { text = "Dukes", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 1, modtype = 23, mod = 1, confirmed = true , cost = cost['rims'].total} },
              { text = "Eljefe", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 1, modtype = 23, mod = 13, confirmed = true , cost = cost['rims'].total} },
              { text = "Fivestar", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 1, modtype = 23, mod = 11, confirmed = true , cost = cost['rims'].total} },
              { text = "Kracka", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 1, modtype = 23, mod = 3, confirmed = true , cost = cost['rims'].total} },
              { text = "Mecha", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 1, modtype = 23, mod = 5, confirmed = true , cost = cost['rims'].total} },
              { text = "Mercenary", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = {  wtype = 1,modtype = 23, mod = 16, confirmed = true , cost = cost['rims'].total} },
              { text = "Musclefreak", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 1, modtype = 23, mod = 2, confirmed = true , cost = cost['rims'].total} },
              { text = "Oldschool", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 1, modtype = 23, mod = 12, confirmed = true , cost = cost['rims'].total} },
              { text = "Revolver", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 1, modtype = 23, mod = 8, confirmed = true , cost = cost['rims'].total} },
              { text = "Sixgun", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 1, modtype = 23, mod = 15, confirmed = true , cost = cost['rims'].total} },
              { text = "Spooner", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 1, modtype = 23, mod = 10, confirmed = true , cost = cost['rims'].total} },
            },
          },

    lowrider = { 

      settings = {
        title = "Los Santos Customs",
        menuTitle = "Welcome",
        back = CallbackBack,
        closable = true,
      },

          buttons = { 

              { text = "Stock", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 2, modtype = 23, mod = -1, confirmed = true , cost = cost['rims'].total} },
              { text = "Bigworm", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 2, modtype = 23, mod = 3, confirmed = true , cost = cost['rims'].total} },
              { text = "Classicrod", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 2, modtype = 23, mod = 10, confirmed = true , cost = cost['rims'].total} },
              { text = "Dollar", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 2, modtype = 23, mod = 11, confirmed = true , cost = cost['rims'].total} },
              { text = "Dukes", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 2, modtype = 23, mod = 12, confirmed = true , cost = cost['rims'].total} },
              { text = "Flare", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 2, modtype = 23, mod = false, confirmed = true , cost = cost['rims'].total} },
              { text = "Freshmesh", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 2, modtype = 23, mod = 6, confirmed = true , cost = cost['rims'].total} },
              { text = "Gooch", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 2, modtype = 23, mod = 14, confirmed = true , cost = cost['rims'].total} },
              { text = "Leadsled", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 2, modtype = 23, mod = 7, confirmed = true , cost = cost['rims'].total} },
              { text = "Lowfive", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 2, modtype = 23, mod = 13, confirmed = true , cost = cost['rims'].total} },
              { text = "Sevenfives", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 2, modtype = 23, mod = 4, confirmed = true , cost = cost['rims'].total} },
              { text = "Splitsix", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 2, modtype = 23, mod = 5, confirmed = true , cost = cost['rims'].total} },
              { text = "Superfin", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 2, modtype = 23, mod = 9, confirmed = true , cost = cost['rims'].total} },
              { text = "Triplegolds", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 2, modtype = 23, mod = 2, confirmed = true , cost = cost['rims'].total} },
              { text = "Turbine", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 2, modtype = 23, mod = 8, confirmed = true , cost = cost['rims'].total} },
              { text = "Wired", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 2, modtype = 23, mod = 1, confirmed = true , cost = cost['rims'].total} },
            },
          },

    suv = { 

      settings = {
        title = "Los Santos Customs",
        menuTitle = "Welcome",
        back = CallbackBack,
        closable = true,
      },

          buttons = { 

              { text = "Stock", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 3, modtype = 23, mod = -1, confirmed = true , cost = cost['rims'].total} },
              { text = "Benefactor", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 3, modtype = 23, mod = 1, confirmed = true , cost = cost['rims'].total} },
              { text = "Bippu", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 3, modtype = 23, mod = 3, confirmed = true , cost = cost['rims'].total} },
              { text = "Cognscenti", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 3, modtype = 23, mod = 8, confirmed = true , cost = cost['rims'].total} },
              { text = "Cosmo", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 3, modtype = 23, mod = 2, confirmed = true , cost = cost['rims'].total} },
              { text = "Cutter", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 3, modtype = 23, mod = 18, confirmed = true , cost = cost['rims'].total} },
              { text = "Dashvip", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 3, modtype = 23, mod = 17, confirmed = true , cost = cost['rims'].total} },
              { text = "Deluxe", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 3, modtype = 23, mod = 6, confirmed = true , cost = cost['rims'].total} },
              { text = "Empowered", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 3, modtype = 23, mod = 156, confirmed = true , cost = cost['rims'].total} },
              { text = "Extra vaganzo", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 3, modtype = 23, mod = 13, confirmed = true , cost = cost['rims'].total} },
              { text = "Fagorme", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 3, modtype = 23, mod = 5, confirmed = true , cost = cost['rims'].total} },
              { text = "Icedout", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 3, modtype = 23, mod = 7, confirmed = true , cost = cost['rims'].total} },
              { text = "Lozspeedballer", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 3, modtype = 23, mod = 12, confirmed = true , cost = cost['rims'].total} },
              { text = "Lozspeedten", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 3, modtype = 23, mod = 9, confirmed = true , cost = cost['rims'].total} },
              { text = "Obeyrs", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 3, modtype = 23, mod = 11, confirmed = true , cost = cost['rims'].total} },
              { text = "Royalsix", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 3, modtype = 23, mod = 4, confirmed = true , cost = cost['rims'].total} },
              { text = "Splitsix", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 3, modtype = 23, mod = 14, confirmed = true , cost = cost['rims'].total} },
              { text = "Sunrise", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 3, modtype = 23, mod = 16, confirmed = true , cost = cost['rims'].total} },
              { text = "Supernova", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 3, modtype = 23, mod = 10, confirmed = true , cost = cost['rims'].total} },
              { text = "Vip", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 3, modtype = 23, mod = false, confirmed = true , cost = cost['rims'].total} },
            },
          },

    offroad = { 

      settings = {
        title = "Los Santos Customs",
        menuTitle = "Welcome",
        back = CallbackBack,
        closable = true,
      },

          buttons = { 

              { text = "Stock", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 4, modtype = 23, mod = -1, confirmed = true , cost = cost['rims'].total} },
              { text = "Raider", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 4, modtype = 23, mod = false, confirmed = true , cost = cost['rims'].total} },
              { text = "Mudslinger", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 4, modtype = 23, mod = 1, confirmed = true , cost = cost['rims'].total} },
              { text = "Nevis", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 4, modtype = 23, mod = 2, confirmed = true , cost = cost['rims'].total} },
              { text = "Cairngorm", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 4, modtype = 23, mod = 3, confirmed = true , cost = cost['rims'].total} },
              { text = "Amazon", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 4, modtype = 23, mod = 4, confirmed = true , cost = cost['rims'].total} },
              { text = "Challenger", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 4, modtype = 23, mod = 5, confirmed = true , cost = cost['rims'].total} },
              { text = "Dunebasher", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 4, modtype = 23, mod = 6, confirmed = true , cost = cost['rims'].total} },
              { text = "Fivestar", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 4, modtype = 23, mod = 7, confirmed = true , cost = cost['rims'].total} },
              { text = "Rockcrawler", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 4, modtype = 23, mod = 8, confirmed = true , cost = cost['rims'].total} },
              { text = "Milspecsteelie", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 4, modtype = 23, mod = 9, confirmed = true , cost = cost['rims'].total} },
            },
          },

    tuner = { 

      settings = {
        title = "Los Santos Customs",
        menuTitle = "Welcome",
        back = CallbackBack,
        closable = true,
      },

          buttons = { 

              { text = "Stock", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 5, modtype = 23, mod = -1, confirmed = true , cost = cost['rims'].total} },
              { text = "Apex", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 5, modtype = 23, mod = 10, confirmed = true , cost = cost['rims'].total} },
              { text = "Battlevill", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 5, modtype = 23, mod = 22, confirmed = true , cost = cost['rims'].total} },
              { text = "Chicane", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 5, modtype = 23, mod = 17, confirmed = true , cost = cost['rims'].total} },
              { text = "Chokadori", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 5, modtype = 23, mod = 16, confirmed = true , cost = cost['rims'].total} },
              { text = "Cosmo", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 5, modtype = 23, mod = false, confirmed = true , cost = cost['rims'].total} },
              { text = "Countersteer", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 5, modtype = 23, mod = 12, confirmed = true , cost = cost['rims'].total} },
              { text = "Dishedeight", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 5, modtype = 23, mod = 19, confirmed = true , cost = cost['rims'].total} },
              { text = "Driffmeister", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 5, modtype = 23, mod = 4, confirmed = true , cost = cost['rims'].total} },
              { text = "Dubbed", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 5, modtype = 23, mod = 7, confirmed = true , cost = cost['rims'].total} },
              { text = "Elquatro", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 5, modtype = 23, mod = 6, confirmed = true , cost = cost['rims'].total} },
              { text = "Endov1", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 5, modtype = 23, mod = 13, confirmed = true , cost = cost['rims'].total} },
              { text = "Endov2dish", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 5, modtype = 23, mod = 14, confirmed = true , cost = cost['rims'].total} },
              { text = "Fivestar", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 5, modtype = 23, mod = 8, confirmed = true , cost = cost['rims'].total} },
              { text = "Fujiwara", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 5, modtype = 23, mod = 20, confirmed = true , cost = cost['rims'].total} },
              { text = "Guppez", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 5, modtype = 23, mod = 15, confirmed = true , cost = cost['rims'].total} },
              { text = "Outsider", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 5, modtype = 23, mod = 2, confirmed = true , cost = cost['rims'].total} },
              { text = "Rallymaster", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 5, modtype = 23, mod = 23, confirmed = true , cost = cost['rims'].total} },
              { text = "Rollas", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 5, modtype = 23, mod = 3, confirmed = true , cost = cost['rims'].total} },
              { text = "Saisoku", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 5, modtype = 23, mod = 18, confirmed = true , cost = cost['rims'].total} },
              { text = "Slicer", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 5, modtype = 23, mod = 5, confirmed = true , cost = cost['rims'].total} },
              { text = "Slideways", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 5, modtype = 23, mod = 9, confirmed = true , cost = cost['rims'].total} },
              { text = "Stancedeg", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 5, modtype = 23, mod = 11, confirmed = true , cost = cost['rims'].total} },
              { text = "Supermesh", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 5, modtype = 23, mod = 1, confirmed = true , cost = cost['rims'].total} },
              { text = "Zokusha", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 5, modtype = 23, mod = 21, confirmed = true , cost = cost['rims'].total} },
            },
          },
          
    highend = { 

      settings = {
        title = "Los Santos Customs",
        menuTitle = "Welcome",
        back = CallbackBack,
        closable = true,
      },

          buttons = { 

              { text = "Stock", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 7, modtype = 23, mod = -1, confirmed = true , cost = cost['rims'].total} },
              { text = "Blade", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 7, modtype = 23, mod = 2, confirmed = true , cost = cost['rims'].total} },
              { text = "Carboncheetahr", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 7, modtype = 23, mod = 18, confirmed = true , cost = cost['rims'].total} },
              { text = "Carboninferno", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 7, modtype = 23, mod = 14, confirmed = true , cost = cost['rims'].total} },
              { text = "Carbonshadow", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 7, modtype = 23, mod = 15, confirmed = true , cost = cost['rims'].total} },
              { text = "Carbonsolar", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 7, modtype = 23, mod = 17, confirmed = true , cost = cost['rims'].total} },
              { text = "Carbonsracer", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 7, modtype = 23, mod = 19, confirmed = true , cost = cost['rims'].total} },
              { text = "Carbonz", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 7, modtype = 23, mod = 16, confirmed = true , cost = cost['rims'].total} },
              { text = "Cheetahr", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 7, modtype = 23, mod = 9, confirmed = true , cost = cost['rims'].total} },
              { text = "Chromaticz", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 7, modtype = 23, mod = 5, confirmed = true , cost = cost['rims'].total} },
              { text = "Dashvip", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 7, modtype = 23, mod = 12, confirmed = true , cost = cost['rims'].total} },
              { text = "Diamond", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 7, modtype = 23, mod = 3, confirmed = true , cost = cost['rims'].total} },
              { text = "Gtchrome", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 7, modtype = 23, mod = 8, confirmed = true , cost = cost['rims'].total} },
              { text = "Hyper", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 7, modtype = 23, mod = 1, confirmed = true , cost = cost['rims'].total} },
              { text = "Lozspeedten", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 7, modtype = 23, mod = 13, confirmed = true , cost = cost['rims'].total} },
              { text = "Merciechlip", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 7, modtype = 23, mod = 6, confirmed = true , cost = cost['rims'].total} },
              { text = "Obeyrs", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 7, modtype = 23, mod = 7, confirmed = true , cost = cost['rims'].total} },
              { text = "Shadow", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 7, modtype = 23, mod = false, confirmed = true , cost = cost['rims'].total} },
              { text = "Solar", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 7, modtype = 23, mod = 10, confirmed = true , cost = cost['rims'].total} },
              { text = "Splitten", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 7, modtype = 23, mod = 11, confirmed = true , cost = cost['rims'].total} }, 
              { text = "Supagee", subText = cost['rims'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 7, modtype = 23, mod = 4, confirmed = true , cost = cost['rims'].total} },
            },
          },

    wheelaccessories = { 

      settings = {
        title = "Los Santos Customs",
        menuTitle = "Categories",
        back = CallbackBack,
        closable = true,
      },

        buttons = {

            { text = "Bulletproof Tires", menu = "bulletproof_tires" },
            { text = "Tire Smoke", menu = "tiresmoke" },
            -- { text = "Front Wheel Mods", menu = "frontWheel" }, --TODO JINK CHECK IF THIS WORKS WITH ALL VEHICLES AND OR JUST MOTORCYCLES
            -- { text = "Back Wheel Mods", menu = "backwheel" },
          },
        },

    bulletproof_tires = { 

      settings = {
        title = "Los Santos Customs",
        menuTitle = "Welcome",
        back = CallbackBack,
        closable = true,
      },

        buttons = { 

            { text = "Never Flats", subText = cost['bulletproof_tires'].display, eventServer = "fx_customs:ConfirmMod", data = { burst = true, confirmed = true , cost = cost['bulletproof_tires'].total } },
            { text = "Original Tires", subText = cost['bulletproof_tires'].display, eventServer = "fx_customs:ConfirmMod", data = { burst = false, confirmed = true , cost = cost['bulletproof_tires'].total} },
            { text = "Previous Menu", back = true },
          },
        },

    tiresmoke = { 

      settings = {
        title = "Los Santos Customs",
        menuTitle = "Welcome",
        back = CallbackBack,
        closable = true,
      },

        buttons = { 

            { text = "Normal", subText = cost['smoke'].display, eventServer = "fx_customs:ConfirmMod", data = { smoke = 1, enabled = 0, tr = 255, tg = 255, tb = 255, confirmed = true , cost = cost['smoke'].total} }, 
            { text = "Slate Gray", subText = cost['smoke'].display, eventServer = "fx_customs:ConfirmMod", data = { smoke = 1, enabled = 1, tr = 112, tg = 128, tb = 144,confirmed = true , cost = cost['smoke'].total} },
            { text = "Blue", subText = cost['smoke'].display, eventServer = "fx_customs:ConfirmMod", data = { smoke = 1, enabled = 1, tr = 0, g = 0, tb = 255, confirmed = true , cost = cost['smoke'].total} },
            { text = "Light Blue", subText = cost['smoke'].display, eventServer = "fx_customs:ConfirmMod", data = { smoke = 1, enabled = 1, tr = 0, tg = 150, tb = 255, confirmed = true , cost = cost['smoke'].total} },
            { text = "Navy Blue", subText = cost['smoke'].display, eventServer = "fx_customs:ConfirmMod", data = { smoke = 1, enabled = 1, tr = 0, tg = 0, tb = 128, confirmed = true , cost = cost['smoke'].total} },
            { text = "Sky Blue", subText = cost['smoke'].display, eventServer = "fx_customs:ConfirmMod", data = { smoke = 1, enabled = 1, tr = 135, tg = 206, tb = 235, confirmed = true , cost = cost['smoke'].total} },
            { text = "Turquoise", subText = cost['smoke'].display, eventServer = "fx_customs:ConfirmMod", data = { smoke = 1, enabled = 1, tr = 0, tg = 245, tb = 255, confirmed = true , cost = cost['smoke'].total} },
            { text = "Mint Green", subText = cost['smoke'].display, eventServer = "fx_customs:ConfirmMod", data = { smoke = 1, enabled = 1, tr = 50, tg = 255, tb = 155, confirmed = true , cost = cost['smoke'].total} },
            { text = "Lime Green", subText = cost['smoke'].display, eventServer = "fx_customs:ConfirmMod", data = { smoke = 1, enabled = 1, tr = 0, tg = 255, tb = 0, confirmed = true , cost = cost['smoke'].total} },
            { text = "Yellow", subText = cost['smoke'].display, eventServer = "fx_customs:ConfirmMod", data = { smoke = 1, enabled = 1, tr = 255, tg = 255, tb = 0, confirmed = true , cost = cost['smoke'].total} },
            { text = "Olive", subText = cost['smoke'].display, eventServer = "fx_customs:ConfirmMod", data = { smoke = 1, enabled = 1, tr = 128, tg = 128, tb = 0, confirmed = true , cost = cost['smoke'].total} },
            { text = "Gold", subText = cost['smoke'].display, eventServer = "fx_customs:ConfirmMod", data = { smoke = 1, enabled = 1, tr = 255, tg = 215, tb = 0, confirmed = true , cost = cost['smoke'].total} },
            { text = "Orange", subText = cost['smoke'].display, eventServer = "fx_customs:ConfirmMod", data = { smoke = 1, enabled = 1, tr = 255, tg = 165, tb = 0, confirmed = true , cost = cost['smoke'].total} },
            { text = "Wheat", subText = cost['smoke'].display, eventServer = "fx_customs:ConfirmMod", data = { smoke = 1, enabled = 1, tr = 245, tg = 222, tb = 179, confirmed = true , cost = cost['smoke'].total} },
            { text = "Red", subText = cost['smoke'].display, eventServer = "fx_customs:ConfirmMod", data = { smoke = 1, enabled = 1, tr = 255, tg = 0, tb = 0, confirmed = true , cost = cost['smoke'].total} },
            { text = "Pink", subText = cost['smoke'].display, eventServer = "fx_customs:ConfirmMod", data = { smoke = 1, enabled = 1, tr = 255, tg = 161, tb = 211, confirmed = true , cost = cost['smoke'].total} },
            { text = "Bright Pink", subText = cost['smoke'].display, eventServer = "fx_customs:ConfirmMod", data = { smoke = 1, enabled = 1, tr = 255, tg = 0, tb = 255, confirmed = true , cost = cost['smoke'].total} },
            { text = "Purple", subText = cost['smoke'].display, eventServer = "fx_customs:ConfirmMod", data = { smoke = 1, enabled = 1, tr = 153, tg = 0, tb = 153, confirmed = true , cost = cost['smoke'].total} },
            { text = "Ivory", subText = cost['smoke'].display, eventServer = "fx_customs:ConfirmMod", data = { smoke = 1, enabled = 1, tr = 41, tg = 36, tb = 33, confirmed = true , cost = cost['smoke'].total} },
            { text = "Previous Menu", back = true },
          },
        },

wheels2 = { 

      settings = {
        title = "Los Santos Customs",
        menuTitle = "Categories",
        back = CallbackBack,
        closable = true,
      },

      buttons = { 
        { text = "Front Wheel", menu = "frontWheel" , eventClient = "fx_customs:SetModSpecifics", data = { wheels = "front" }},
        { text = "Rear Wheel", menu = "backwheel" , eventClient = "fx_customs:SetModSpecifics", data = { wheels = "back" }},
        { text = "Rim Color", menu = "classic" , eventClient = "fx_customs:SetModSpecifics", data = { paints = "wheel" }},
        { text = "Wheel Accessories", menu = "wheelaccessories" },
      },
    },

    frontWheel = { 

      settings = {
        title = "Los Santos Customs",
        menuTitle = "Welcome",
        back = CallbackBack,
        closable = true,
      },

        buttons = { 

            { text = "Stock", subText = cost['frontWheel'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 6, modtype = 23, mod = -1, confirmed = true , cost = cost['frontWheel'].total} },
            { text = "Speedway", subText = cost['frontWheel'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 6, modtype = 23, mod = false, confirmed = true , cost = cost['frontWheel'].total} },
            { text = "Streetspecial", subText = cost['frontWheel'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 6, modtype = 23, mod = 1, confirmed = true , cost = cost['frontWheel'].total} },
            { text = "Racer", subText = cost['frontWheel'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 6, modtype = 23, mod = 2, confirmed = true , cost = cost['frontWheel'].total} },
            { text = "Trackstar", subText = cost['frontWheel'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 6, modtype = 23, mod = 3, confirmed = true , cost = cost['frontWheel'].total} },
            { text = "Overlord", subText = cost['frontWheel'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 6, modtype = 23, mod = 4, confirmed = true , cost = cost['frontWheel'].total} },
            { text = "Trident", subText = cost['frontWheel'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 6, modtype = 23, mod = 5, confirmed = true , cost = cost['frontWheel'].total} },
            { text = "Triplethreat", subText = cost['frontWheel'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 6, modtype = 23, mod = 6, confirmed = true , cost = cost['frontWheel'].total} },
            { text = "Stilleto", subText = cost['frontWheel'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 6, modtype = 23, mod = 7, confirmed = true , cost = cost['frontWheel'].total} },
            { text = "Wires", subText = cost['frontWheel'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 6, modtype = 23, mod = 8, confirmed = true , cost = cost['frontWheel'].total} },
            { text = "Bobber", subText = cost['frontWheel'].display, hoverEventServer = "fx_customs:PreviewMod",eventServer = "fx_customs:ConfirmMod", data = { wtype = 6, modtype = 23, mod = 9, confirmed = true , cost = cost['frontWheel'].total} },
            { text = "Solidus", subText = cost['frontWheel'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 6, modtype = 23, mod = 10, confirmed = true , cost = cost['frontWheel'].total} },
            { text = "Iceshield", subText = cost['frontWheel'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 6, modtype = 23, mod = 11, confirmed = true , cost = cost['frontWheel'].total} },
            { text = "Loops", subText = cost['frontWheel'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 6, modtype = 23, mod = 12, confirmed = true , cost = cost['frontWheel'].total} },
          },
        },

    backwheel = {  --TODO JINK WORK ON THIS MORE ASSUMING THERE MIGHT BE MORE MODS

      settings = {
        title = "Los Santos Customs",
        menuTitle = "Welcome",
        back = CallbackBack,
        closable = true,
      },

        buttons = { 

            { text = "Stock", subText = cost['backWheel'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 6, modtype = 24, mod = -1, confirmed = true , cost = cost['backWheel'].total} },
            { text = "Speedway", subText = cost['backWheel'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 6, modtype = 24, mod = false, confirmed = true , cost = cost['backWheel'].total} },
            { text = "Streetspecial", subText = cost['backWheel'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 6, modtype = 24, mod = 1, confirmed = true , cost = cost['backWheel'].total} },
            { text = "Racer", subText = cost['backWheel'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 6, modtype = 24, mod = 2, confirmed = true , cost = cost['backWheel'].total} },
            { text = "Trackstar", subText = cost['backWheel'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 6, modtype = 24, mod = 3, confirmed = true , cost = cost['backWheel'].total} },
            { text = "Overlord", subText = cost['backWheel'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 6, modtype = 24, mod = 4, confirmed = true , cost = cost['backWheel'].total} },
            { text = "Trident", subText = cost['backWheel'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 6, modtype = 24, mod = 5, confirmed = true , cost = cost['backWheel'].total} },
            { text = "Triplethreat", subText = cost['backWheel'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 6, modtype = 24, mod = 6, confirmed = true , cost = cost['backWheel'].total} },
            { text = "Stilleto", subText = cost['backWheel'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 6, modtype = 24, mod = 7, confirmed = true , cost = cost['backWheel'].total} },
            { text = "Wires", subText = cost['backWheel'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 6, modtype = 24, mod = 8, confirmed = true , cost = cost['backWheel'].total} },
            { text = "Bobber", subText = cost['backWheel'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 6, modtype = 24, mod = 9, confirmed = true , cost = cost['backWheel'].total} },
            { text = "Solidus", subText = cost['backWheel'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 6, modtype = 24, mod = 10, confirmed = true , cost = cost['backWheel'].total} },
            { text = "Iceshield", subText = cost['backWheel'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 6, modtype = 24, mod = 11, confirmed = true , cost = cost['backWheel'].total} },
            { text = "Loops", subText = cost['backWheel'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { wtype = 6, modtype = 24, mod = 12, confirmed = true , cost = cost['backWheel'].total} },
          },
        },
---------------[ACCESSORIES CATEGORY]---------------

accessories = {

        settings = {
          title = "Los Santos Customs",
          menuTitle = "Categories",
          back = CallbackBack,
          closable = true,
        },

          buttons = {

              { text = "Horns", menu = "horn" },
              { text = "Liscense Plate", menu = "plate" },
              { text = "Previous Menu", back = true },
            },
          },

  horn = { 

      settings = {
          title = "Los Santos Customs",
          menuTitle = "Welcome",
          back = CallbackBack,
          closable = true,
        },

        buttons = { 

            {text = "Stock Horn", subText = cost['horn'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 14, mod = -1, confirmed = true , cost = cost['horn'].total} },
            {text = "Truck Horn", subText = cost['horn'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 14, mod = false, confirmed = true , cost = cost['horn'].total} },
            {text = "Police Horn", subText = cost['horn'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 14, mod = 1, confirmed = true , cost = cost['horn'].total} },
            {text = "Clown Horn", subText = cost['horn'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 14, mod = 2, confirmed = true , cost = cost['horn'].total} },
            {text = "Musical Horn 1", subText = cost['horn'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 14, mod = 3, confirmed = true , cost = cost['horn'].total} },
            {text = "Musical Horn 2", subText = cost['horn'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 14, mod = 4, confirmed = true , cost = cost['horn'].total} },
            {text = "Musical Horn 3", subText = cost['horn'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 14, mod = 5, confirmed = true , cost = cost['horn'].total} },
            {text = "Musical Horn 4", subText = cost['horn'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 14, mod = 6, confirmed = true , cost = cost['horn'].total} },
            {text = "Musical Horn 5", subText = cost['horn'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 14, mod = 7, confirmed = true , cost = cost['horn'].total} },
            {text = "Sadtrombone Horn", subText = cost['horn'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 14, mod = 8, confirmed = true , cost = cost['horn'].total} },
            {text = "Calssical Horn 1", subText = cost['horn'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 14, mod = 9, confirmed = true , cost = cost['horn'].total} },
            {text = "Calssical Horn 2", subText = cost['horn'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 14, mod = 10, confirmed = true , cost = cost['horn'].total} },
            {text = "Calssical Horn 3", subText = cost['horn'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 14, mod = 11, confirmed = true , cost = cost['horn'].total} },
            {text = "Calssical Horn 4", subText = cost['horn'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 14, mod = 12, confirmed = true , cost = cost['horn'].total} },
            {text = "Calssical Horn 5", subText = cost['horn'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 14, mod = 13, confirmed = true , cost = cost['horn'].total} },
            {text = "Calssical Horn 6", subText = cost['horn'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 14, mod = 14, confirmed = true , cost = cost['horn'].total} },
            {text = "Calssical Horn 7", subText = cost['horn'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 14, mod = 15, confirmed = true , cost = cost['horn'].total} },
            {text = "Scaledo Horn", subText = cost['horn'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 14, mod = 16, confirmed = true , cost = cost['horn'].total} },
            {text = "Scalere Horn", subText = cost['horn'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 14, mod = 17, confirmed = true , cost = cost['horn'].total} },
            {text = "Scalemi Horn", subText = cost['horn'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 14, mod = 18, confirmed = true , cost = cost['horn'].total} },
            {text = "Scalefa Horn", subText = cost['horn'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 14, mod = 19, confirmed = true , cost = cost['horn'].total} },
            {text = "Scalesol Horn", subText = cost['horn'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 14, mod = 20, confirmed = true , cost = cost['horn'].total} },
            {text = "Scalela Horn", subText = cost['horn'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 14, mod = 21, confirmed = true , cost = cost['horn'].total} },
            {text = "Scaleti Horn", subText = cost['horn'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 14, mod = 22, confirmed = true , cost = cost['horn'].total} },
            {text = "Scaledo Horn High", subText = cost['horn'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 14, mod = 23, confirmed = true , cost = cost['horn'].total} },
            {text = "Jazz Horn 1", subText = cost['horn'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 14, mod = 25, confirmed = true , cost = cost['horn'].total} },
            {text = "Jazz Horn 2", subText = cost['horn'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 14, mod = 26, confirmed = true , cost = cost['horn'].total} },
            {text = "Jazz Horn 3", subText = cost['horn'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 14, mod = 27, confirmed = true , cost = cost['horn'].total} },
            {text = "Jazzloop Horn", subText = cost['horn'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 14, mod = 28, confirmed = true , cost = cost['horn'].total} },
            {text = "Starspangban Horn 1", subText = cost['horn'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 14, mod = 29, confirmed = true , cost = cost['horn'].total} },
            {text = "Starspangban Horn 2", subText = cost['horn'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 14, mod = 30, confirmed = true , cost = cost['horn'].total} },
            {text = "Starspangban Horn 3", subText = cost['horn'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 14, mod = 31, confirmed = true , cost = cost['horn'].total} },
            {text = "Starspangban Horn 4", subText = cost['horn'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 14, mod = 32, confirmed = true , cost = cost['horn'].total} },
            {text = "Classicalloop Horn 1", subText = cost['horn'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 14, mod = 33, confirmed = true , cost = cost['horn'].total} },
            {text = "Classical Horn 8", subText = cost['horn'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 14, mod = 34, confirmed = true , cost = cost['horn'].total} },
            {text = "Classicalloop Horn 2", subText = cost['horn'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 14, mod = 35, confirmed = true , cost = cost['horn'].total} },
          },
        },

plate = {

      settings = {
          title = "Los Santos Customs",
          menuTitle = "Welcome",
          back = CallbackBack,
          closable = true,
        },

    buttons = {

        {text = "Blue on White 1", subText = cost['plate'].display, eventServer = "fx_customs:ConfirmMod", data = { plateindex = false, confirmed = true , cost = cost['plate'].total} },
        {text = "Blue on White 2", subText = cost['plate'].display, eventServer = "fx_customs:ConfirmMod", data = { plateindex = 3, confirmed = true , cost = cost['plate'].total} },
        {text = "Blue on White 3", subText = cost['plate'].display, eventServer = "fx_customs:ConfirmMod", data = { plateindex = 4, confirmed = true , cost = cost['plate'].total} },
        {text = "Yellow on Blue", subText = cost['plate'].display, eventServer = "fx_customs:ConfirmMod", data = { plateindex = 2, confirmed = true , cost = cost['plate'].total} },
        {text = "Yellow on Black", subText = cost['plate'].display, eventServer = "fx_customs:ConfirmMod", data = { plateindex = 1, confirmed = true , cost = cost['plate'].total} },
      },
    },

---------------[PAINT CATEGORY]---------------

paint = {

      settings = {
        title = "Los Santos Customs",
        menuTitle = "Categories",
        back = CallbackBack,
        closable = true,
      },

    buttons = {

        { text = "Primary", hoverEventServer = "fx_customs:ResetMods", menu = "primary", eventClient = "fx_customs:SetModSpecifics", data = {category = 1, menupaint = true, paints = "primary" }},
        { text = "Secondary", hoverEventServer = "fx_customs:ResetMods", menu = "secondary", eventClient = "fx_customs:SetModSpecifics", data = {category = 2, menupaint = true, paints = "secondary" }},
        { text = "Pearlescent", hoverEventServer = "fx_customs:ResetMods", menu = "pearlescent", eventClient = "fx_customs:SetModSpecifics", data = {category = 3, menupaint = true, paints = "pearl" }},
        { text = "Previous Menu", back = true },
      },
    },

  primary = {

      settings = {
        title = "Los Santos Customs",
        menuTitle = "Categories",
        back = CallbackBack,
        closable = true,
      },

    buttons = {

        { text = "Metallic", menu = "metallic" },
        { text = "Metal", menu = "metal" },
        { text = "Matte", menu = "matte" },
        { text = "Classic", menu = "classic" }, 
        { text = "Previous Menu", back = true },
      },
    },

  secondary = {

      settings = {
        title = "Los Santos Customs",
        menuTitle = "Categories",
        back = CallbackBack,
        closable = true,
      },

    buttons = {

        { text = "Metallic", menu = "metallic" },
        { text = "Metal", menu = "metal" },
        { text = "Matte", menu = "matte" },
        { text = "Classic", menu = "classic" }, 
        { text = "Previous Menu", back = true },
      },
    },

  pearlescent = {

      settings = {
        title = "Los Santos Customs",
        menuTitle = "Categories",
        back = CallbackBack,
        closable = true,
      },

    buttons = {

        { text = "Metallic", menu = "metallic" },
        { text = "Metal", menu = "metal" },
        { text = "Matte", menu = "matte" },
        { text = "Classic", menu = "classic" }, 
        { text = "Previous Menu", back = true },
      },
    },
    

    metallic = {

      settings = {
        title = "Los Santos Customs",
        menuTitle = "Welcome",
        back = ResetState,
        closable = true,
      },

    buttons = {

        { text = "Anhracite Black", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 11, confirmed = true , cost = cost['paint'].total} },
        { text = "Beechwood Brown", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 103, confirmed = true , cost = cost['paint'].total} },
        { text = "Bison Brown", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 101, confirmed = true , cost = cost['paint'].total} },
        { text = "Black Steel", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 2, confirmed = true , cost = cost['paint'].total} },
        { text = "Black", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 0, confirmed = true , cost = cost['paint'].total} },
        { text = "Blaze Red", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 30, confirmed = true , cost = cost['paint'].total} },
        { text = "Bleached Brown", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 106, confirmed = true , cost = cost['paint'].total} },
        { text = "Blue", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 64, confirmed = true , cost = cost['paint'].total} },
        { text = "Bluish Silver", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 5, confirmed = true , cost = cost['paint'].total} },
        { text = "Bright Green", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 53, confirmed = true , cost = cost['paint'].total} },
        { text = "Bright Orange", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 138, confirmed = true , cost = cost['paint'].total} },
        { text = "Bright Purple", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 145, confirmed = true , cost = cost['paint'].total} },
        { text = "Bronze", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 90, confirmed = true , cost = cost['paint'].total} },
        { text = "Cabernet Red", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 34, confirmed = true , cost = cost['paint'].total} },
        { text = "Candy Red", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 35, confirmed = true , cost = cost['paint'].total} },
        { text = "Carbon Black", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 147, confirmed = true , cost = cost['paint'].total} },
        { text = "Cast Iron Silver", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 10, confirmed = true , cost = cost['paint'].total} },
        { text = "Chocolate Brown", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 96, confirmed = true , cost = cost['paint'].total} },
        { text = "Cream", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 107, confirmed = true , cost = cost['paint'].total} },
        { text = "Creeen Brown", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 95, confirmed = true , cost = cost['paint'].total} },
        { text = "Dark Blue", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 62, confirmed = true , cost = cost['paint'].total} },
        { text = "Dark Green", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 49, confirmed = true , cost = cost['paint'].total} },
        { text = "Dark Steel", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 3, confirmed = true , cost = cost['paint'].total} },
        { text = "Dew Yellow", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 91, confirmed = true , cost = cost['paint'].total} },
        { text = "Diamond Blue", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 67, confirmed = true , cost = cost['paint'].total} },
        { text = "Feltzer Brown", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 94, confirmed = true , cost = cost['paint'].total} },
        { text = "Formula Red", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 29, confirmed = true , cost = cost['paint'].total} },
        { text = "Frost White", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 112, confirmed = true , cost = cost['paint'].total} },
        { text = "Galaxy Blue", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 61, confirmed = true , cost = cost['paint'].total} },
        { text = "Garnet Red", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 32, confirmed = true , cost = cost['paint'].total} },
        { text = "Gasoline Green", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 54, confirmed = true , cost = cost['paint'].total} },
        { text = "Gold", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 99, confirmed = true , cost = cost['paint'].total} },
        { text = "Grace Red", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 31, confirmed = true , cost = cost['paint'].total} },
        { text = "Harbor Blue", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 66, confirmed = true , cost = cost['paint'].total} },
        { text = "Hot Pink", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 135, confirmed = true , cost = cost['paint'].total} },
        { text = "Hraphite", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 1, confirmed = true , cost = cost['paint'].total} },
        { text = "Ice White", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 111, confirmed = true , cost = cost['paint'].total} },
        { text = "Lava Red", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 150, confirmed = true , cost = cost['paint'].total} },
        { text = "Light Blue", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 74, confirmed = true , cost = cost['paint'].total} },
        { text = "Lime Green", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 92, confirmed = true , cost = cost['paint'].total} },
        { text = "Maple Brown", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 97, confirmed = true , cost = cost['paint'].total} },
        { text = "Mariner Blue", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 65, confirmed = true , cost = cost['paint'].total} },
        { text = "Midnight Blue", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 141, confirmed = true , cost = cost['paint'].total} },
        { text = "Midnight Purple", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 142, confirmed = true , cost = cost['paint'].total} },
        { text = "Midnight Silver", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 9, confirmed = true , cost = cost['paint'].total} },
        { text = "Moss Brown", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 100, confirmed = true , cost = cost['paint'].total} },
        { text = "Nautical Blue", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 69, confirmed = true , cost = cost['paint'].total} },
        { text = "Olive Green", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 52, confirmed = true , cost = cost['paint'].total} },
        { text = "Orange", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 38, confirmed = true , cost = cost['paint'].total} },
        { text = "Pfsiter Pink", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 137, confirmed = true , cost = cost['paint'].total} },
        { text = "Race Yellow", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 89, confirmed = true , cost = cost['paint'].total} },
        { text = "Racing Blue", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 73, confirmed = true , cost = cost['paint'].total} },
        { text = "Racing Green", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 50, confirmed = true , cost = cost['paint'].total} },
        { text = "Red", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 27, confirmed = true , cost = cost['paint'].total} },
        { text = "Rolled Steel", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 6, confirmed = true , cost = cost['paint'].total} },
        { text = "Saddle Brown", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 98, confirmed = true , cost = cost['paint'].total} },
        { text = "Salmon Pink", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 136, confirmed = true , cost = cost['paint'].total} },
        { text = "Sandy Brown", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 105, confirmed = true , cost = cost['paint'].total} },
        { text = "Saxon Blue", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 63, confirmed = true , cost = cost['paint'].total} },
        { text = "Schafter Purple", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 71, confirmed = true , cost = cost['paint'].total} },
        { text = "Sea Green", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 51, confirmed = true , cost = cost['paint'].total} },
        { text = "Shadow Silver", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 7, confirmed = true , cost = cost['paint'].total} },
        { text = "Sienna Brown", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 104, confirmed = true , cost = cost['paint'].total} },
        { text = "Silver", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 4, confirmed = true , cost = cost['paint'].total} },
        { text = "Spinnaker Purple", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 72, confirmed = true , cost = cost['paint'].total} },
        { text = "Stone Silver", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 8, confirmed = true , cost = cost['paint'].total} },
        { text = "Straw Brown", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 99, confirmed = true , cost = cost['paint'].total} },
        { text = "Sunrise Orange", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 36, confirmed = true , cost = cost['paint'].total} },
        { text = "Sunset Red", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 33, confirmed = true , cost = cost['paint'].total} },
        { text = "Surf Blue", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 68,  confirmed = true , cost = cost['paint'].total} },
        { text = "Torino Red", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 28, confirmed = true , cost = cost['paint'].total} },
        { text = "Ultra Blue", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 70, confirmed = true , cost = cost['paint'].total} },
        { text = "Wine Red", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 143, confirmed = true , cost = cost['paint'].total} },
        { text = "Woodbeech Brown", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 102, confirmed = true , cost = cost['paint'].total} },
        { text = "Yellow", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 88, confirmed = true , cost = cost['paint'].total} },
        { text = "Previous Menu", back = true },
      },
    },

    metal = { 

      settings = {
        title = "Los Santos Customs",
        menuTitle = "Welcome",
        back = CallbackBack,
        closable = true,
      },

      buttons = {

          { text = "Brushed Aluminum", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 118, confirmed = true , cost = cost['paint'].total} },
          { text = "Brushed Gold", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 159, confirmed = true , cost = cost['paint'].total} },
          { text = "Brushed Steel", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 117, confirmed = true , cost = cost['paint'].total} },
          { text = "Pure Gold", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 158, confirmed = true , cost = cost['paint'].total} }, 
        },
      },

    matte = { 

      settings = {
        title = "Los Santos Customs",
        menuTitle = "Welcome",
        back = CallbackBack,
        closable = true,
      },

      buttons = {

          { text = "Black", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 12, confirmed = true , cost = cost['paint'].total} },
          { text = "Blue", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 83, confirmed = true , cost = cost['paint'].total} },
          { text = "Dark Blue", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 82, confirmed = true , cost = cost['paint'].total} },
          { text = "Dark Earth", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 153, confirmed = true , cost = cost['paint'].total} },
          { text = "Dark Red", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 40, confirmed = true , cost = cost['paint'].total} },
          { text = "Desert Tan", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 40, confirmed = true , cost = cost['paint'].total} },
          { text = "Foliage Green", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 155, confirmed = true , cost = cost['paint'].total} },
          { text = "Frost Green", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 151, confirmed = true , cost = cost['paint'].total} },
          { text = "Gray", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 13, confirmed = true , cost = cost['paint'].total} },
          { text = "Green", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 128, confirmed = true , cost = cost['paint'].total} },
          { text = "Ice White", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 131, confirmed = true , cost = cost['paint'].total} },
          { text = "Light Gray", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 14, confirmed = true , cost = cost['paint'].total} },
          { text = "Lime Green", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 55, confirmed = true , cost = cost['paint'].total} },
          { text = "Midnight Blue", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 84, confirmed = true , cost = cost['paint'].total} },
          { text = "Midnight Purple", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 149, confirmed = true , cost = cost['paint'].total} },
          { text = "Olive Darb", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 152, confirmed = true , cost = cost['paint'].total} },
          { text = "Orange", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 41, confirmed = true , cost = cost['paint'].total} },
          { text = "Red", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 39, confirmed = true , cost = cost['paint'].total} },
          { text = "Schafter Purple", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 148, confirmed = true , cost = cost['paint'].total} },
          { text = "Yellow", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 42, confirmed = true , cost = cost['paint'].total} },
        },
      },

    classic = { 

      settings = {
        title = "Los Santos Customs",
        menuTitle = "Welcome",
        back = CallbackBack,
        closable = true,
      },

      buttons = { 

          { text = "Anhracite Black", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 11, confirmed = true , cost = cost['paint'].total} },
          { text = "Beechwood Brown", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 103,confirmed = true , cost = cost['paint'].total} },
          { text = "Bison Brown", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 101, confirmed = true , cost = cost['paint'].total} },
          { text = "Black Steel", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 2, confirmed = true , cost = cost['paint'].total} },
          { text = "Black", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 0, confirmed = true , cost = cost['paint'].total} },
          { text = "Blaze Red", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 30, confirmed = true , cost = cost['paint'].total} },
          { text = "Bleached Brown", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 106, confirmed = true , cost = cost['paint'].total} },
          { text = "Blue", subText = cost['paint'].display, eventServer = "fx_customs:ConfirmMod", data = { colorindex = 64, confirmed = true , cost = cost['paint'].total} },
          { text = "Bluish Silver", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 5, confirmed = true , cost = cost['paint'].total} },
          { text = "Bright Green", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 53, confirmed = true , cost = cost['paint'].total} },
          { text = "Bright Orange", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 138, confirmed = true , cost = cost['paint'].total} },
          { text = "Bright Purple", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 145, confirmed = true , cost = cost['paint'].total} },
          { text = "Bronze", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 90, confirmed = true , cost = cost['paint'].total} },
          { text = "Cabernet Red", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 34, confirmed = true , cost = cost['paint'].total} },
          { text = "Candy Red", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 35, confirmed = true , cost = cost['paint'].total} },
          { text = "Carbon Black", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 147, confirmed = true , cost = cost['paint'].total} },
          { text = "Cast Iron Silver", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 10, confirmed = true , cost = cost['paint'].total} },
          { text = "Chocolate Brown", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 96, confirmed = true , cost = cost['paint'].total} },
          { text = "Cream", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 107, confirmed = true , cost = cost['paint'].total} },
          { text = "Creeen Brown", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 95, confirmed = true , cost = cost['paint'].total} },
          { text = "Dark Blue", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 62, confirmed = true , cost = cost['paint'].total} },
          { text = "Dark Green", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 49, confirmed = true , cost = cost['paint'].total} },
          { text = "Dark Steel", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 3, confirmed = true , cost = cost['paint'].total} },
          { text = "Dew Yellow", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 91, confirmed = true , cost = cost['paint'].total} },
          { text = "Diamond Blue", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 67, confirmed = true , cost = cost['paint'].total} },
          { text = "Feltzer Brown", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 94, confirmed = true , cost = cost['paint'].total} },
          { text = "Formula Red", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 29, confirmed = true , cost = cost['paint'].total} },
          { text = "Frost White", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 112, confirmed = true , cost = cost['paint'].total} },
          { text = "Galaxy Blue", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 61, confirmed = true , cost = cost['paint'].total} },
          { text = "Garnet Red", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 32, confirmed = true , cost = cost['paint'].total} },
          { text = "Gasoline Green", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 54, confirmed = true , cost = cost['paint'].total} },
          { text = "Gold", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = {  colorindex = 99, confirmed = true , cost = cost['paint'].total} },
          { text = "Grace Red", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 31, confirmed = true , cost = cost['paint'].total} },
          { text = "Harbor Blue", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 66, confirmed = true , cost = cost['paint'].total} },
          { text = "Hot Pink", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 135, confirmed = true , cost = cost['paint'].total} },
          { text = "Hraphite", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 1, confirmed = true , cost = cost['paint'].total} },
          { text = "Ice White", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 111, confirmed = true , cost = cost['paint'].total} },
          { text = "Lava Red", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 150, confirmed = true , cost = cost['paint'].total} },
          { text = "Light Blue", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 74, confirmed = true , cost = cost['paint'].total} },
          { text = "Lime Green", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 92, confirmed = true , cost = cost['paint'].total} },
          { text = "Maple Brown", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 97, confirmed = true , cost = cost['paint'].total} },
          { text = "Mariner Blue", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 65, confirmed = true , cost = cost['paint'].total} },
          { text = "Midnight Blue", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 141, confirmed = true , cost = cost['paint'].total} },
          { text = "Midnight Purple", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 142, confirmed = true , cost = cost['paint'].total} },
          { text = "Midnight Silver", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 9, confirmed = true , cost = cost['paint'].total} },
          { text = "Moss Brown", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 100, confirmed = true , cost = cost['paint'].total} },
          { text = "Nautical Blue", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 69, confirmed = true , cost = cost['paint'].total} },
          { text = "Olive Green", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 52, confirmed = true , cost = cost['paint'].total} },
          { text = "Orange", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 38, confirmed = true , cost = cost['paint'].total} },
          { text = "Pfsiter Pink", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 137, confirmed = true , cost = cost['paint'].total} },
          { text = "Race Yellow", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 89, confirmed = true , cost = cost['paint'].total} },
          { text = "Racing Blue", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 73, confirmed = true , cost = cost['paint'].total} },
          { text = "Racing Green", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 50, confirmed = true , cost = cost['paint'].total} },
          { text = "Red", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 27, confirmed = true , cost = cost['paint'].total} },
          { text = "Rolled Steel", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 6, confirmed = true , cost = cost['paint'].total} },
          { text = "Saddle Brown", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 98, confirmed = true , cost = cost['paint'].total} },
          { text = "Salmon Pink", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 136, confirmed = true , cost = cost['paint'].total} },
          { text = "Sandy Brown", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 105, confirmed = true , cost = cost['paint'].total} },
          { text = "Saxon Blue", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 63, confirmed = true , cost = cost['paint'].total} },
          { text = "Schafter Purple", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 71, confirmed = true , cost = cost['paint'].total} },
          { text = "Sea Green", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 51, confirmed = true , cost = cost['paint'].total} },
          { text = "Shadow Silver", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 7, confirmed = true , cost = cost['paint'].total} },
          { text = "Sienna Brown", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 104, confirmed = true , cost = cost['paint'].total} },
          { text = "Silver", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 4, confirmed = true , cost = cost['paint'].total} },
          { text = "Spinnaker Purple", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 72, confirmed = true , cost = cost['paint'].total} },
          { text = "Stone Silver", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 8, confirmed = true , cost = cost['paint'].total} },
          { text = "Straw Brown", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 99, confirmed = true , cost = cost['paint'].total} },
          { text = "Sunrise Orange", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 36, confirmed = true , cost = cost['paint'].total} },
          { text = "Sunset Red", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 33, confirmed = true , cost = cost['paint'].total} },
          { text = "Surf Blue", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 68, confirmed = true , cost = cost['paint'].total} },
          { text = "Torino Red", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 28, confirmed = true , cost = cost['paint'].total} },
          { text = "Ultra Blue", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = {colorindex = 70, confirmed = true , cost = cost['paint'].total} },
          { text = "Wine Red", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 143, confirmed = true , cost = cost['paint'].total} },
          { text = "Woodbeech Brown", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 102, confirmed = true , cost = cost['paint'].total} },
          { text = "Yellow", subText = cost['paint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { colorindex = 88, confirmed = true , cost = cost['paint'].total} },
        },
      },
---------------[TUNINGCATEGORY]---------------
  tuning = {

          settings = {
            title = "Los Santos Customs",
            menuTitle = "Categories",
            back = CallbackBack,
            closable = true,
          },

        buttons = {

            { text = "Suspension", menu = "suspension" },
            { text = "Transmission", menu = "transmission" },
            { text = "Turbo", menu = "turbo" },
            { text = "Brakes", menu = "brakes" },
            { text = "Engine", menu = "engine" },
            { text = "Armor", menu = "armor" },
            { text = "Previous Menu", back = true },
          },
        },

   tuning2 = {

          settings = {
            title = "Los Santos Customs",
            menuTitle = "Categories",
            back = CallbackBack,
            closable = true,
          },

        buttons = {

            { text = "Transmission", menu = "transmission" },
            { text = "Turbo", menu = "turbo" },
            { text = "Brakes", menu = "brakes" },
            { text = "Engine", menu = "engine" },
            { text = "Armor", menu = "armor" },
            { text = "Previous Menu", back = true },
          },
        },

    suspension = { 

          settings = {
            title = "Los Santos Customs",
            menuTitle = "Welcome",
            back = CallbackBack,
            closable = true,
          },

        buttons = {

            {text = "Stock Suspension", subText = cost['suspension'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 15, mod = -1, confirmed = true , cost = cost['suspension'].total} },
            {text = "Lowered Suspension", subText = cost['suspension'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 15, mod = false, confirmed = true , cost = cost['suspension'].total} },
            {text = "Street Suspension", subText = cost['suspension'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 15, mod = 1, confirmed = true , cost = cost['suspension'].total} },
            {text = "Sport Suspension", subText = cost['suspension'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 15, mod = 2, confirmed = true , cost = cost['suspension'].total} },
            {text = "Competition Suspension", subText = cost['suspension'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 15, mod = 3, confirmed = true , cost = cost['suspension'].total} },
          },
        },

    transmission = { 
          
          settings = {
            title = "Los Santos Customs",
            menuTitle = "Welcome",
            back = CallbackBack,
            closable = true,
          },
          
        buttons = {

            {text = "Stock Transmission", subText = cost['transmission'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 13, mod = -1, confirmed = true , cost = cost['transmission'].total} },
            {text = "Street Transmission", subText = cost['transmission'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 13, mod = false, confirmed = true , cost = cost['transmission'].total} },
            {text = "Sports Transmission", subText = cost['transmission'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 13, mod = 1, confirmed = true , cost = cost['transmission'].total} },
            {text = "Race Transmission", subText = cost['transmission'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 13, mod = 2, confirmed = true , cost = cost['transmission'].total} },
          },
        },
       
    turbo = { 
          
          settings = {
            title = "Los Santos Customs",
            menuTitle = "Welcome",
            back = CallbackBack,
            closable = true,
          },
          
        buttons = {

            {text = "None", subText = "Free", eventServer = "fx_customs:ConfirmMod", data = { turbo = false, toggle = 0, confirmed = true , cost = 0} },
            {text = "Turbo Tuning", subText = cost['turbo'].display, eventServer = "fx_customs:ConfirmMod", data = { turbo = true, toggle = 1,  confirmed = true , cost = cost['turbo'].total} },
          },
        },

    brakes = { 
        
          settings = {
            title = "Los Santos Customs",
            menuTitle = "Welcome",
            back = CallbackBack,
            closable = true,
          },
          
      buttons = {

          {text = "Stock Brakes", subText = cost['brakes'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 12, mod = -1, confirmed = true , cost = cost['brakes'].total} },
          {text = "Street Brakes", subText = cost['brakes'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 12, mod = false, confirmed = true , cost = cost['brakes'].total} },
          {text = "Sport Brakes", subText = cost['brakes'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 12, mod = 1, confirmed = true , cost = cost['brakes'].total} },
          {text = "Race Brakes", subText = cost['brakes'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 12, mod = 2, confirmed = true , cost = cost['brakes'].total} }, 
        },
      },

    engine = { 
        
          settings = {
            title = "Los Santos Customs",
            menuTitle = "Welcome",
            back = CallbackBack,
            closable = true,
          },
          
      buttons = {

          {text = "EMS Upgrade, Level 1", subText = cost['engine'].display, eventServer = "fx_customs:ConfirmMod", data = { level = 1, modtype = 11, mod = -1, confirmed = true , cost = cost['engine'].total} },
          {text = "EMS Upgrade, Level 2", subText = cost['engine'].display, eventServer = "fx_customs:ConfirmMod", data = { level = 2, modtype = 11, mod = false, confirmed = true , cost = cost['engine'].total} },
          {text = "EMS Upgrade, Level 3", subText = cost['engine'].display, eventServer = "fx_customs:ConfirmMod", data = { level = 3, modtype = 11, mod = 1, confirmed = true , cost = cost['engine'].total} },
          {text = "EMS Upgrade, Level 4", subText = cost['engine'].display, eventServer = "fx_customs:ConfirmMod", data = { level = 4, modtype = 11, mod = 2, confirmed = true , cost = cost['engine'].total} },
        },
      },

    armor = { 
        
          settings = {
            title = "Los Santos Customs",
            menuTitle = "Welcome",
            back = CallbackBack,
            closable = true,
          },
          
      buttons = { 

          {text = "None", subText = cost['armor'].display, eventServer = "fx_customs:ConfirmMod", data = { level = 0, modtype = 16, mod = -1, confirmed = true , cost = cost['armor'].total} },
          {text = "Armor Upgrade 20%", subText = cost['armor'].display, eventServer = "fx_customs:ConfirmMod", data = {level = 1, modtype = 16, mod = false, confirmed = true , cost = cost['armor'].total} },
          {text = "Armor Upgrade 40%", subText = cost['armor'].display, eventServer = "fx_customs:ConfirmMod", data = { level = 2, modtype = 16, mod = 1, confirmed = true , cost = cost['armor'].total} },
          {text = "Armor Upgrade 60%", subText = cost['armor'].display, eventServer = "fx_customs:ConfirmMod", data = { level = 3, level = 0, modtype = 16, mod = 2, confirmed = true , cost = cost['armor'].total} },
          {text = "Armor Upgrade 80%", subText = cost['armor'].display, eventServer = "fx_customs:ConfirmMod", data = { level = 4, modtype = 16, mod = 3, confirmed = true , cost = cost['armor'].total} },
          {text = "Armor Upgrade 100%", subText = cost['armor'].display, eventServer = "fx_customs:ConfirmMod", data = { level = 5, modtype = 16, mod = 4, confirmed = true , cost = cost['armor'].total} },
        },
      },
---------------[LIGHTS CATEGORY]---------------
    lights = { 
    
        settings = {
          title = "Los Santos Customs",
          menuTitle = "Categories",
          closable = true,
        },

        buttons = {

            { text = "Headlights", menu = "headlights" },
            { text = "Neon Kits", menu = "neonkits"  },
          },
        },

    lights2 = { 
    
        settings = {
          title = "Los Santos Customs",
          menuTitle = "Categories",
          closable = true,
        },

        buttons = {

            { text = "Headlights", menu = "headlights" },
          },
        },

        headlights = { 
      
          settings = {
            title = "Los Santos Customs",
            menuTitle = "Welcome",
            closable = true,
          },
          
          buttons = { 
            { text = "Stock Lights", subText = cost['headlights'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { xeon = false, toggle = 0, confirmed = true , cost = cost['headlights'].total} },
            { text = "Xenon Lights", subText = cost['headlights'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { xeon = true, toggle = 1, confirmed = true , cost = cost['headlights'].total} },
          },
        },

    neonkits = { 
      
          settings = {
            title = "Los Santos Customs",
            menuTitle = "Welcome",
            back = CallbackBack,
            closable = true,
          },
          
              buttons = {
                  { text = "Only Front", menu = "neoncolor", eventClient = "fx_customs:SetModSpecifics", data = { side = "front" }},
                  { text = "Left & Right", menu = "neoncolor", eventClient = "fx_customs:SetModSpecifics", data = { side = "left" }},
                  { text = "Only back", menu = "neoncolor", eventClient = "fx_customs:SetModSpecifics", data = { side = "back" }},
                  { text = "All", menu = "neoncolor", eventClient = "fx_customs:SetModSpecifics", data = { side = "all" }},
                },
              },

    neoncolor = { 
                      
          settings = {
            title = "Los Santos Customs",
            menuTitle = "Welcome",
            back = CallbackBack,
            closable = true,
          },
          
                buttons = {
                  { text = "None", subText = "Free", hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { enabled = 0, r = 0, g = 0, b = 0, confirmed = true , cost = 0} }, 
                  { text = "White", subText = cost['neon'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { enabled = 1, r = 255, g = 255, b = 255, confirmed = true , cost = cost['neon'].total} }, 
                  { text = "Slate Gray", subText = cost['neon'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { enabled = 1, r = 112, g = 128, b = 144,confirmed = true , cost = cost['neon'].total} },
                  { text = "Blue", subText = cost['neon'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { enabled = 1, r = 0, g = 0, b = 255, confirmed = true , cost = cost['neon'].total} },
                  { text = "Light Blue", subText = cost['neon'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { enabled = 1, r = 0, g = 150, b = 255, confirmed = true , cost = cost['neon'].total} },
                  { text = "Navy Blue", subText = cost['neon'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { enabled = 1, r = 0, g = 0, b = 128, confirmed = true , cost = cost['neon'].total} },
                  { text = "Sky Blue", subText = cost['neon'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { enabled = 1, r = 135, g = 206, b = 235, confirmed = true , cost = cost['neon'].total} },
                  { text = "Turquoise", subText = cost['neon'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { enabled = 1, r = 0, g = 245, b = 255, confirmed = true , cost = cost['neon'].total} },
                  { text = "Mint Green", subText = cost['neon'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { enabled = 1, r = 50, g = 255, b = 155, confirmed = true , cost = cost['neon'].total} },
                  { text = "Lime Green", subText = cost['neon'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { enabled = 1, r = 0, g = 255, b = 0, confirmed = true , cost = cost['neon'].total} },
                  { text = "Yellow", subText = cost['neon'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { enabled = 1, r = 255, g = 255, b = 0, confirmed = true , cost = cost['neon'].total} },
                  { text = "Olive", subText = cost['neon'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { enabled = 1, r = 128, g = 128, b = 0, confirmed = true , cost = cost['neon'].total} },
                  { text = "Gold", subText = cost['neon'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { enabled = 1, r = 255, g = 215, b = 0, confirmed = true , cost = cost['neon'].total} },
                  { text = "Orange", subText = cost['neon'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { enabled = 1, r = 255, g = 165, b = 0, confirmed = true , cost = cost['neon'].total} },
                  { text = "Wheat", subText = cost['neon'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { enabled = 1, r = 245, g = 222, b = 179, confirmed = true , cost = cost['neon'].total} },
                  { text = "Red", subText = cost['neon'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { enabled = 1, r = 255, g = 0, b = 0, confirmed = true , cost = cost['neon'].total} },
                  { text = "Pink", subText = cost['neon'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { enabled = 1, r = 255, g = 161, b = 211, confirmed = true , cost = cost['neon'].total} },
                  { text = "Bright Pink", subText = cost['neon'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { enabled = 1, r = 255, g = 0, b = 255, confirmed = true , cost = cost['neon'].total} },
                  { text = "Purple", subText = cost['neon'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { enabled = 1, r = 153, g = 0, b = 153, confirmed = true , cost = cost['neon'].total} },
                  { text = "Ivory", subText = cost['neon'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { enabled = 1, r = 41, g = 36, b = 33, confirmed = true , cost = cost['neon'].total} },
                },
              },

---------------[WINDOWS CATEGORY]---------------
    windows = { 

      settings = {
        title = "Los Santos Customs",
        menuTitle = "Welcome",
        back = CallbackBack,
        closable = true,
      },

      buttons = { 
        {text = "None", subText = cost['windowtint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { tint = false, confirmed = true , cost = cost['windowtint'].total} },
        {text = "Pure Black", subText = cost['windowtint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { tint = 1, confirmed = true , cost = cost['windowtint'].total} },
        {text = "Darksmoke", subText = cost['windowtint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { tint = 2, confirmed = true , cost = cost['windowtint'].total} },
        {text = "Lightsmoke", subText = cost['windowtint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { tint = 3, confirmed = true , cost = cost['windowtint'].total} },
        {text = "Limo", subText = cost['windowtint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { tint = 4, confirmed = true , cost = cost['windowtint'].total} },
        {text = "Green", subText = cost['windowtint'].display, hoverEventServer = "fx_customs:PreviewMod", eventServer = "fx_customs:ConfirmMod", data = { tint = 5, confirmed = true , cost = cost['windowtint'].total} },
      },
    },
  }
