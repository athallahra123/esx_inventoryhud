Config = {}
Config.Locale = 'en'
Config.IncludeCash = true -- Include cash in inventory?
Config.IncludeWeapons = true -- Include weapons in inventory?
Config.IncludeAccounts = true -- Include accounts (bank, black money, ...)?
Config.ExcludeAccountsList = {"bank"} -- List of accounts names to exclude from inventory
Config.OpenControl = 289 -- Key for opening inventory. Edit html/js/config.js to change key for closing it.

-- List of item names that will close ui when used
Config.CloseUiItems = {"headbag", "fishingrod", "tunerlaptop", "binoculars", "gps", "joint", "cigarette", "cigar", "fixkit", "rollingpaper", "cocaine", "meth", "radio"}

Config.Color = 2
Config.WeaponLiscence = {x = 12.47, y = -1105.5, z = 29.8}
Config.LicensePrice = 750000
Config.MarkerSize = {x = 0.6, y = 0.6, z = 0.5}
Config.MarkerColor = {r = 0, g = 128, b = 255}

Config.Map = {
    {name="Tequil-La La",color=27, id=93, x=-565.906, y=276.093, z=100.176},
    {name="Area Mancing Nelayan",color=38, id=68, x=4435.21, y=4829.60, z=0.34},
	{name="Bahamas",color=27, id=93,x =-1388.409, y =-585.624, z =100.319},
	{name="Stripclub",color=27, id=121,x =132.17, y =-1304.42, z =100.319},
    {name="Yellow Jack",color=27, id=93,x =1992.69, y =3058.57, z =100.319},
    {name="Kantor Nelayan",color=38, id=68,x = 868.39, y = -1639.75, z = 29.33},
	{name="Galaxy",color=27, id=93,x =5.00, y =220.24, z =107.72}, -- Wainting for the nightclub id blip
    {name="Kantor Tukang Minyak",color=5, id=436,x = 557.93, y = -2327.90, z = 4.82},
    {name="Kantor Penambang",color=5, id=318,x = 892.35, y = -2172.77, z = 31.28},
    {name="Kantor Tukang Kayu",color=4, id=237,x = 1200.635, y =  -1276.87, z = 34.38},
    {name="Berburu", color=1, id=463, x = -769.23773193359, y = 5595.6215820313, z = 33.48571395874},
    {name="Tempat Pengambilan Minyak",color=5, id=436,x = 609.58, y = 2856.74, z = 38.90},
    {name="Warung",color=2, id=52,x =373.875, y =325.896, z =100.319},
	{name="Warung",color=2, id=52,x =2557.458, y =382.282, z =100.319},
	{name="Warung",color=2, id=52,x =-3038.939, y =585.954, z =6.908},
	{name="Warung",color=2, id=52,x =-3241.927, y =1001.462, z =11.830},
    {name="Warung",color=2, id=52,x =547.431, y =2671.710, z =41.156},
    {name="Kantor Penjahit",color=4, id=366,x =706.73, y = -960.90, z = 29.39},
	{name="Warung",color=2, id=52,x =1961.464, y =3740.672, z =31.343},
	{name="Warung",color=2, id=52,x =2678.916, y =3280.671, z =54.241},
    {name="Dapur Umum",color=2, id=436,x = 2478.36, y = 3762.48, z = 41.92},
	{name="Warung",color=2, id=52,x =1729.216, y =6414.131, z =34.037},
	{name="Warung",color=2, id=52,x =26.17, y =-1347.33, z =28.5},
    {name="Warung",color=2, id=52,x =1135.808, y =-982.281, z =45.415},
    {name="Polsek", color=29, id=60, x = 1858.43, y = 3679.46, z = 33.73},
    {name="Polres", color=29, id=60, x = 425.1, y = -979.5, z = 30.7},
    {name="Polsek", color=29, id=60, x = -437.37, y = 6022.26, z = 31.49},
    {name="Lapas", color=29, id=60, x = 1848.39, y = 2586.14, z = 45.67},
    {name="Polsek", color=29, id=60, x = 360.14, y = -1583.79, z = 29.29},
	{name="Warung",color=2, id=52,x =-1222.915, y =-906.983, z =11.326},
	{name="Warung",color=2, id=52,x =-1487.553, y =-379.107, z =39.163},
	{name="Bandara Kota",color=39, id=307,x =-1037.38, y =-2737.68, z =20.17},
	{name="Warung",color=2, id=52,x =-2968.243, y =390.910, z =14.043},
    {name="Warung",color=2, id=52,x =1166.024, y =2708.930, z =37.157},
    {name="Pangkalan Grab", color=3, id=280, x = -1034.49, y = -2730.69, z = 20.03},
    {name="Kantor Tukang Ayam", color=5, id=256, x = -1071.13, y = -2003.78, z = 14.78},
    {name="Pengambilan Wool", color=4, id=366, x = 1978.92, y = 5171.70, z = 46.63},
    {name="Tempat Gelud [UFC]", color=1, id=311, x = 106.6577, y = -1926.304, z = 19.7757},
    {name="Pabrik Ayam", color=5, id=484, x = -62.90, y = 6241.46, z = 30.09},
    {name="Pangkalan Grab", color=3, id=280, x = 244.06, y = -582.23, z = 43.21},
    {name="Pangkalan Grab", color=3, id=280, x = 369.81, y = -947.29, z = 29.44},
    {name="Pemakaman", color=1, id=310, x = -1763.03, y = -262.64, z = 48.22},
    {name="Tempat Penambangan", color=5, id=318, x = 2962.40, y = 2746.20, z = 42.39},
    {name="Pernikahan", color=48, id=181, x = -1467.6, y = -1468.15, z = 5.01},
    {name="Pangkalan Grab", color=3, id=280, x = -404.64, y = 1196.71, z = 325.94},
    {name="Pangkalan Grab", color=3, id=280, x = 1082.2464599609, y = -772.42614746094, z = 57.925758361816},
    {name="Kapal Persiar", color=0, id=455, x = -2043.974, y = -1031.582, z = 11.981},
    {name="Kapal Persiar", color=0, id=455, x = -1469.65, y = 6768.03, z = 8.1},
	{name="Warung",color=2, id=52,x =1392.562, y =3604.648, z =33.980},
    {name="Pernikahan", color=48, id=181, x = -1571.02, y = 97.37, z = 58.22},
    {name="Polsek", color=29, id=60, x = -1640.89, y = -1017.7, z = 13.15},
    --{name="Warung",color=2, id=52,x =-160.33, y =6322.71, z =30.6},
    {name="Masjid", color=37, id=181, x = -1458.02, y = -1231.57, z = 4.06},
    {name="Pabrik Kayu",color=4, id=237,x = -534.32, y = 5373.79, z = 69.50},
	{name="Warung",color=2, id=52,x =-48.519, y =-1757.514, z =28.421},
	{name="Warung",color=2, id=52,x =1163.373, y =-323.801, z =68.205},
	{name="Warung",color=2, id=52,x =-707.501, y =-914.260, z =18.215},
	{name="Warung",color=2, id=52,x =-1820.523, y =792.518, z =137.118},
	{name="Warung",color=2, id=52,x =1698.388, y =4924.404, z =41.063}
}

Config.Shops = {
    RegularShop = {
        Locations = {
			{x = 373.875,   y = 325.896,  	z = 102.566},

            {x = 2557.458,  y = 382.282,  	z = 107.622},

            {x = -3038.939, y = 585.954,  	z = 6.908},

            {x = -3241.927, y = 1001.462, 	z = 11.830},

            {x = 547.431,   y = 2671.710, 	z = 41.156},

            {x = 1961.464,  y = 3740.672, 	z = 31.343},

            {x = 2678.916,  y = 3280.671, 	z = 54.241},

            {x = 1729.216,  y = 6414.131, 	z = 34.037},

            {x = 1135.808,  y = -982.281,  	z = 45.415},

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

            {x = -160.33,  	y = 6322.71,  	z = 30.6},

            {x = -1034.28, y = -2733.44,    z = 20.17}, -- bandara    
        },
        Items = {
            {name = 'nasipadang'},
            {name = 'icetea'},
            {name = 'phone'},
            {name = 'cigarett'},
            {name = 'lighter'},
            {name = 'bread'},
            {name = 'water'}
        }
    },

    RobsLiquor = {
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

    Meka = {
		Locations = {
            { x = -345.09, y = -139.56, z = 39.01 },
        },
        Items = {
            {name = 'blowpipe'},
            {name = 'carokit'},
            {name = 'fixkit'},
        }
    },
    
    Mafia = {
		Locations = {
            {x = 1469.53, y = 6543.18, z = 14.9},
        },
        Items = {
            {name = 'clip'},
            {name = 'blindfold'},
            {name = 'bulletproof'},
            {name = 'drill'}
        }
    },

    
    Ems = {
        Locations = {
            {x = 311.72, y = -562.65, z = 43.28},
        },
        Items = {
            {name = 'bandage'},
            {name = 'medikit'}
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
            { x = 1915.31, y = 582.69, z = 176.37 }
        },
        Weapons = {
            {name = "weapon_specialcarbine", ammo = 36, price = 105000},
            {name = "weapon_assultrifle", ammo = 36, price = 105000},
            {name = "WEAPON_PISTOL50", ammo = 36, price = 75000},
            {name = "WEAPON_STUNGUN", ammo = 12, price = 10000},
            {name = "WEAPON_ASSAULTRIFLE", ammo = 90, price = 200000},
            {name = "weapon_heavysniper", ammo = 20, price = 250000},
            {name = "WEAPON_MACHINEPISTOL", ammo = 60, price = 65000},
            {name = "WEAPON_MINISMG", ammo = 60, price = 112000},
            {name = "weapon_microsmg", ammo = 60, price = 112000},
            {name = "weapon_revolver", ammo = 60, price = 150000},
            {name = "GADGET_PARACHUTE", ammo = 12, price = 10000}
        },
        Ammo = {
            {name = "9mm_rounds", weaponhash = "WEAPON_PISTOL", ammo = 24},
            {name = "shotgun_shells", weaponhash = "WEAPON_PUMPSHOTGUN", ammo = 12}
        },
        Items = {

        }
    },

    WeaponShop = {
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
            {name = "WEAPON_KNIFE", ammo = 1},
            {name = "WEAPON_MACHETE", ammo = 1},
            {name = "WEAPON_STUNGUN", ammo = 9999},
            {name = "WEAPON_FLASHLIGHT", ammo = 1},
            {name = "WEAPON_FIREEXTINGUISHER", ammo = 9999},
            {name = "WEAPON_BAT", ammo = 1},
            {name = "GADGET_PARACHUTE", ammo = 12, price = 15000},
            {name = "WEAPON_PISTOL", ammo = 200}
        },
        Ammo = {
            {name = "9mm_rounds", weaponhash = "WEAPON_PISTOL", ammo = 24}
        },
        Items = {

        }
    },
}

