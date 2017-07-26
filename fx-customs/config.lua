  -- @Date:   2017-07-26
  -- @Project: FX Customs
  -- @Owner: Jink Left
  -- @Last modified time: 2017-07-26
-------------------------------------------
---------------[COST MENU]----------------
local cost = {
  ['repair'] = { total = 100, display = "$100"},
  ['rims'] = { total = 500, display = "$500"},
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
        menuTitle = "Welcome",
        back = CallbackBack,
        closable = true,
      },

      buttons = {
        { text = "Wheels", subText = "", menu = "wheels"  },
        { text = "Accessories", subText = "", menu = "accessories"  },
        { text = "Paint", subText = "", menu = "paint" },
        { text = "Tuning", subText = "", menu = "tuning"  }, 
        { text = "Lights", subText = "", menu = "lights"  },
        { text = "Window Tint", subText = "", menu = "windows"  },
        { text = "Previous Menu", back = true },
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
---------------[WHEEL CATEGORY]---------------
    wheels = { 

      settings = {
        title = "Los Santos Customs",
        menuTitle = "Welcome",
        back = CallbackBack,
        closable = true,
      },

      buttons = { 
        { text = "Wheel Type", subText = "", menu = "wheeltype" },
        { text = "Wheel Color", subText = "", menu = "classic" },
        { text = "Wheel Accessories", subText = "", menu = "wheelaccessories" },
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
        
        { text = "Sport", wtype = false, subText = "", menu = "sport" },
        { text = "Muscle", wtype = 1, subText = "", menu = "muscle" },
        { text = "Lowrider", wtype = 2, subText = "", menu = "lowrider" },
        { text = "Suv", wtype = 3, subText = "", menu = "suv" },
        { text = "Offroad", wtype = 4, subText = "", menu = "offroad" },
        { text = "Tuner", wtype = 5, subText = "", menu = "tuner" },
        { text = "Highend", wtype = 7, subText = "", menu = "highend" },
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
              { text = "Chrono", wtype = false, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 4, confirmed = true , cost = cost['rims'].total} },
              { text = "Cosmo", wtype = false, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 16, confirmed = true , cost = cost['rims'].total} },
              { text = "Dashvip", wtype = false, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 17, confirmed = true , cost = cost['rims'].total} },
              { text = "Deepfive", wtype = false, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 1, confirmed = true , cost = cost['rims'].total} },
              { text = "Diamondcut", wtype = false, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 3, confirmed = true , cost = cost['rims'].total} },
              { text = "Duper7", wtype = false, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 11, confirmed = true , cost = cost['rims'].total} },
              { text = "Endov1", wtype = false, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 10, confirmed = true , cost = cost['rims'].total} },
              { text = "Endov2", wtype = false, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 22, confirmed = true , cost = cost['rims'].total} },
              { text = "Feroccirr", wtype = false, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 5, confirmed = true , cost = cost['rims'].total} },
              { text = "Fiftynine", wtype = false, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 6, confirmed = true , cost = cost['rims'].total} },
              { text = "Groundride", wtype = false, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 13, confirmed = true , cost = cost['rims'].total} },
              { text = "Icekid", wtype = false, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 18, confirmed = true , cost = cost['rims'].total} },
              { text = "Inferno", wtype = false, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = false, confirmed = true , cost = cost['rims'].total} },
              { text = "Lozspeed", wtype = false, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 2, confirmed = true , cost = cost['rims'].total} },
              { text = "Mercie", wtype = false, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 7, confirmed = true , cost = cost['rims'].total} },
              { text = "Organictyped", wtype = false, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 9, confirmed = true , cost = cost['rims'].total} },
              { text = "Ruffeld", wtype = false, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 19, confirmed = true , cost = cost['rims'].total} },
              { text = "Slitsix", wtype = false, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 23, confirmed = true , cost = cost['rims'].total} },
              { text = "Spacer", wtype = false, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 14, confirmed = true , cost = cost['rims'].total} },
              { text = "Stock", wtype = false, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = -1, confirmed = true , cost = cost['rims'].total} },
              { text = "Superfive", wtype = false, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 21, confirmed = true , cost = cost['rims'].total} },
              { text = "Syntheticz", wtype = false, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 8, confirmed = true , cost = cost['rims'].total} },
              { text = "Uzer", wtype = false, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 12, confirmed = true , cost = cost['rims'].total} },
              { text = "Venum", wtype = false, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 15, confirmed = true , cost = cost['rims'].total} },
              { text = "Wangenmaster", wtype = false, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
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
              { text = "Azrea", wtype = 1, modtype = 23, mod = 4, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Blacktop", wtype = 1, modtype = 23, mod = 6, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Classicfive", wtype = 1, modtype = 23, mod = false, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Classicrod", wtype = 1, modtype = 23, mod = 9, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Dodman", wtype = 1, modtype = 23, mod = 14, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Dragspl", wtype = 1, modtype = 23, mod = 7, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Dukes", wtype = 1, modtype = 23, mod = 1, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Eljefe", wtype = 1, modtype = 23, mod = 13, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Fivestar", wtype = 1, modtype = 23, mod = 11, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Kracka", wtype = 1, modtype = 23, mod = 3, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Mecha", wtype = 1, modtype = 23, mod = 5, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Mercenary", wtype = 1, modtype = 23, mod = 16, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Musclefreak", wtype = 1, modtype = 23, mod = 2, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Oldschool", wtype = 1, modtype = 23, mod = 12, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Revolver", wtype = 1, modtype = 23, mod = 8, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Sixgun", wtype = 1, modtype = 23, mod = 15, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Spooner", wtype = 1, modtype = 23, mod = 10, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Stock", wtype = 1, modtype = 23, mod = -1, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
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
              { text = "Bigworm", wtype = 2, modtype = 23, mod = 3, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Classicrod", wtype = 2, modtype = 23, mod = 10, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Dollar", wtype = 2, modtype = 23, mod = 11, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Dukes", wtype = 2, modtype = 23, mod = 12, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Flare", wtype = 2, modtype = 23, mod = false, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Freshmesh", wtype = 2, modtype = 23, mod = 6, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Gooch", wtype = 2, modtype = 23, mod = 14, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Leadsled", wtype = 2, modtype = 23, mod = 7, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Lowfive", wtype = 2, modtype = 23, mod = 13, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Sevenfives", wtype = 2, modtype = 23, mod = 4, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Splitsix", wtype = 2, modtype = 23, mod = 5, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Stock", wtype = 2, modtype = 23, mod = -1, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Superfin", wtype = 2, modtype = 23, mod = 9, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Triplegolds", wtype = 2, modtype = 23, mod = 2, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Turbine", wtype = 2, modtype = 23, mod = 8, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Wired", wtype = 2, modtype = 23, mod = 1, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
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
              { text = "Benefactor", wtype = 3, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 1, confirmed = true , cost = cost['rims'].total} },
              { text = "Bippu", wtype = 3, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 3, confirmed = true , cost = cost['rims'].total} },
              { text = "Cognscenti", wtype = 3, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 8, confirmed = true , cost = cost['rims'].total} },
              { text = "Cosmo", wtype = 3, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 2, confirmed = true , cost = cost['rims'].total} },
              { text = "Cutter", wtype = 3, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 18, confirmed = true , cost = cost['rims'].total} },
              { text = "Dashvip", wtype = 3, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 17, confirmed = true , cost = cost['rims'].total} },
              { text = "Deluxe", wtype = 3, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 6, confirmed = true , cost = cost['rims'].total} },
              { text = "Empowered", wtype = 3, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 156, confirmed = true , cost = cost['rims'].total} },
              { text = "Extra vaganzo", wtype = 3, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 13, confirmed = true , cost = cost['rims'].total} },
              { text = "Fagorme", wtype = 3, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 5, confirmed = true , cost = cost['rims'].total} },
              { text = "Icedout", wtype = 3, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 7, confirmed = true , cost = cost['rims'].total} },
              { text = "Lozspeedballer", wtype = 3, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 12, confirmed = true , cost = cost['rims'].total} },
              { text = "Lozspeedten", wtype = 3, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 9, confirmed = true , cost = cost['rims'].total} },
              { text = "Obeyrs", wtype = 3, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 11, confirmed = true , cost = cost['rims'].total} },
              { text = "Royalsix", wtype = 3, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 4, confirmed = true , cost = cost['rims'].total} },
              { text = "Splitsix", wtype = 3, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 14, confirmed = true , cost = cost['rims'].total} },
              { text = "Stock", wtype = 3, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = -1, confirmed = true , cost = cost['rims'].total} },
              { text = "Sunrise", wtype = 3, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 16, confirmed = true , cost = cost['rims'].total} },
              { text = "Supernova", wtype = 3, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 10, confirmed = true , cost = cost['rims'].total} },
              { text = "Vip", wtype = 3, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = false, confirmed = true , cost = cost['rims'].total} },
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
              { text = "Stock", wtype = 4, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = -1, confirmed = true , cost = cost['rims'].total} },
              { text = "Raider", wtype = 4,subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = false, confirmed = true , cost = cost['rims'].total} },
              { text = "Mudslinger", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 1, confirmed = true , cost = cost['rims'].total} },
              { text = "Nevis", wtype = 4, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 2, confirmed = true , cost = cost['rims'].total} },
              { text = "Cairngorm", wtype = 4, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 3, confirmed = true , cost = cost['rims'].total} },
              { text = "Amazon", wtype = 4, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 4, confirmed = true , cost = cost['rims'].total} },
              { text = "Challenger", wtype = 4, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 5, confirmed = true , cost = cost['rims'].total} },
              { text = "Dunebasher", wtype = 4, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 6, confirmed = true , cost = cost['rims'].total} },
              { text = "Fivestar", wtype = 4, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 7, confirmed = true , cost = cost['rims'].total} },
              { text = "Rockcrawler", wtype = 4, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 8, confirmed = true , cost = cost['rims'].total} },
              { text = "Milspecsteelie", wtype = 4, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 9, confirmed = true , cost = cost['rims'].total} },
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
              { text = "Apex", wtype = 5, modtype = 23, mod = 10, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Battlevill", wtype = 5, modtype = 23, mod = 22, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Chicane", wtype = 5, modtype = 23, mod = 17, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Chokadori", wtype = 5, modtype = 23, mod = 16, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Cosmo", wtype = 5, modtype = 23, mod = false, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Countersteer", wtype = 5, modtype = 23, mod = 12, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Dishedeight", wtype = 5, modtype = 23, mod = 19, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Driffmeister", wtype = 5, modtype = 23, mod = 4, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Dubbed", wtype = 5, modtype = 23, mod = 7, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Elquatro", wtype = 5, modtype = 23, mod = 6, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Endov1", wtype = 5, modtype = 23, mod = 13, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Endov2dish", wtype = 5, modtype = 23, mod = 14, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Fivestar", wtype = 5, modtype = 23, mod = 8, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Fujiwara", wtype = 5, modtype = 23, mod = 20, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Guppez", wtype = 5, modtype = 23, mod = 15, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Outsider", wtype = 5, modtype = 23, mod = 2, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Rallymaster", wtype = 5, modtype = 23, mod = 23, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Rollas", wtype = 5, modtype = 23, mod = 3, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Saisoku", wtype = 5, modtype = 23, mod = 18, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Slicer", wtype = 5, modtype = 23, mod = 5, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Slideways", wtype = 5, modtype = 23, mod = 9, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Stancedeg", wtype = 5, modtype = 23, mod = 11, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Stock", wtype = 5, modtype = 23, mod = -1, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Supermesh", wtype = 5, modtype = 23, mod = 1, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Zokusha", wtype = 5, modtype = 23, mod = 21, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
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
              { text = "Blade", wtype = 7, modtype = 23, mod = 2, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Carboncheetahr", wtype = 7, modtype = 23, mod = 18, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Carboninferno", wtype = 7, modtype = 23, mod = 14, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Carbonshadow", wtype = 7, modtype = 23, mod = 15, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Carbonsolar", wtype = 7, modtype = 23, mod = 17, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Carbonsracer", wtype = 7, modtype = 23, mod = 19, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Carbonz", wtype = 7, modtype = 23, mod = 16, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Cheetahr", wtype = 7, modtype = 23, mod = 9, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Chromaticz", wtype = 7, modtype = 23, mod = 5, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Dashvip", wtype = 7, modtype = 23, mod = 12, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Diamond", wtype = 7, modtype = 23, mod = 3, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Gtchrome", wtype = 7, modtype = 23, mod = 8, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Hyper", wtype = 7, modtype = 23, mod = 1, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Lozspeedten", wtype = 7, modtype = 23, mod = 13, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Merciechlip", wtype = 7, modtype = 23, mod = 6, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Obeyrs", wtype = 7, modtype = 23, mod = 7, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Shadow", wtype = 7, modtype = 23, mod = false, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Solar", wtype = 7, modtype = 23, mod = 10, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Splitten", wtype = 7, modtype = 23, mod = 11, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Stock", wtype = 7, modtype = 23, mod = -1, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
              { text = "Supagee", wtype = 7, modtype = 23, mod = 4, costs = 0, subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
            },
          },

    wheelaccessories = { 

      settings = {
        title = "Los Santos Customs",
        menuTitle = "Welcome",
        back = CallbackBack,
        closable = true,
      },

          buttons = { 
            { text = "Stock Tires", costs = 0, subText = "" },
            { text = "Custom Tires", costs = 0, subText = "" },
            { text = "Bulletproof Tires", costs = 0, subText = "" },
            { text = "White Tire Smoke", color = {254,254,254}, costs = 0, subText = "" },
            { text = "Black Tire Smoke", color = {1,1,1}, costs = 0, subText = "" },
            { text = "Blue Tire Smoke", color = {0,150,255}, costs = 0, subText = "" },
            { text = "Yellow Tire Smoke", color = {255,255,50}, costs = 0, subText = "" },
            { text = "Orange Tire Smoke", color = {255,153,51}, costs = 0, subText = "" },
            { text = "Red Tire Smoke", color = {255,10,10}, costs = 0, subText = "" },
            { text = "Green Tire Smoke", color = {10,255,10}, costs = 0, subText = "" },
            { text = "Purple Tire Smoke", color = {153,10,153}, costs = 0, subText = "" },
            { text = "Pink Tire Smoke", color = {255,102,178}, costs = 0, subText = "" },
            { text = "Gray Tire Smoke", color = {128,128,128}, costs = 0, subText = "" },
            { text = "Front Wheel Mods", menu = "frontwheel" },
            { text = "Back Wheel Mods", menu = "backwheel" },
          },
        },

    frontwheel = { 

      settings = {
        title = "Los Santos Customs",
        menuTitle = "Welcome",
        back = CallbackBack,
        closable = true,
      },

          buttons = { 
            { text = "Stock", wtype = 6, modtype = 23, mod = -1, costs = 0, subText = "" },
            { text = "Speedway", wtype = 6, modtype = 23, mod = false, costs = 0, subText = "" },
            { text = "Streetspecial", wtype = 6, modtype = 23, mod = 1, costs = 0, subText = "" },
            { text = "Racer", wtype = 6, modtype = 23, mod = 2, costs = 0, subText = "" },
            { text = "Trackstar", wtype = 6, modtype = 23, mod = 3, costs = 0, subText = "" },
            { text = "Overlord", wtype = 6, modtype = 23, mod = 4, costs = 0, subText = "" },
            { text = "Trident", wtype = 6, modtype = 23, mod = 5, costs = 0, subText = "" },
            { text = "Triplethreat", wtype = 6, modtype = 23, mod = 6, costs = 0, subText = "" },
            { text = "Stilleto", wtype = 6, modtype = 23, mod = 7, costs = 0, subText = "" },
            { text = "Wires", wtype = 6, modtype = 23, mod = 8, costs = 0, subText = "" },
            { text = "Bobber", wtype = 6, modtype = 23, mod = 9, costs = 0, subText = "" },
            { text = "Solidus", wtype = 6, modtype = 23, mod = 10, costs = 0, subText = "" },
            { text = "Iceshield", wtype = 6, modtype = 23, mod = 11, costs = 0, subText = "" },
            { text = "Loops", wtype = 6, modtype = 23, mod = 12, costs = 0, subText = "" },
          },
        },

    backwheel = { 

      settings = {
        title = "Los Santos Customs",
        menuTitle = "Welcome",
        back = CallbackBack,
        closable = true,
      },

          buttons = { 
            { text = "Stock", wtype = 6, modtype = 24, mod = -1, costs = 0, subText = "" },
            { text = "Speedway", wtype = 6, modtype = 24, mod = false, costs = 0, subText = "" },
            { text = "Streetspecial", wtype = 6, modtype = 24, mod = 1, costs = 0, subText = "" },
            { text = "Racer", wtype = 6, modtype = 24, mod = 2, costs = 0, subText = "" },
            { text = "Trackstar", wtype = 6, modtype = 24, mod = 3, costs = 0, subText = "" },
            { text = "Overlord", wtype = 6, modtype = 24, mod = 4, costs = 0, subText = "" },
            { text = "Trident", wtype = 6, modtype = 24, mod = 5, costs = 0, subText = "" },
            { text = "Triplethreat", wtype = 6, modtype = 24, mod = 6, costs = 0, subText = "" },
            { text = "Stilleto", wtype = 6, modtype = 24, mod = 7, costs = 0, subText = "" },
            { text = "Wires", wtype = 6, modtype = 24, mod = 8, costs = 0, subText = "" },
            { text = "Bobber", wtype = 6, modtype = 24, mod = 9, costs = 0, subText = "" },
            { text = "Solidus", wtype = 6, modtype = 24, mod = 10, costs = 0, subText = "" },
            { text = "Iceshield", wtype = 6, modtype = 24, mod = 11, costs = 0, subText = "" },
            { text = "Loops", wtype = 6, modtype = 24, mod = 12, costs = 0, subText = "" },
          },
        },
---------------[ACCESSORIES CATEGORY]---------------

    accessories = {

        settings = {
          title = "Los Santos Customs",
          menuTitle = "Welcome",
          back = CallbackBack,
          closable = true,
        },

            buttons = {
              { text = "Horns", subText = "", menu = "horn" },
              { text = "Liscense Plate", subText = "", menu = "plate" },
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
            {text = "Stock Horn",modtype = 14, mod = -1,costs = 0, subText = "" },
            {text = "Truck Horn",modtype = 14, mod = false,costs = 0, subText = "" },
            {text = "Police Horn",modtype = 14, mod = 1,costs = 0, subText = "" },
            {text = "Clown Horn",modtype = 14, mod = 2,costs = 0, subText = "" },
            {text = "Musical Horn 1",modtype = 14, mod = 3,costs = 0, subText = "" },
            {text = "Musical Horn 2",modtype = 14, mod = 4,costs = 0, subText = "" },
            {text = "Musical Horn 3",modtype = 14, mod = 5,costs = 0, subText = "" },
            {text = "Musical Horn 4",modtype = 14, mod = 6,costs = 0, subText = "" },
            {text = "Musical Horn 5",modtype = 14, mod = 7,costs = 0, subText = "" },
            {text = "Sadtrombone Horn",modtype = 14, mod = 8,costs = 0, subText = "" },
            {text = "Calssical Horn 1",modtype = 14, mod = 9,costs = 0, subText = "" },
            {text = "Calssical Horn 2",modtype = 14, mod = 10,costs = 0, subText = "" },
            {text = "Calssical Horn 3",modtype = 14, mod = 11,costs = 0, subText = "" },
            {text = "Calssical Horn 4",modtype = 14, mod = 12,costs = 0, subText = "" },
            {text = "Calssical Horn 5",modtype = 14, mod = 13,costs = 0, subText = "" },
            {text = "Calssical Horn 6",modtype = 14, mod = 14,costs = 0, subText = "" },
            {text = "Calssical Horn 7",modtype = 14, mod = 15,costs = 0, subText = "" },
            {text = "Scaledo Horn",modtype = 14, mod = 16,costs = 0, subText = "" },
            {text = "Scalere Horn",modtype = 14, mod = 17,costs = 0, subText = "" },
            {text = "Scalemi Horn",modtype = 14, mod = 18,costs = 0, subText = "" },
            {text = "Scalefa Horn",modtype = 14, mod = 19,costs = 0, subText = "" },
            {text = "Scalesol Horn",modtype = 14, mod = 20,costs = 0, subText = "" },
            {text = "Scalela Horn",modtype = 14, mod = 21,costs = 0, subText = "" },
            {text = "Scaleti Horn",modtype = 14, mod = 22,costs = 0, subText = "" },
            {text = "Scaledo Horn High",modtype = 14, mod = 23,costs = 0, subText = "" },
            {text = "Jazz Horn 1",modtype = 14, mod = 25,costs = 0, subText = "" },
            {text = "Jazz Horn 2",modtype = 14, mod = 26,costs = 0, subText = "" },
            {text = "Jazz Horn 3",modtype = 14, mod = 27,costs = 0, subText = "" },
            {text = "Jazzloop Horn",modtype = 14, mod = 28,costs = 0, subText = "" },
            {text = "Starspangban Horn 1",modtype = 14, mod = 29,costs = 0, subText = "" },
            {text = "Starspangban Horn 2",modtype = 14, mod = 30,costs = 0, subText = "" },
            {text = "Starspangban Horn 3",modtype = 14, mod = 31,costs = 0, subText = "" },
            {text = "Starspangban Horn 4",modtype = 14, mod = 32,costs = 0, subText = "" },
            {text = "Classicalloop Horn 1",modtype = 14, mod = 33,costs = 0, subText = "" },
            {text = "Classical Horn 8",modtype = 14, mod = 34,costs = 0, subText = "" },
            {text = "Classicalloop Horn 2",modtype = 14, mod = 35,costs = 0, subText = "" },
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
        {text = "Blue on White 1",plateindex = false,costs = 0, subText = "" },
        {text = "Blue on White 2",plateindex = 3,costs = 0, subText = "" },
        {text = "Blue on White 3",plateindex = 4,costs = 0, subText = "" },
        {text = "Yellow on Blue",plateindex = 2,costs = 0, subText = "" },
        {text = "Yellow on Black",plateindex = 1,costs = 0, subText = "" },
      },
    },

---------------[PAINT CATEGORY]---------------

    paint = {

      settings = {
        title = "Los Santos Customs",
        menuTitle = "Welcome",
        back = CallbackBack,
        closable = true,
      },

      buttons = {
        { text = "Metallic", subText = "", menu = "metallic"  },
        { text = "Metal", subText = "", menu = "metal"  },
        { text = "Matte", subText = "", menu = "matte" },
        { text = "Classic", subText = "", menu = "classic"  }, 
        { text = "Previous Menu", back = true },
      },

    },


    metallic = {

      settings = {
        title = "Los Santos Customs",
        menuTitle = "Welcome",
        back = CallbackBack,
        closable = true,
      },

      buttons = { 
        { text = "Anhracite Black",costs = 0, colorindex = 11, subText = "1,000" },
        { text = "Beechwood Brown",costs = 0, colorindex = 103, subText = "" },
        { text = "Bison Brown",costs = 0, colorindex = 101, subText = "" },
        { text = "Black Steel",costs = 0, colorindex = 2, subText = "" },
        { text = "Black",costs = 0, colorindex = 0, subText = "" },
        { text = "Blaze Red",costs = 0, colorindex = 30, subText = "" },
        { text = "Bleached Brown",costs = 0, colorindex = 106, subText = "" },
        { text = "Blue",costs = 0, colorindex = 64, subText = "" },
        { text = "Bluish Silver",costs = 0, colorindex = 5, subText = "" },
        { text = "Bright Green",costs = 0, colorindex = 53, subText = "" },
        { text = "Bright Orange",costs = 0, colorindex = 138, subText = "" },
        { text = "Bright Purple",costs = 0, colorindex = 145, subText = "" },
        { text = "Bronze",costs = 0, colorindex = 90, subText = "" },
        { text = "Cabernet Red",costs = 0, colorindex = 34, subText = "" },
        { text = "Candy Red",costs = 0, colorindex = 35, subText = "" },
        { text = "Carbon Black",costs = 0, colorindex = 147, subText = "" },
        { text = "Cast Iron Silver",costs = 0, colorindex = 10, subText = "" },
        { text = "Chocolate Brown",costs = 0, colorindex = 96, subText = "" },
        { text = "Cream",costs = 0, colorindex = 107, subText = "" },
        { text = "Creeen Brown",costs = 0, colorindex = 95, subText = "" },
        { text = "Dark Blue",costs = 0, colorindex = 62, subText = "" },
        { text = "Dark Green",costs = 0, colorindex = 49, subText = "" },
        { text = "Dark Steel",costs = 0, colorindex = 3, subText = "" },
        { text = "Dew Yellow",costs = 0, colorindex = 91, subText = "" },
        { text = "Diamond Blue",costs = 0, colorindex = 67, subText = "" },
        { text = "Feltzer Brown",costs = 0, colorindex = 94, subText = "" },
        { text = "Formula Red",costs = 0, colorindex = 29, subText = "" },
        { text = "Frost White",costs = 0, colorindex = 112, subText = "" },
        { text = "Galaxy Blue",costs = 0, colorindex = 61, subText = "" },
        { text = "Garnet Red",costs = 0, colorindex = 32, subText = "" },
        { text = "Gasoline Green",costs = 0, colorindex = 54, subText = "" },
        { text = "Gold",costs = 0, colorindex = 99, subText = "" },
        { text = "Grace Red",costs = 0, colorindex = 31, subText = "" },
        { text = "Harbor Blue",costs = 0, colorindex = 66, subText = "" },
        { text = "Hot Pink",costs = 0, colorindex = 135, subText = "" },
        { text = "Hraphite",costs = 0, colorindex = 1, subText = "" },
        { text = "Ice White",costs = 0, colorindex = 111, subText = "" },
        { text = "Lava Red",costs = 0, colorindex = 150, subText = "" },
        { text = "Light Blue",costs = 0, colorindex = 74, subText = "" },
        { text = "Lime Green",costs = 0, colorindex = 92, subText = "" },
        { text = "Maple Brown",costs = 0, colorindex = 97, subText = "" },
        { text = "Mariner Blue",costs = 0, colorindex = 65, subText = "" },
        { text = "Midnight Blue",costs = 0, colorindex = 141, subText = "" },
        { text = "Midnight Purple",costs = 0, colorindex = 142, subText = "" },
        { text = "Midnight Silver",costs = 0, colorindex = 9, subText = "" },
        { text = "Moss Brown",costs = 0, colorindex = 100, subText = "" },
        { text = "Nautical Blue",costs = 0, colorindex = 69, subText = "" },
        { text = "Olive Green",costs = 0, colorindex = 52, subText = "" },
        { text = "Orange",costs = 0, colorindex = 38, subText = "" },
        { text = "Pfsiter Pink",costs = 0, colorindex = 137, subText = "" },
        { text = "Race Yellow",costs = 0, colorindex = 89, subText = "" },
        { text = "Racing Blue",costs = 0, colorindex = 73, subText = "" },
        { text = "Racing Green",costs = 0, colorindex = 50, subText = "" },
        { text = "Red",costs = 0, colorindex = 27, subText = "" },
        { text = "Rolled Steel",costs = 0, colorindex = 6, subText = "" },
        { text = "Saddle Brown",costs = 0, colorindex = 98, subText = "" },
        { text = "Salmon Pink",costs = 0, colorindex = 136, subText = "" },
        { text = "Sandy Brown",costs = 0, colorindex = 105, subText = "" },
        { text = "Saxon Blue",costs = 0, colorindex = 63, subText = "" },
        { text = "Schafter Purple",costs = 0, colorindex = 71, subText = "" },
        { text = "Sea Green",costs = 0, colorindex = 51, subText = "" },
        { text = "Shadow Silver",costs = 0, colorindex = 7, subText = "" },
        { text = "Sienna Brown",costs = 0, colorindex = 104, subText = "" },
        { text = "Silver",costs = 0, colorindex = 4, subText = "" },
        { text = "Spinnaker Purple",costs = 0, colorindex = 72, subText = "" },
        { text = "Stone Silver",costs = 0, colorindex = 8, subText = "" },
        { text = "Straw Brown",costs = 0, colorindex = 99, subText = "" },
        { text = "Sunrise Orange",costs = 0, colorindex = 36, subText = "" },
        { text = "Sunset Red",costs = 0, colorindex = 33, subText = "" },
        { text = "Surf Blue",costs = 0, colorindex = 68, subText = "" },
        { text = "Torino Red",costs = 0, colorindex = 28, subText = "" },
        { text = "Ultra Blue",costs = 0, colorindex = 70, subText = "" },
        { text = "Wine Red",costs = 0, colorindex = 143, subText = "" },
        { text = "Woodbeech Brown",costs = 0, colorindex = 102, subText = "" },
        { text = "Yellow",costs = 0, colorindex = 88, subText = "" },
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
          { text = "Brushed Aluminum",colorindex = 119,costs = 0, subText = "" },
          { text = "Brushed Black Steel",colorindex = 118,costs = 0, subText = "" },
          { text = "Brushed Gold",colorindex = 159,costs = 0, subText = "" },
          { text = "Brushed Steel",colorindex = 117,costs = 0, subText = "" },
          { text = "Pure Gold",colorindex = 158,costs = 0, subText = "" },
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
          { text = "Black", colorindex = 12,costs = 0, subText = "" },
          { text = "Blue", colorindex = 83,costs = 0, subText = "" },
          { text = "Dark Blue", colorindex = 82,costs = 0, subText = "" },
          { text = "Dark Earth", colorindex = 153,costs = 0, subText = "" },
          { text = "Dark Red", colorindex = 40,costs = 0, subText = "" },
          { text = "Desert Tan", colorindex = 154,costs = 0, subText = "" },
          { text = "Foliage Green", colorindex = 155,costs = 0, subText = "" },
          { text = "Frost Green", colorindex = 151,costs = 0, subText = "" },
          { text = "Gray", colorindex = 13,costs = 0, subText = "" },
          { text = "Green", colorindex = 128,costs = 0, subText = "" },
          { text = "Ice White", colorindex = 131,costs = 0, subText = "" },
          { text = "Light Gray", colorindex = 14,costs = 0, subText = "" },
          { text = "Lime Green", colorindex = 55,costs = 0, subText = "" },
          { text = "Midnight Blue", colorindex = 84,costs = 0, subText = "" },
          { text = "Midnight Purple", colorindex = 149,costs = 0, subText = "" },
          { text = "Olive Darb", colorindex = 152,costs = 0, subText = "" },
          { text = "Orange", colorindex = 41,costs = 0, subText = "" },
          { text = "Red", colorindex = 39,costs = 0, subText = "" },
          { text = "Schafter Purple", colorindex = 148,costs = 0, subText = "" },
          { text = "Yellow", colorindex = 42,costs = 0, subText = "" },
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
          { text = "Anhracite Black",costs = 0, colorindex = 11, subText = "" },
          { text = "Beechwood Brown",costs = 0, colorindex = 103, subText = "" },
          { text = "Bison Brown",costs = 0, colorindex = 101, subText = "" },
          { text = "Black Steel",costs = 0, colorindex = 2, subText = "" },
          { text = "Black",costs = 0, colorindex = 0, subText = "" },
          { text = "Blaze Red",costs = 0, colorindex = 30, subText = "" },
          { text = "Bleached Brown",costs = 0, colorindex = 106, subText = "" },
          { text = "Blue",costs = 0, colorindex = 64, subText = "" },
          { text = "Bluish Silver",costs = 0, colorindex = 5, subText = "" },
          { text = "Bright Green",costs = 0, colorindex = 53, subText = "" },
          { text = "Bright Orange",costs = 0, colorindex = 138, subText = "" },
          { text = "Bright Purple",costs = 0, colorindex = 145, subText = "" },
          { text = "Bronze",costs = 0, colorindex = 90, subText = "" },
          { text = "Cabernet Red",costs = 0, colorindex = 34, subText = "" },
          { text = "Candy Red",costs = 0, colorindex = 35, subText = "" },
          { text = "Carbon Black",costs = 0, colorindex = 147, subText = "" },
          { text = "Cast Iron Silver",costs = 0, colorindex = 10, subText = "" },
          { text = "Chocolate Brown",costs = 0, colorindex = 96, subText = "" },
          { text = "Cream",costs = 0, colorindex = 107, subText = "" },
          { text = "Creeen Brown",costs = 0, colorindex = 95, subText = "" },
          { text = "Dark Blue",costs = 0, colorindex = 62, subText = "" },
          { text = "Dark Green",costs = 0, colorindex = 49, subText = "" },
          { text = "Dark Steel",costs = 0, colorindex = 3, subText = "" },
          { text = "Dew Yellow",costs = 0, colorindex = 91, subText = "" },
          { text = "Diamond Blue",costs = 0, colorindex = 67, subText = "" },
          { text = "Feltzer Brown",costs = 0, colorindex = 94, subText = "" },
          { text = "Formula Red",costs = 0, colorindex = 29, subText = "" },
          { text = "Frost White",costs = 0, colorindex = 112, subText = "" },
          { text = "Galaxy Blue",costs = 0, colorindex = 61, subText = "" },
          { text = "Garnet Red",costs = 0, colorindex = 32, subText = "" },
          { text = "Gasoline Green",costs = 0, colorindex = 54, subText = "" },
          { text = "Gold",costs = 0, colorindex = 99, subText = "" },
          { text = "Grace Red",costs = 0, colorindex = 31, subText = "" },
          { text = "Harbor Blue",costs = 0, colorindex = 66, subText = "" },
          { text = "Hot Pink",costs = 0, colorindex = 135, subText = "" },
          { text = "Hraphite",costs = 0, colorindex = 1, subText = "" },
          { text = "Ice White",costs = 0, colorindex = 111, subText = "" },
          { text = "Lava Red",costs = 0, colorindex = 150, subText = "" },
          { text = "Light Blue",costs = 0, colorindex = 74, subText = "" },
          { text = "Lime Green",costs = 0, colorindex = 92, subText = "" },
          { text = "Maple Brown",costs = 0, colorindex = 97, subText = "" },
          { text = "Mariner Blue",costs = 0, colorindex = 65, subText = "" },
          { text = "Midnight Blue",costs = 0, colorindex = 141, subText = "" },
          { text = "Midnight Purple",costs = 0, colorindex = 142, subText = "" },
          { text = "Midnight Silver",costs = 0, colorindex = 9, subText = "" },
          { text = "Moss Brown",costs = 0, colorindex = 100, subText = "" },
          { text = "Nautical Blue",costs = 0, colorindex = 69, subText = "" },
          { text = "Olive Green",costs = 0, colorindex = 52, subText = "" },
          { text = "Orange",costs = 0, colorindex = 38, subText = "" },
          { text = "Pfsiter Pink",costs = 0, colorindex = 137, subText = "" },
          { text = "Race Yellow",costs = 0, colorindex = 89, subText = "" },
          { text = "Racing Blue",costs = 0, colorindex = 73, subText = "" },
          { text = "Racing Green",costs = 0, colorindex = 50, subText = "" },
          { text = "Red",costs = 0, colorindex = 27, subText = "" },
          { text = "Rolled Steel",costs = 0, colorindex = 6, subText = "" },
          { text = "Saddle Brown",costs = 0, colorindex = 98, subText = "" },
          { text = "Salmon Pink",costs = 0, colorindex = 136, subText = "" },
          { text = "Sandy Brown",costs = 0, colorindex = 105, subText = "" },
          { text = "Saxon Blue",costs = 0, colorindex = 63, subText = "" },
          { text = "Schafter Purple",costs = 0, colorindex = 71, subText = "" },
          { text = "Sea Green",costs = 0, colorindex = 51, subText = "" },
          { text = "Shadow Silver",costs = 0, colorindex = 7, subText = "" },
          { text = "Sienna Brown",costs = 0, colorindex = 104, subText = "" },
          { text = "Silver",costs = 0, colorindex = 4, subText = "" },
          { text = "Spinnaker Purple",costs = 0, colorindex = 72, subText = "" },
          { text = "Stone Silver",costs = 0, colorindex = 8, subText = "" },
          { text = "Straw Brown",costs = 0, colorindex = 99, subText = "" },
          { text = "Sunrise Orange",costs = 0, colorindex = 36, subText = "" },
          { text = "Sunset Red",costs = 0, colorindex = 33, subText = "" },
          { text = "Surf Blue",costs = 0, colorindex = 68, subText = "" },
          { text = "Torino Red",costs = 0, colorindex = 28, subText = "" },
          { text = "Ultra Blue",costs = 0, colorindex = 70, subText = "" },
          { text = "Wine Red",costs = 0, colorindex = 143, subText = "" },
          { text = "Woodbeech Brown",costs = 0, colorindex = 102, subText = "" },
          { text = "Yellow",costs = 0, colorindex = 88, subText = "" },
        },
      },
---------------[TUNINGCATEGORY]---------------
    tuning = {

          settings = {
            title = "Los Santos Customs",
            menuTitle = "Welcome",
            back = CallbackBack,
            closable = true,
          },

          buttons = {
            { text = "Suspension", subText = "5,000", menu = "suspension" },
            { text = "Transmission", subText = "5,000", menu = "transmission" },
            { text = "Turbo", subText = "5,000", menu = "turbo" },
            { text = "Brakes", subText = "5,000", menu = "brakes" },
            { text = "Engine", subText = "5,000", menu = "engine" },
            { text = "Armor", subText = "5,000", menu = "armor" },
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
            {text = "Stock Suspension",mod = -1,modtype =15, costs = 0, subText = "" },
            {text = "Lowered Suspension",mod = false,modtype =15, costs = 0, subText = "" },
            {text = "Street Suspension",mod = 1,modtype =15, costs = 0, subText = "" },
            {text = "Sport Suspension",mod = 2,modtype =15, costs = 0, subText = "" },
            {text = "Competition Suspension",mod = 3,modtype =15, costs = 0, subText = "" },
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
            {text = "Stock Transmission",mod = -1,modtype =13, costs = 0, subText = "" },
            {text = "Street Transmission",mod = false,modtype =13, costs = 0, subText = "" },
            {text = "Sports Transmission",mod = 1,modtype =13, costs = 0, subText = "" },
            {text = "Race Transmission",mod = 2,modtype =13, costs = 0, subText = "" },
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
            {text = "None",mod = false,modtype =18, costs = 0, subText = "" },
            {text = "Turbo Tuning",mod = true,modtype =18, costs = 0, subText = "" },
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
          {text = "Stock Brakes",modtype = 12, mod = -1, costs = 0, subText = "" },
          {text = "Street Brakes",modtype = 12, mod = false, costs = 0, subText = "" },
          {text = "Sport Brakes",modtype = 12, mod = 1, costs = 0, subText = "" },
          {text = "Race Brakes",modtype = 12, mod = 2, costs = 0, subText = "" },
          
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
          {text = "EMS Upgrade, Level 1",modtype = 11, mod = -1, costs = 0, subText = "" },
          {text = "EMS Upgrade, Level 2",modtype = 11, mod = false, costs = 0, subText = "" },
          {text = "EMS Upgrade, Level 3",modtype = 11, mod = 1, costs = 0, subText = "" },
          {text = "EMS Upgrade, Level 4",modtype = 11, mod = 2, costs = 0, subText = "" },
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
          {text = "None",modtype = 16, mod = -1,costs = 0, subText = "" },
          {text = "Armor Upgrade 20%",modtype = 16, mod = false, costs = 0, subText = "" },
          {text = "Armor Upgrade 40%",modtype = 16, mod = 1, costs = 0, subText = "" },
          {text = "Armor Upgrade 60%",modtype = 16, mod = 2, costs = 0, subText = "" },
          {text = "Armor Upgrade 80%",modtype = 16, mod = 3, costs = 0, subText = "" },
          {text = "Armor Upgrade 100%",modtype = 16, mod = 4, costs = 0, subText = "" },
          
        },
      },
---------------[LIGHTS CATEGORY]---------------
    lights = { 
    
        settings = {
          title = "Los Santos Customs",
          menuTitle = "Welcome",
          back = CallbackBack,
          closable = true,
        },

          buttons = { 
            { text = "Headlights", subText = "", menu = "headlights" },
            { text = "Neon Kits", subText = "", menu = "neonkits"  },
          }
        },

        headlights = { 
      
          settings = {
            title = "Los Santos Customs",
            menuTitle = "Welcome",
            back = CallbackBack,
            closable = true,
          },
          
          buttons = { 
            { text = "Stock Lights",mod = false, modtype = 22,costs = 0, subText = "" },
            { text = "Xenon Lights",mod = true,modtype = 22,costs = 0, subText = "" },
          }
        },

    neonkits = { 
      
          settings = {
            title = "Los Santos Customs",
            menuTitle = "Welcome",
            back = CallbackBack,
            closable = true,
          },
          
          buttons = { 
            { text = "Neon Layout", subText = "", menu = "neonlayout"  },
            { text = "Neon Color", subText = "", menu = "neoncolor"  },
          },
        },

    neonlayout = { 
      
          settings = {
            title = "Los Santos Customs",
            menuTitle = "Welcome",
            back = CallbackBack,
            closable = true,
          },
          
                buttons = { 
                  { text = "None",costs = 0, subText = "" },
                  { text = "Front,Back and Sides",costs =0, subText = "" },
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
                  { text = "White", color = {255,255,255}, costs = 0, subText = "" },
                  { text = "Blue", color = {0,0,255}, costs = 0, subText = "" },
                  { text = "Electric Blue", color = {0,150,255}, costs = 0, subText = "" },
                  { text = "Mint Green", color = {50,255,155}, costs = 0, subText = "" },
                  { text = "Lime Green", color = {0,255,0}, costs = 0, subText = "" },
                  { text = "Yellow", color = {255,255,0}, costs = 0, subText = "" },
                  { text = "Golden Shower", color = {204,204,0}, costs = 0, subText = "" },
                  { text = "Orange", color = {255,128,0}, costs = 0, subText = "" },
                  { text = "Red", color = {255,0,0}, costs = 0, subText = "" },
                  { text = "Pony Pink", color = {255,102,255}, costs = 0, subText = "" },
                  { text = "Hot Pink", color = {255,0,255}, costs = 0, subText = "" },
                  { text = "Purple", color = {153,0,153}, costs = 0, subText = "" },
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
        {text = "None",tint = false, costs = 0, subText = "" },
        {text = "Pure Black",tint = 1, costs = 0, subText = "" },
        {text = "Darksmoke",tint = 2, costs = 0, subText = "" },
        {text = "Lightsmoke",tint = 3, costs = 0, subText = "" },
        {text = "Limo",tint = 4, costs = 0, subText = "" },
        {text = "Green",tint = 5, costs = 0, subText = "" },
      },
    },

  }
