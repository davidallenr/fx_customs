  -- @Date:   2017-07-27
  -- @Project: FX Customs
  -- @Owner: Jink Left
  -- @Last modified time: 2017-07-27
-------------------------------------------
---------------[COST MENU]----------------
local cost = {
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
  ['horns'] = { total = 500, display = "$500"},
  ['suspension'] = { total = 800, display = "$800"},
  ['armor'] = { total = 500, display = "$500"},
  ['turbo'] = { total = 500, display = "$500"},
  ['tireSmoke'] = { total = 500, display = "$500"},
  ['xeon'] = { total = 500, display = "$500"},
  ['frontWheel'] = { total = 500, display = "$500"},
  ['backWheel'] = { total = 500, display = "$500"},
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

      buttons = {
        { text = "Wheels", menu = "wheels"  },
        { text = "Accessories", menu = "accessories"  },
        { text = "Paint", menu = "paint" },
        { text = "Tuning", menu = "tuning"  }, 
        { text = "Lights", menu = "lights"  },
        { text = "Window Tint", menu = "windows"  },
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
        menuTitle = "Categories",
        back = CallbackBack,
        closable = true,
      },

      buttons = { 
        { text = "Wheel Type", menu = "wheeltype" },
        { text = "Wheel Color", menu = "classic" },
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
        
        { text = "Sport", menu = "sport" },
        { text = "Muscle", menu = "muscle" },
        { text = "Lowrider", menu = "lowrider" },
        { text = "Suv", menu = "suv" },
        { text = "Offroad", menu = "offroad" },
        { text = "Tuner", menu = "tuner" },
        { text = "Highend", menu = "highend" },
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
              { text = "Chrono", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = false, modtype = 23, mod = 4, confirmed = true , cost = cost['rims'].total} },
              { text = "Cosmo", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = false, modtype = 23, mod = 16, confirmed = true , cost = cost['rims'].total} },
              { text = "Dashvip", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = false, modtype = 23, mod = 17, confirmed = true , cost = cost['rims'].total} },
              { text = "Deepfive", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = false, modtype = 23, mod = 1, confirmed = true , cost = cost['rims'].total} },
              { text = "Diamondcut", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = false, modtype = 23, mod = 3, confirmed = true , cost = cost['rims'].total} },
              { text = "Duper7", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = false, modtype = 23, mod = 11, confirmed = true , cost = cost['rims'].total} },
              { text = "Endov1", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = false, modtype = 23, mod = 10, confirmed = true , cost = cost['rims'].total} },
              { text = "Endov2", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = false, modtype = 23, mod = 22, confirmed = true , cost = cost['rims'].total} },
              { text = "Feroccirr", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = false, modtype = 23, mod = 5, confirmed = true , cost = cost['rims'].total} },
              { text = "Fiftynine", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = false, modtype = 23, mod = 6, confirmed = true , cost = cost['rims'].total} },
              { text = "Groundride", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = false, modtype = 23, mod = 13, confirmed = true , cost = cost['rims'].total} },
              { text = "Icekid", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = false, modtype = 23, mod = 18, confirmed = true , cost = cost['rims'].total} },
              { text = "Inferno", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = false, modtype = 23, mod = false, confirmed = true , cost = cost['rims'].total} },
              { text = "Lozspeed", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = false, modtype = 23, mod = 2, confirmed = true , cost = cost['rims'].total} },
              { text = "Mercie", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = false, modtype = 23, mod = 7, confirmed = true , cost = cost['rims'].total} },
              { text = "Organictyped", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = false, modtype = 23, mod = 9, confirmed = true , cost = cost['rims'].total} },
              { text = "Ruffeld", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = false, modtype = 23, mod = 19, confirmed = true , cost = cost['rims'].total} },
              { text = "Slitsix", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = false, modtype = 23, mod = 23, confirmed = true , cost = cost['rims'].total} },
              { text = "Spacer", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = false, modtype = 23, mod = 14, confirmed = true , cost = cost['rims'].total} },
              { text = "Stock", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = false, modtype = 23, mod = -1, confirmed = true , cost = cost['rims'].total} },
              { text = "Superfive", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = false, modtype = 23, mod = 21, confirmed = true , cost = cost['rims'].total} },
              { text = "Syntheticz", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = false, modtype = 23, mod = 8, confirmed = true , cost = cost['rims'].total} },
              { text = "Uzer", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = false, modtype = 23, mod = 12, confirmed = true , cost = cost['rims'].total} },
              { text = "Venum", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = false, modtype = 23, mod = 15, confirmed = true , cost = cost['rims'].total} },
              { text = "Wangenmaster", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = false, modtype = 23, mod = 28, confirmed = true , cost = cost['rims'].total} },
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

              { text = "Azrea", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 1, modtype = 23, mod = 4, confirmed = true , cost = cost['rims'].total} },
              { text = "Blacktop", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 1, modtype = 23, mod = 6, confirmed = true , cost = cost['rims'].total} },
              { text = "Classicfive", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 1, modtype = 23, mod = false, confirmed = true , cost = cost['rims'].total} },
              { text = "Classicrod", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 1, modtype = 23, mod = 9, confirmed = true , cost = cost['rims'].total} },
              { text = "Dodman", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 1, modtype = 23, mod = 14, confirmed = true , cost = cost['rims'].total} },
              { text = "Dragspl", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 1, modtype = 23, mod = 7, confirmed = true , cost = cost['rims'].total} },
              { text = "Dukes", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 1, modtype = 23, mod = 1, confirmed = true , cost = cost['rims'].total} },
              { text = "Eljefe", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 1, modtype = 23, mod = 13, confirmed = true , cost = cost['rims'].total} },
              { text = "Fivestar", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 1, modtype = 23, mod = 11, confirmed = true , cost = cost['rims'].total} },
              { text = "Kracka", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 1, modtype = 23, mod = 3, confirmed = true , cost = cost['rims'].total} },
              { text = "Mecha", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 1, modtype = 23, mod = 5, confirmed = true , cost = cost['rims'].total} },
              { text = "Mercenary", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = {  wtype = 1,modtype = 23, mod = 16, confirmed = true , cost = cost['rims'].total} },
              { text = "Musclefreak", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 1, modtype = 23, mod = 2, confirmed = true , cost = cost['rims'].total} },
              { text = "Oldschool", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 1, modtype = 23, mod = 12, confirmed = true , cost = cost['rims'].total} },
              { text = "Revolver", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 1, modtype = 23, mod = 8, confirmed = true , cost = cost['rims'].total} },
              { text = "Sixgun", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 1, modtype = 23, mod = 15, confirmed = true , cost = cost['rims'].total} },
              { text = "Spooner", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 1, modtype = 23, mod = 10, confirmed = true , cost = cost['rims'].total} },
              { text = "Stock", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 1, modtype = 23, mod = -1, confirmed = true , cost = cost['rims'].total} },
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

              { text = "Bigworm", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 2, modtype = 23, mod = 3, confirmed = true , cost = cost['rims'].total} },
              { text = "Classicrod", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 2, modtype = 23, mod = 10, confirmed = true , cost = cost['rims'].total} },
              { text = "Dollar", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 2, modtype = 23, mod = 11, confirmed = true , cost = cost['rims'].total} },
              { text = "Dukes", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 2, modtype = 23, mod = 12, confirmed = true , cost = cost['rims'].total} },
              { text = "Flare", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 2, modtype = 23, mod = false, confirmed = true , cost = cost['rims'].total} },
              { text = "Freshmesh", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 2, modtype = 23, mod = 6, confirmed = true , cost = cost['rims'].total} },
              { text = "Gooch", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 2, modtype = 23, mod = 14, confirmed = true , cost = cost['rims'].total} },
              { text = "Leadsled", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 2, modtype = 23, mod = 7, confirmed = true , cost = cost['rims'].total} },
              { text = "Lowfive", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 2, modtype = 23, mod = 13, confirmed = true , cost = cost['rims'].total} },
              { text = "Sevenfives", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 2, modtype = 23, mod = 4, confirmed = true , cost = cost['rims'].total} },
              { text = "Splitsix", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 2, modtype = 23, mod = 5, confirmed = true , cost = cost['rims'].total} },
              { text = "Stock", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 2, modtype = 23, mod = -1, confirmed = true , cost = cost['rims'].total} },
              { text = "Superfin", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 2, modtype = 23, mod = 9, confirmed = true , cost = cost['rims'].total} },
              { text = "Triplegolds", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 2, modtype = 23, mod = 2, confirmed = true , cost = cost['rims'].total} },
              { text = "Turbine", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 2, modtype = 23, mod = 8, confirmed = true , cost = cost['rims'].total} },
              { text = "Wired", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 2, modtype = 23, mod = 1, confirmed = true , cost = cost['rims'].total} },
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

              { text = "Benefactor", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 3, modtype = 23, mod = 1, confirmed = true , cost = cost['rims'].total} },
              { text = "Bippu", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 3, modtype = 23, mod = 3, confirmed = true , cost = cost['rims'].total} },
              { text = "Cognscenti", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 3, modtype = 23, mod = 8, confirmed = true , cost = cost['rims'].total} },
              { text = "Cosmo", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 3, modtype = 23, mod = 2, confirmed = true , cost = cost['rims'].total} },
              { text = "Cutter", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 3, modtype = 23, mod = 18, confirmed = true , cost = cost['rims'].total} },
              { text = "Dashvip", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 3, modtype = 23, mod = 17, confirmed = true , cost = cost['rims'].total} },
              { text = "Deluxe", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 3, modtype = 23, mod = 6, confirmed = true , cost = cost['rims'].total} },
              { text = "Empowered", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 3, modtype = 23, mod = 156, confirmed = true , cost = cost['rims'].total} },
              { text = "Extra vaganzo", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 3, modtype = 23, mod = 13, confirmed = true , cost = cost['rims'].total} },
              { text = "Fagorme", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 3, modtype = 23, mod = 5, confirmed = true , cost = cost['rims'].total} },
              { text = "Icedout", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 3, modtype = 23, mod = 7, confirmed = true , cost = cost['rims'].total} },
              { text = "Lozspeedballer", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 3, modtype = 23, mod = 12, confirmed = true , cost = cost['rims'].total} },
              { text = "Lozspeedten", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 3, modtype = 23, mod = 9, confirmed = true , cost = cost['rims'].total} },
              { text = "Obeyrs", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 3, modtype = 23, mod = 11, confirmed = true , cost = cost['rims'].total} },
              { text = "Royalsix", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 3, modtype = 23, mod = 4, confirmed = true , cost = cost['rims'].total} },
              { text = "Splitsix", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 3, modtype = 23, mod = 14, confirmed = true , cost = cost['rims'].total} },
              { text = "Stock", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 3, modtype = 23, mod = -1, confirmed = true , cost = cost['rims'].total} },
              { text = "Sunrise", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 3, modtype = 23, mod = 16, confirmed = true , cost = cost['rims'].total} },
              { text = "Supernova", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 3, modtype = 23, mod = 10, confirmed = true , cost = cost['rims'].total} },
              { text = "Vip", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 3, modtype = 23, mod = false, confirmed = true , cost = cost['rims'].total} },
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

              { text = "Stock", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 4, modtype = 23, mod = -1, confirmed = true , cost = cost['rims'].total} },
              { text = "Raider", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 4, modtype = 23, mod = false, confirmed = true , cost = cost['rims'].total} },
              { text = "Mudslinger", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 4, modtype = 23, mod = 1, confirmed = true , cost = cost['rims'].total} },
              { text = "Nevis", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 4, modtype = 23, mod = 2, confirmed = true , cost = cost['rims'].total} },
              { text = "Cairngorm", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 4, modtype = 23, mod = 3, confirmed = true , cost = cost['rims'].total} },
              { text = "Amazon", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 4, modtype = 23, mod = 4, confirmed = true , cost = cost['rims'].total} },
              { text = "Challenger", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 4, modtype = 23, mod = 5, confirmed = true , cost = cost['rims'].total} },
              { text = "Dunebasher", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 4, modtype = 23, mod = 6, confirmed = true , cost = cost['rims'].total} },
              { text = "Fivestar", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 4, modtype = 23, mod = 7, confirmed = true , cost = cost['rims'].total} },
              { text = "Rockcrawler", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 4, modtype = 23, mod = 8, confirmed = true , cost = cost['rims'].total} },
              { text = "Milspecsteelie", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 4, modtype = 23, mod = 9, confirmed = true , cost = cost['rims'].total} },
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

              { text = "Apex", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 5, modtype = 23, mod = 10, confirmed = true , cost = cost['rims'].total} },
              { text = "Battlevill", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 5, modtype = 23, mod = 22, confirmed = true , cost = cost['rims'].total} },
              { text = "Chicane", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 5, modtype = 23, mod = 17, confirmed = true , cost = cost['rims'].total} },
              { text = "Chokadori", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 5, modtype = 23, mod = 16, confirmed = true , cost = cost['rims'].total} },
              { text = "Cosmo", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 5, modtype = 23, mod = false, confirmed = true , cost = cost['rims'].total} },
              { text = "Countersteer", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 5, modtype = 23, mod = 12, confirmed = true , cost = cost['rims'].total} },
              { text = "Dishedeight", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 5, modtype = 23, mod = 19, confirmed = true , cost = cost['rims'].total} },
              { text = "Driffmeister", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 5, modtype = 23, mod = 4, confirmed = true , cost = cost['rims'].total} },
              { text = "Dubbed", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 5, modtype = 23, mod = 7, confirmed = true , cost = cost['rims'].total} },
              { text = "Elquatro", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 5, modtype = 23, mod = 6, confirmed = true , cost = cost['rims'].total} },
              { text = "Endov1", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 5, modtype = 23, mod = 13, confirmed = true , cost = cost['rims'].total} },
              { text = "Endov2dish", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 5, modtype = 23, mod = 14, confirmed = true , cost = cost['rims'].total} },
              { text = "Fivestar", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 5, modtype = 23, mod = 8, confirmed = true , cost = cost['rims'].total} },
              { text = "Fujiwara", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 5, modtype = 23, mod = 20, confirmed = true , cost = cost['rims'].total} },
              { text = "Guppez", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 5, modtype = 23, mod = 15, confirmed = true , cost = cost['rims'].total} },
              { text = "Outsider", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 5, modtype = 23, mod = 2, confirmed = true , cost = cost['rims'].total} },
              { text = "Rallymaster", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 5, modtype = 23, mod = 23, confirmed = true , cost = cost['rims'].total} },
              { text = "Rollas", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 5, modtype = 23, mod = 3, confirmed = true , cost = cost['rims'].total} },
              { text = "Saisoku", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 5, modtype = 23, mod = 18, confirmed = true , cost = cost['rims'].total} },
              { text = "Slicer", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 5, modtype = 23, mod = 5, confirmed = true , cost = cost['rims'].total} },
              { text = "Slideways", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 5, modtype = 23, mod = 9, confirmed = true , cost = cost['rims'].total} },
              { text = "Stancedeg", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 5, modtype = 23, mod = 11, confirmed = true , cost = cost['rims'].total} },
              { text = "Stock", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 5, modtype = 23, mod = -1, confirmed = true , cost = cost['rims'].total} },
              { text = "Supermesh", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 5, modtype = 23, mod = 1, confirmed = true , cost = cost['rims'].total} },
              { text = "Zokusha", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 5, modtype = 23, mod = 21, confirmed = true , cost = cost['rims'].total} },
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

              { text = "Blade", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 7, modtype = 23, mod = 2, confirmed = true , cost = cost['rims'].total} },
              { text = "Carboncheetahr", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 7, modtype = 23, mod = 18, confirmed = true , cost = cost['rims'].total} },
              { text = "Carboninferno", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 7, modtype = 23, mod = 14, confirmed = true , cost = cost['rims'].total} },
              { text = "Carbonshadow", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 7, modtype = 23, mod = 15, confirmed = true , cost = cost['rims'].total} },
              { text = "Carbonsolar", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 7, modtype = 23, mod = 17, confirmed = true , cost = cost['rims'].total} },
              { text = "Carbonsracer", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 7, modtype = 23, mod = 19, confirmed = true , cost = cost['rims'].total} },
              { text = "Carbonz", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 7, modtype = 23, mod = 16, confirmed = true , cost = cost['rims'].total} },
              { text = "Cheetahr", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 7, modtype = 23, mod = 9, confirmed = true , cost = cost['rims'].total} },
              { text = "Chromaticz", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 7, modtype = 23, mod = 5, confirmed = true , cost = cost['rims'].total} },
              { text = "Dashvip", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 7, modtype = 23, mod = 12, confirmed = true , cost = cost['rims'].total} },
              { text = "Diamond", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 7, modtype = 23, mod = 3, confirmed = true , cost = cost['rims'].total} },
              { text = "Gtchrome", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 7, modtype = 23, mod = 8, confirmed = true , cost = cost['rims'].total} },
              { text = "Hyper", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 7, modtype = 23, mod = 1, confirmed = true , cost = cost['rims'].total} },
              { text = "Lozspeedten", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 7, modtype = 23, mod = 13, confirmed = true , cost = cost['rims'].total} },
              { text = "Merciechlip", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 7, modtype = 23, mod = 6, confirmed = true , cost = cost['rims'].total} },
              { text = "Obeyrs", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 7, modtype = 23, mod = 7, confirmed = true , cost = cost['rims'].total} },
              { text = "Shadow", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 7, modtype = 23, mod = false, confirmed = true , cost = cost['rims'].total} },
              { text = "Solar", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 7, modtype = 23, mod = 10, confirmed = true , cost = cost['rims'].total} },
              { text = "Splitten", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 7, modtype = 23, mod = 11, confirmed = true , cost = cost['rims'].total} },
              { text = "Stock", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 7, modtype = 23, mod = -1, confirmed = true , cost = cost['rims'].total} },
              { text = "Supagee", subText = cost['rims'].display, eventServer = "fx_customs:ConfirmMod", data = { wtype = 7, modtype = 23, mod = 4, confirmed = true , cost = cost['rims'].total} },
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
            menuTitle = "Category",
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

            {text = "None", subText = cost['turbo'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 18, mod = false, confirmed = true , cost = cost['turbo'].total} },
            {text = "Turbo Tuning", subText = cost['turbo'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 18, mod = true, confirmed = true , cost = cost['turbo'].total} },
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

          {text = "EMS Upgrade, Level 1", subText = cost['engine'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 11, mod = -1, confirmed = true , cost = cost['engine'].total} },
          {text = "EMS Upgrade, Level 2", subText = cost['engine'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 11, mod = false, confirmed = true , cost = cost['engine'].total} },
          {text = "EMS Upgrade, Level 3", subText = cost['engine'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 11, mod = 1, confirmed = true , cost = cost['engine'].total} },
          {text = "EMS Upgrade, Level 4", subText = cost['engine'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 11, mod = 2, confirmed = true , cost = cost['engine'].total} },
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

          {text = "None", subText = cost['armor'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 16, mod = -1, confirmed = true , cost = cost['armor'].total} },
          {text = "Armor Upgrade 20%", subText = cost['armor'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 16, mod = false, confirmed = true , cost = cost['armor'].total} },
          {text = "Armor Upgrade 40%", subText = cost['armor'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 16, mod = 1, confirmed = true , cost = cost['armor'].total} },
          {text = "Armor Upgrade 60%", subText = cost['armor'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 16, mod = 2, confirmed = true , cost = cost['armor'].total} },
          {text = "Armor Upgrade 80%", subText = cost['armor'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 16, mod = 3, confirmed = true , cost = cost['armor'].total} },
          {text = "Armor Upgrade 100%", subText = cost['armor'].display, eventServer = "fx_customs:ConfirmMod", data = { modtype = 16, mod = 4, confirmed = true , cost = cost['armor'].total} },
        },
      },
---------------[LIGHTS CATEGORY]---------------
    lights = { 
    
        settings = {
          title = "Los Santos Customs",
          menuTitle = "Category",
          back = CallbackBack,
          closable = true,
        },

        buttons = {

            { text = "Headlights", menu = "headlights" },
            { text = "Neon Kits", menu = "neonkits"  },
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

                  { text = "None",costs = 0},
                  { text = "Front",costs =0, menu = "neoncolor"  },
                  { text = "Left",costs =0, menu = "neoncolor"  },
                  { text = "Right",costs =0, menu = "neoncolor"  },
                  { text = "Back",costs =0, menu = "neoncolor"  },
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
