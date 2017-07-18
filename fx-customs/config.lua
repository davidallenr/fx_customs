  -- @Date:   2017-07-18
  -- @Project: FX Customs
  -- @Owner: Jink Left
  -- @Last modified time: 2017-07-18

---------------[   BlIPS   ]---------------
locations = {
    [1] = { outside = { x = -362.7962, y = -132.4005, z = 38.25239, heading = 71.187133}, inside = {x = -337.3863,y = -136.9247,z = 38.5737, heading = 269.455}},
    [2] = { outside = { x = -1140.191, y = -1985.478, z = 12.72923, heading = 315.290466}, inside = {x = -1155.536,y = -2007.183,z = 12.744, heading = 155.413}},
    [3] = { outside = { x = 716.4645, y = -1088.869, z = 21.92979, heading = 88.768}, inside = {x = 731.8163,y = -1088.822,z = 21.733, heading = 269.318}},
    [4] = { outside = { x = 1174.811, y = 2649.954, z = 37.37151, heading = 0.450}, inside = {x = 1175.04,y = 2640.216,z = 37.32177, heading = 182.402}},
  }
-------------------------------------------
---------------[REPAIR MENU]---------------
menu = {

    fx_customs = {

      settings = {
        title = "Los Santos Customs",
        menuTitle = "Welcome",
      },

      buttons = {
        { text = "Purchase Upgrades", menu = "fx_main" },
        { text = "Purchase Vehicle Repairs", menu = "fx_repair" },
        { text = "Close menu", close = true },
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
        { text = "Confirm", subText = "5,000" },
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
              { text = "Chrono", wtype = false, modtype = 23, mod = 4, costs = 0, subText = ""},
              { text = "Cosmo", wtype = false, modtype = 23, mod = 16, costs = 0, subText = ""},
              { text = "Dashvip", wtype = false, modtype = 23, mod = 17, costs = 0, subText = ""},
              { text = "Deepfive", wtype = false, modtype = 23, mod = 1, costs = 0, subText = ""},
              { text = "Diamondcut", wtype = false, modtype = 23, mod = 3, costs = 0, subText = ""},
              { text = "Duper7", wtype = false, modtype = 23, mod = 11, costs = 0, subText = ""},
              { text = "Endov1", wtype = false, modtype = 23, mod = 10, costs = 0, subText = ""},
              { text = "Endov2", wtype = false, modtype = 23, mod = 22, costs = 0, subText = ""},
              { text = "Feroccirr", wtype = false, modtype = 23, mod = 5, costs = 0, subText = ""},
              { text = "Fiftynine", wtype = false, modtype = 23, mod = 6, costs = 0, subText = ""},
              { text = "Groundride", wtype = false, modtype = 23, mod = 13, costs = 0, subText = ""},
              { text = "Icekid", wtype = false, modtype = 23, mod = 18, costs = 0, subText = ""},
              { text = "Inferno", wtype = false, modtype = 23, mod = false, costs = 0, subText = ""},
              { text = "Lozspeed", wtype = false, modtype = 23, mod = 2, costs = 0, subText = ""},
              { text = "Mercie", wtype = false, modtype = 23, mod = 7, costs = 0, subText = ""},
              { text = "Organictyped", wtype = false, modtype = 23, mod = 9, costs = 0, subText = ""},
              { text = "Ruffeld", wtype = false, modtype = 23, mod = 19, costs = 0, subText = ""},
              { text = "Slitsix", wtype = false, modtype = 23, mod = 23, costs = 0, subText = ""},
              { text = "Spacer", wtype = false, modtype = 23, mod = 14, costs = 0, subText = ""},
              { text = "Stock", wtype = false, modtype = 23, mod = -1, costs = 0, subText = ""},
              { text = "Superfive", wtype = false, modtype = 23, mod = 21, costs = 0, subText = ""},
              { text = "Syntheticz", wtype = false, modtype = 23, mod = 8, costs = 0, subText = ""},
              { text = "Uzer", wtype = false, modtype = 23, mod = 12, costs = 0, subText = ""},
              { text = "Venum", wtype = false, modtype = 23, mod = 15, costs = 0, subText = ""},
              { text = "Wangenmaster", wtype = false, modtype = 23, mod = 20, costs = 0, subText = ""},
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
              { text = "Azrea", wtype = 1, modtype = 23, mod = 4, costs = 0, subText = "" },
              { text = "Blacktop", wtype = 1, modtype = 23, mod = 6, costs = 0, subText = "" },
              { text = "Classicfive", wtype = 1, modtype = 23, mod = false, costs = 0, subText = "" },
              { text = "Classicrod", wtype = 1, modtype = 23, mod = 9, costs = 0, subText = "" },
              { text = "Dodman", wtype = 1, modtype = 23, mod = 14, costs = 0, subText = "" },
              { text = "Dragspl", wtype = 1, modtype = 23, mod = 7, costs = 0, subText = "" },
              { text = "Dukes", wtype = 1, modtype = 23, mod = 1, costs = 0, subText = "" },
              { text = "Eljefe", wtype = 1, modtype = 23, mod = 13, costs = 0, subText = "" },
              { text = "Fivestar", wtype = 1, modtype = 23, mod = 11, costs = 0, subText = "" },
              { text = "Kracka", wtype = 1, modtype = 23, mod = 3, costs = 0, subText = "" },
              { text = "Mecha", wtype = 1, modtype = 23, mod = 5, costs = 0, subText = "" },
              { text = "Mercenary", wtype = 1, modtype = 23, mod = 16, costs = 0, subText = "" },
              { text = "Musclefreak", wtype = 1, modtype = 23, mod = 2, costs = 0, subText = "" },
              { text = "Oldschool", wtype = 1, modtype = 23, mod = 12, costs = 0, subText = "" },
              { text = "Revolver", wtype = 1, modtype = 23, mod = 8, costs = 0, subText = "" },
              { text = "Sixgun", wtype = 1, modtype = 23, mod = 15, costs = 0, subText = "" },
              { text = "Spooner", wtype = 1, modtype = 23, mod = 10, costs = 0, subText = "" },
              { text = "Stock", wtype = 1, modtype = 23, mod = -1, costs = 0, subText = "" },
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
              { text = "Bigworm", wtype = 2, modtype = 23, mod = 3, costs = 0, subText = "" },
              { text = "Classicrod", wtype = 2, modtype = 23, mod = 10, costs = 0, subText = "" },
              { text = "Dollar", wtype = 2, modtype = 23, mod = 11, costs = 0, subText = "" },
              { text = "Dukes", wtype = 2, modtype = 23, mod = 12, costs = 0, subText = "" },
              { text = "Flare", wtype = 2, modtype = 23, mod = false, costs = 0, subText = "" },
              { text = "Freshmesh", wtype = 2, modtype = 23, mod = 6, costs = 0, subText = "" },
              { text = "Gooch", wtype = 2, modtype = 23, mod = 14, costs = 0, subText = "" },
              { text = "Leadsled", wtype = 2, modtype = 23, mod = 7, costs = 0, subText = "" },
              { text = "Lowfive", wtype = 2, modtype = 23, mod = 13, costs = 0, subText = "" },
              { text = "Sevenfives", wtype = 2, modtype = 23, mod = 4, costs = 0, subText = "" },
              { text = "Splitsix", wtype = 2, modtype = 23, mod = 5, costs = 0, subText = "" },
              { text = "Stock", wtype = 2, modtype = 23, mod = -1, costs = 0, subText = "" },
              { text = "Superfin", wtype = 2, modtype = 23, mod = 9, costs = 0, subText = "" },
              { text = "Triplegolds", wtype = 2, modtype = 23, mod = 2, costs = 0, subText = "" },
              { text = "Turbine", wtype = 2, modtype = 23, mod = 8, costs = 0, subText = "" },
              { text = "Wired", wtype = 2, modtype = 23, mod = 1, costs = 0, subText = "" },
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
              { text = "Benefactor", wtype = 3, modtype = 23, mod = 1, costs = 0, subText = ""},
              { text = "Bippu", wtype = 3, modtype = 23, mod = 3, costs = 0, subText = ""},
              { text = "Cognscenti", wtype = 3, modtype = 23, mod = 8, costs = 0, subText = ""},
              { text = "Cosmo", wtype = 3, modtype = 23, mod = 2, costs = 0, subText = ""},
              { text = "Cutter", wtype = 3, modtype = 23, mod = 18, costs = 0, subText = ""},
              { text = "Dashvip", wtype = 3, modtype = 23, mod = 17, costs = 0, subText = ""},
              { text = "Deluxe", wtype = 3, modtype = 23, mod = 6, costs = 0, subText = ""},
              { text = "Empowered", wtype = 3, modtype = 23, mod = 15, costs = 0, subText = ""},
              { text = "Extra vaganzo", wtype = 3, modtype = 23, mod = 13, costs = 0, subText = ""},
              { text = "Fagorme", wtype = 3, modtype = 23, mod = 5, costs = 0, subText = ""},
              { text = "Icedout", wtype = 3, modtype = 23, mod = 7, costs = 0, subText = ""},
              { text = "Lozspeedballer", wtype = 3, modtype = 23, mod = 12, costs = 0, subText = ""},
              { text = "Lozspeedten", wtype = 3, modtype = 23, mod = 9, costs = 0, subText = ""},
              { text = "Obeyrs", wtype = 3, modtype = 23, mod = 11, costs = 0, subText = ""},
              { text = "Royalsix", wtype = 3, modtype = 23, mod = 4, costs = 0, subText = ""},
              { text = "Splitsix", wtype = 3, modtype = 23, mod = 14, costs = 0, subText = ""},
              { text = "Stock", wtype = 3, modtype = 23, mod = -1, costs = 0, subText = ""},
              { text = "Sunrise", wtype = 3, modtype = 23, mod = 16, costs = 0, subText = ""},
              { text = "Supernova", wtype = 3, modtype = 23, mod = 10, costs = 0, subText = ""},
              { text = "Vip", wtype = 3, modtype = 23, mod = false, costs = 0, subText = ""},
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
              { text = "Stock", wtype = 4, modtype = 23, mod = -1, costs = 0, subText = ""},
              { text = "Raider", wtype = 4, modtype = 23, mod = false, costs = 0, subText = ""},
              { text = "Mudslinger", modtype = 23, mod = 1, costs = 0, subText = ""},
              { text = "Nevis", wtype = 4, modtype = 23, mod = 2, costs = 0, subText = ""},
              { text = "Cairngorm", wtype = 4, modtype = 23, mod = 3, costs = 0, subText = ""},
              { text = "Amazon", wtype = 4, modtype = 23, mod = 4, costs = 0, subText = ""},
              { text = "Challenger", wtype = 4, modtype = 23, mod = 5, costs = 0, subText = ""},
              { text = "Dunebasher", wtype = 4, modtype = 23, mod = 6, costs = 0, subText = ""},
              { text = "Fivestar", wtype = 4, modtype = 23, mod = 7, costs = 0, subText = ""},
              { text = "Rockcrawler", wtype = 4, modtype = 23, mod = 8, costs = 0, subText = ""},
              { text = "Milspecsteelie", wtype = 4, modtype = 23, mod = 9, costs = 0, subText = ""},
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
              { text = "Apex", wtype = 5, modtype = 23, mod = 10, costs = 0, subText = "" },
              { text = "Battlevill", wtype = 5, modtype = 23, mod = 22, costs = 0, subText = "" },
              { text = "Chicane", wtype = 5, modtype = 23, mod = 17, costs = 0, subText = "" },
              { text = "Chokadori", wtype = 5, modtype = 23, mod = 16, costs = 0, subText = "" },
              { text = "Cosmo", wtype = 5, modtype = 23, mod = false, costs = 0, subText = "" },
              { text = "Countersteer", wtype = 5, modtype = 23, mod = 12, costs = 0, subText = "" },
              { text = "Dishedeight", wtype = 5, modtype = 23, mod = 19, costs = 0, subText = "" },
              { text = "Driffmeister", wtype = 5, modtype = 23, mod = 4, costs = 0, subText = "" },
              { text = "Dubbed", wtype = 5, modtype = 23, mod = 7, costs = 0, subText = "" },
              { text = "Elquatro", wtype = 5, modtype = 23, mod = 6, costs = 0, subText = "" },
              { text = "Endov1", wtype = 5, modtype = 23, mod = 13, costs = 0, subText = "" },
              { text = "Endov2dish", wtype = 5, modtype = 23, mod = 14, costs = 0, subText = "" },
              { text = "Fivestar", wtype = 5, modtype = 23, mod = 8, costs = 0, subText = "" },
              { text = "Fujiwara", wtype = 5, modtype = 23, mod = 20, costs = 0, subText = "" },
              { text = "Guppez", wtype = 5, modtype = 23, mod = 15, costs = 0, subText = "" },
              { text = "Outsider", wtype = 5, modtype = 23, mod = 2, costs = 0, subText = "" },
              { text = "Rallymaster", wtype = 5, modtype = 23, mod = 23, costs = 0, subText = "" },
              { text = "Rollas", wtype = 5, modtype = 23, mod = 3, costs = 0, subText = "" },
              { text = "Saisoku", wtype = 5, modtype = 23, mod = 18, costs = 0, subText = "" },
              { text = "Slicer", wtype = 5, modtype = 23, mod = 5, costs = 0, subText = "" },
              { text = "Slideways", wtype = 5, modtype = 23, mod = 9, costs = 0, subText = "" },
              { text = "Stancedeg", wtype = 5, modtype = 23, mod = 11, costs = 0, subText = "" },
              { text = "Stock", wtype = 5, modtype = 23, mod = -1, costs = 0, subText = "" },
              { text = "Supermesh", wtype = 5, modtype = 23, mod = 1, costs = 0, subText = "" },
              { text = "Zokusha", wtype = 5, modtype = 23, mod = 21, costs = 0, subText = "" },
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
              { text = "Blade", wtype = 7, modtype = 23, mod = 2, costs = 0, subText = "" },
              { text = "Carboncheetahr", wtype = 7, modtype = 23, mod = 18, costs = 0, subText = "" },
              { text = "Carboninferno", wtype = 7, modtype = 23, mod = 14, costs = 0, subText = "" },
              { text = "Carbonshadow", wtype = 7, modtype = 23, mod = 15, costs = 0, subText = "" },
              { text = "Carbonsolar", wtype = 7, modtype = 23, mod = 17, costs = 0, subText = "" },
              { text = "Carbonsracer", wtype = 7, modtype = 23, mod = 19, costs = 0, subText = "" },
              { text = "Carbonz", wtype = 7, modtype = 23, mod = 16, costs = 0, subText = "" },
              { text = "Cheetahr", wtype = 7, modtype = 23, mod = 9, costs = 0, subText = "" },
              { text = "Chromaticz", wtype = 7, modtype = 23, mod = 5, costs = 0, subText = "" },
              { text = "Dashvip", wtype = 7, modtype = 23, mod = 12, costs = 0, subText = "" },
              { text = "Diamond", wtype = 7, modtype = 23, mod = 3, costs = 0, subText = "" },
              { text = "Gtchrome", wtype = 7, modtype = 23, mod = 8, costs = 0, subText = "" },
              { text = "Hyper", wtype = 7, modtype = 23, mod = 1, costs = 0, subText = "" },
              { text = "Lozspeedten", wtype = 7, modtype = 23, mod = 13, costs = 0, subText = "" },
              { text = "Merciechlip", wtype = 7, modtype = 23, mod = 6, costs = 0, subText = "" },
              { text = "Obeyrs", wtype = 7, modtype = 23, mod = 7, costs = 0, subText = "" },
              { text = "Shadow", wtype = 7, modtype = 23, mod = false, costs = 0, subText = "" },
              { text = "Solar", wtype = 7, modtype = 23, mod = 10, costs = 0, subText = "" },
              { text = "Splitten", wtype = 7, modtype = 23, mod = 11, costs = 0, subText = "" },
              { text = "Stock", wtype = 7, modtype = 23, mod = -1, costs = 0, subText = "" },
              { text = "Supagee", wtype = 7, modtype = 23, mod = 4, costs = 0, subText = "" },
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
