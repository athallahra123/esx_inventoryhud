Config = {}
Config.Locale = 'en'
Config.IncludeCash = true -- Include cash in inventory?
Config.IncludeWeapons = true -- Include weapons in inventory?
Config.IncludeAccounts = true -- Include accounts (bank, black money, ...)?
Config.ExcludeAccountsList = {"bank"} -- List of accounts names to exclude from inventory
Config.OpenControl = 289 -- Key for opening inventory. Edit html/js/config.js to change key for closing it.

-- List of item names that will close ui when used
Config.CloseUiItems = {"coke_pooch", "razor", "marijuana", "headbag", "fishingrod", "tunerlaptop", "binoculars", "gps", "joint", "cigarette", "cigar", "fixkit", "rollingpaper", "licenseplate", "cocaine", "meth", "radio"}

Config.Color = 2
Config.WeaponLiscence = {x = 12.47, y = -1105.5, z = 21.8}
Config.LicensePrice = 50000
Config.MarkerSize = {x = 0.6, y = 0.6, z = 0.5}
Config.MarkerColor = {r = 0, g = 128, b = 255}

Config.Map = {
	{name="Vanila Unicorn",color=27, id=121,x =132.17, y =-1304.42, z =100.319},
	{name="Mercusuar",color=0, id=164,x =5641.87, y =-5654.8, z =42.36}, --cayo lighthouse
    {name="Yellow Jack",color=27, id=93,x =1992.69, y =3058.57, z =100.319},
	{name="Bandara",color=39, id=307,x =-1037.38, y =-2737.68, z =20.17},
    --[[{name="Minimarket",color=2, id=52,x =373.875, y =325.896, z =100.319}, 
	--{name="Coffe Bean",color=0, id=214,x =-634.21, y =226.85, z =81.88}, -- coffe bean 
	--{name="Minimarket",color=2, id=52,x =-3038.939, y =585.954, z =6.908},--aa mart
	--{name="Minimarket",color=2, id=52,x =-3241.927, y =1001.462, z =11.830},-- boat rental
    --{name="Minimarket",color=2, id=52,x =547.431, y =2671.710, z =41.156},--harmony
	--{name="Minimarket",color=2, id=52,x =1961.464, y =3740.672, z =31.343},
	--{name="Minimarket",color=2, id=52,x =2678.916, y =3280.671, z =54.241},--youtool
	--{name="Minimarket",color=2, id=52,x =1729.216, y =6414.131, z =34.037},
	--{name="Minimarket",color=2, id=52,x =26.17, y =-1347.33, z =28.5},
    --{name="Minimarket",color=2, id=52,x =1135.808, y =-982.281, z =45.415},-- mirrorpark
	--{name="Minimarket",color=2, id=52,x =-1222.915, y =-906.983, z =11.326},
    --{name="Minimarket",color=2, id=52,x =-1487.553, y =-379.107, z =39.163},
	--{name="Minimarket",color=2, id=52,x =-2968.243, y =390.910, z =14.043},
    --{name="Minimarket",color=2, id=52,x =1166.024, y =2708.930, z =37.157},
    --{name="Taxi's Corner", color=3, id=280, x = -1034.49, y = -2730.69, z = 20.03},
    --{name="Taxi's Corner", color=3, id=280, x = 244.06, y = -582.23, z = 43.21},
    --{name="Taxi's Corner", color=3, id=280, x = 369.81, y = -947.29, z = 29.44},
    --{name="Taxi's Corner", color=3, id=280, x = -404.64, y = 1196.71, z = 325.94},
    --{name="Taxi's Corner", color=3, id=280, x = 1082.2464599609, y = -772.42614746094, z = 57.925758361816},
	--{name="Minimarket",color=2, id=52,x =1392.562, y =3604.648, z =33.980},
    --{name="Minimarket",color=2, id=52,x =-160.33, y =6322.71, z =30.6},
	--{name="Minimarket",color=2, id=52,x =-48.519, y =-1757.514, z =28.421},
	--{name="Minimarket",color=2, id=52,x =1163.373, y =-323.801, z =68.205},
	--{name="Minimarket",color=2, id=52,x =-707.501, y =-914.260, z =18.215},
	--{name="Minimarket",color=2, id=52,x =-1820.523, y =792.518, z =137.118},
	--{name="Minimarket",color=2, id=52,x =1698.388, y =4924.404, z =41.063},
	--{name="Minimarket",color=2, id=52,x =4467.91, y =-4465.18, z =4.25}, --cayo]]
	
}

Config.Shops = {
    --[[RegularShop = {
        Locations = {
			{x = 373.875,   y = 325.896,  	z = 102.566},
			
			{x = 4467.91,   y = -4465.18,  	z = 4.22}, -- cayo

            --{x = 190.07,  y = -889.44,  	z = 30.71}, --taman kota

            --{x = -3038.939, y = 585.954,  	z = 6.908},--aa mart

            --{x = -3241.927, y = 1001.462, 	z = 11.830},-- boat rental

            --{x = 547.431,   y = 2671.710, 	z = 41.156},--harmony

            {x = 1961.464,  y = 3740.672, 	z = 31.343},

            --{x = 2678.916,  y = 3280.671, 	z = 54.241},--youtool

            {x = 1729.216,  y = 6414.131, 	z = 34.037},

            --{x = 1135.808,  y = -982.281,  	z = 45.415},-- mirrorpark

            {x = -1222.915, y = -906.983,  	z = 11.326},

            {x = -1487.553, y = -379.107,  	z = 39.163},

            {x = -2968.243, y = 390.910,   	z = 14.043},

            {x = 1166.024,  y = 2708.930,  	z = 37.157},

            {x = 1392.562,  y = 3604.684,  	z = 33.980},

            {x = -48.519,   y = -1757.514, 	z = 28.421},

            {x = 1163.373,  y = -323.801,  	z = 68.205},

            {x = -707.501,  y = -914.260,  	z = 18.215},

            {x = -1820.523, y = 792.518,   	z = 137.118},

            {x = 26.17, 	y = -1347.33,   z = 28.5},

            {x = -2540.95,  y = 2314.05,  	z = 32.41},

            {x = 1698.388,  y = 4924.404,  	z = 41.063},

            {x = -160.33,  	y = 6322.71,  	z = 30.6}
        },
        Items = {
            {name = 'nasipadang'},
            {name = 'icetea'},
            {name = 'phone'},
			{name = 'notepad'},
            {name = 'cigarett'},
            {name = 'lighter'},
            {name = 'bread'},
			{name = 'fishingrod'},
			{name = 'fishbait'},
			{name = 'turtlebait'},
			{name = 'radio'},
            {name = 'water'}
        }
    },]]

    --[[RobsLiquor = {
		Locations = {
            {x = 1985.27, y = 3050.6, z = 47.22},
            {x = -450.42, y = 281.22,   z = 77.52},

            {x = -1577.93, y = -3014.85,   z = -80.01},

            {x = -1586.7, y = -3012.44,   z = -77.0},

			{x = -429.59, y = 268.26,   z = 82.02},

			{x = 1420.48, y = 3558.65,   z = 35.71},
        },
        Items = {
            {name = 'beer'},
            {name = 'wine'},
            {name = 'cigaret'},
            {name = 'lighter'},
            {name = 'vodka'},
            {name = 'tequila'},
            {name = 'whisky'}
        }
    },

    Polisi = {
		Locations = {

        },
        Items = {
            {name = 'clip'},
            --{name = 'bulletproof'},
        }
    },
    
    Mafia = {
		Locations = {
            
        },
        Items = {
            --{name = 'clip'},
            {name = 'blindfold'},
            --{name = 'bulletproof'},
            {name = 'drill'}
        }
    },

    
    Ems = {
        Locations = {
            {x = 0, y = 0, z = 0},
        },
        Items = {
            {name = 'bandage'}
        }
    },

    Trai = {
        Locations = {
        },
        Items = {
            {name = 'medikit'}
        }
    },

    WeaponShop2 = {
        Locations = {
            --{ x = 18.29, y = -1105.63, z = 29.80 }
        },
        Weapons = {
            --{name = "weapon_specialcarbine", ammo = 36, price = 105000},
            --{name = "weapon_assultrifle", ammo = 36, price = 105000},
            --{name = "WEAPON_PISTOL50", ammo = 36, price = 75000},
            --{name = "WEAPON_STUNGUN", ammo = 12, price = 10000},
            --{name = "WEAPON_ASSAULTRIFLE", ammo = 90, price = 200000},
            --{name = "weapon_heavysniper", ammo = 20, price = 250000},
            --{name = "WEAPON_MACHINEPISTOL", ammo = 60, price = 65000},
            --{name = "WEAPON_MINISMG", ammo = 60, price = 112000},
            --{name = "weapon_microsmg", ammo = 60, price = 112000},
            --{name = "weapon_revolver", ammo = 60, price = 150000},
            --{name = "GADGET_PARACHUTE", ammo = 12, price = 10000}
        },
        Ammo = {
            {name = "9mm_rounds", weaponhash = "WEAPON_PISTOL", ammo = 24},
            --{name = "shotgun_shells", weaponhash = "WEAPON_PUMPSHOTGUN", ammo = 12}
        },
        Items = {

        }
    },]]

    --[[WeaponShop = {
        Locations = {
            { x = -662.180, y = -934.961, z = 21.829 },
            { x = 810.25, y = -2157.60, z = 29.62 },
            { x = 1693.44, y = 3760.16, z = 34.71 },
            { x = -330.24, y = 6083.88, z = 31.45 },
            { x = 252.63, y = -50.00, z = 69.94 },
            { x = 22.09, y = -1107.28, z = 29.80 },
            { x = 2567.69, y = 294.38, z = 108.73 },
            { x = -1117.58, y = 2698.61, z = 18.55 },
            { x = 842.44, y = -1033.42, z = 28.19 },
        },
        Weapons = {
            --{name = "WEAPON_KNIFE", ammo = 1},
            {name = "WEAPON_MACHETE", ammo = 1},
            --{name = "WEAPON_STUNGUN", ammo = 9999},
            {name = "WEAPON_FLASHLIGHT", ammo = 1},
            --{name = "WEAPON_FIREEXTINGUISHER", ammo = 9999},
            {name = "WEAPON_BAT", ammo = 1},
            --{name = "GADGET_PARACHUTE", ammo = 12, price = 15000},
            {name = "WEAPON_PISTOL", ammo = 100},
            --{name = "GADGET_PARACHUTE", ammo = 12, price = 15000},
            --{name = "WEAPON_KNIFE", ammo = 1, price = 25000}
        },
        Ammo = {
            {name = "9mm_rounds", weaponhash = "WEAPON_PISTOL", ammo = 24},
        },
        Items = {

        }
    },]]--
}