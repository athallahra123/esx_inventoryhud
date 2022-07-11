local shopData = nil

Keys = {
	["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57, 
	["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177, 
	["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
	["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
	["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
	["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70, 
	["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
	["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
	["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

local Licenses = {}
local PlayerData = {}

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(100)
	end

    PlayerData = ESX.GetPlayerData()
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
    PlayerData.job = job
end)
RegisterNetEvent('z2kammunation:tokosenjata')
AddEventHandler('z2kammunation:tokosenjata', function()
	ESX.TriggerServerCallback('esx_license:checkLicense', function(hasWeaponLicense)
		if hasWeaponLicense then
			OpenShopInv("weaponshop")
			Citizen.Wait(2000)
		else
			OpenBuyLicenseMenu()
		end
	end, GetPlayerServerId(PlayerId()), 'weapon')
end)


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        player = GetPlayerPed(-1)
        coords = GetEntityCoords(player)
		local IsInVehicle = IsPedInAnyVehicle(PlayerPedId(), false)
		local speed = GetEntitySpeed(PlayerPedId())
		-- if speed < 1 and not IsInVehicle and IsInRobsLiquorZone(coords) or IsInEmsZone(coords) or IsInTraiZone(coords) or IsInWeaponShopZone(coords) or IsInWeaponShopZone2(coords) or IsInMafiaZone(coords) then
        if speed < 1 and not IsInVehicle and IsInWeaponShopZone(coords) then
            --[[if IsInRegularShopZone(coords) then
                ESX.ShowHelpNotification('Tekan E - Membuka Toko')
                if IsControlJustReleased(0, Keys["E"]) then
                    OpenShopInv("regular")
                    Citizen.Wait(2000)
                end
            end
            if IsInRobsLiquorZone(coords) then
                ESX.ShowHelpNotification('Tekan E - Membuka Toko')
                if IsControlJustReleased(0, Keys["E"]) then
                    OpenShopInv("robsliquor")
                    Citizen.Wait(2000)

                end
            end
            if IsInEmsZone(coords) then
                ESX.ShowHelpNotification('Tekan E - Membuka Toko')
                if IsControlJustReleased(0, Keys["E"]) then
                    if PlayerData.job ~= nil and PlayerData.job.name == 'ambulance' then
                        OpenShopInv("ems")
                        Citizen.Wait(2000)

                    end    
                end
            end
            if IsInTraiZone(coords) then
                ESX.ShowHelpNotification('Tekan E - Membuka Toko')
                if IsControlJustReleased(0, Keys["E"]) then
                    if PlayerData.job ~= nil and PlayerData.job.name == 'ambulance' then
                        OpenShopInv("trai")
                        Citizen.Wait(2000)

                    end    
                end
            end

            if IsInWeaponShopZone(coords) then
                ESX.ShowHelpNotification('Tekan E - Membuka Toko')
                if IsControlJustReleased(0, Keys["E"]) then
                    ESX.TriggerServerCallback('esx_license:checkLicense', function(hasWeaponLicense)
                        if hasWeaponLicense then
                            OpenShopInv("weaponshop")
                            Citizen.Wait(2000)
                        else
                            OpenBuyLicenseMenu()
                        end
                    end, GetPlayerServerId(PlayerId()), 'weapon')
                end
            end
            if IsInMafiaZone(coords) then

                letSleep = false
    
                if IsControlJustReleased(0, Keys["E"]) then
    
                    if (PlayerData.job ~= nil and PlayerData.job.name == 'gang' and PlayerData.job.grade > 1) or (PlayerData.job ~= nil and PlayerData.job.name == 'mafia' and PlayerData.job.grade > 1) or (PlayerData.job ~= nil and PlayerData.job.name == 'cartel' and PlayerData.job.grade > 1) or (PlayerData.job ~= nil and PlayerData.job.name == 'biker' and PlayerData.job.grade > 1) then
    
                        OpenShopInv("mafia")
    
    
                    end
    
                end
    
            end]]

            if letSleep then

                Citizen.Wait(500)
    
            end
		else
			Citizen.Wait(1500)
        end
    end
end)

function OpenShopInv(shoptype)
    text = "MINIMARKET"
    data = {text = text}
    inventory = {}

    ESX.TriggerServerCallback("suku:getShopItems", function(shopInv)
        for i = 1, #shopInv, 1 do
            table.insert(inventory, shopInv[i])
        end
    end, shoptype)

    Citizen.Wait(1000)
    TriggerEvent("esx_inventoryhud:openShopInventory", data, inventory)
end

RegisterNetEvent("suku:OpenCustomShopInventory")
AddEventHandler("suku:OpenCustomShopInventory", function(type, shopinventory)
    text = "MINIMARKET"
    data = {text = text}
    inventory = {}

    ESX.TriggerServerCallback("suku:getCustomShopItems", function(shopInv)
        for i = 1, #shopInv, 1 do
            table.insert(inventory, shopInv[i])
        end
    end, type, shopinventory)
    Citizen.Wait(500)

    TriggerEvent("esx_inventoryhud:openShopInventory", data, inventory)
end)

RegisterNetEvent("esx_inventoryhud:openShopInventory")
AddEventHandler("esx_inventoryhud:openShopInventory", function(data, inventory)
        setShopInventoryData(data, inventory, weapons)
        openShopInventory()
end)

function setShopInventoryData(data, inventory)
    shopData = data

    SendNUIMessage(
        {
            action = "setInfoText",
            text = data.text
        }
    )

    items = {}

    SendNUIMessage(
        {
            action = "setShopInventoryItems",
            itemList = inventory
        }
    )
end

function openShopInventory()
    loadPlayerInventory()
    isInInventory = true

    SendNUIMessage(
        {
            action = "display",
            type = "shop"
        }
    )

    SetNuiFocus(true, true)
end

RegisterNUICallback("TakeFromShop", function(data, cb)
        if IsPedSittingInAnyVehicle(playerPed) then
            return
        end

        if type(data.number) == "number" and math.floor(data.number) == data.number then
            TriggerServerEvent("suku:SellItemToPlayer", GetPlayerServerId(PlayerId()), data.item.type, data.item.name, tonumber(data.number))
        end

        Wait(150)
        loadPlayerInventory()

        cb("ok")
    end
)

RegisterNetEvent("suku:AddAmmoToWeapon")
AddEventHandler("suku:AddAmmoToWeapon", function(hash, amount)
    AddAmmoToPed(GetPlayerPed(-1), hash, amount)
end)

--[[function IsInRegularShopZone(coords)
    RegularShop = Config.Shops.RegularShop.Locations
    for i = 1, #RegularShop, 1 do
        if GetDistanceBetweenCoords(coords, RegularShop[i].x, RegularShop[i].y, RegularShop[i].z, true) < 1.5 then
            return true
        end
    end
    return false
end]]

function IsInRobsLiquorZone(coords)
    RobsLiquor = Config.Shops.RobsLiquor.Locations
    for i = 1, #RobsLiquor, 1 do
        if GetDistanceBetweenCoords(coords, RobsLiquor[i].x, RobsLiquor[i].y, RobsLiquor[i].z, true) < 1.5 then
            return true
        end
    end
    return false
end

function IsInEmsZone(coords)
    Ems = Config.Shops.Ems.Locations
    for i = 1, #Ems, 1 do
        if GetDistanceBetweenCoords(coords, Ems[i].x, Ems[i].y, Ems[i].z, true) < 1.5 then
            return true
        end
    end
    return false
end

function IsInTraiZone(coords)
    Trai = Config.Shops.Trai.Locations
    for i = 1, #Trai, 1 do
        if GetDistanceBetweenCoords(coords, Trai[i].x, Trai[i].y, Trai[i].z, true) < 1.5 then
            return true
        end
    end
    return false
end

function IsInMekaZone(coords)
    Meka = Config.Shops.Meka.Locations
    for i = 1, #Meka, 1 do
        if GetDistanceBetweenCoords(coords, Meka[i].x, Meka[i].y, Meka[i].z, true) < 1.5 then
            return true
        end
    end
    return false
end

function IsInMafiaZone(coords)
    Mafia = Config.Shops.Mafia.Locations
    for i = 1, #Mafia, 1 do
        if GetDistanceBetweenCoords(coords, Mafia[i].x, Mafia[i].y, Mafia[i].z, true) < 1.5 then
            return true
        end
    end
    return false
end

function IsInWeaponShopZone(coords)
    WeaponShop = Config.Shops.WeaponShop.Locations
    for i = 1, #WeaponShop, 1 do
        if GetDistanceBetweenCoords(coords, WeaponShop[i].x, WeaponShop[i].y, WeaponShop[i].z, true) < 1.5 then
            return true
        end
    end
    return false
end

function IsInWeaponShopZone2(coords)
    WeaponShop2 = Config.Shops.WeaponShop.Locations
    for i = 1, #WeaponShop2, 1 do
        if GetDistanceBetweenCoords(coords, WeaponShop2[i].x, WeaponShop2[i].y, WeaponShop2[i].z, true) < 1.5 then
            return true
        end
    end
    return false
end

--[[Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        player = GetPlayerPed(-1)
        coords = GetEntityCoords(player)

        if GetDistanceBetweenCoords(coords, Config.WeaponLiscence.x, Config.WeaponLiscence.y, Config.WeaponLiscence.z, true) < 6.0 then
            DrawMarker(20, Config.WeaponLiscence.x, Config.WeaponLiscence.y, Config.WeaponLiscence.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, Config.MarkerSize.x, Config.MarkerSize.y, Config.MarkerSize.z, Config.MarkerColor.r, Config.MarkerColor.g, Config.MarkerColor.b, 100, false, true, 2, false, nil, nil, false)
            if IsControlJustReleased(0, Keys["E"]) then
                if Licenses['weapon'] == nil then
                    OpenBuyLicenseMenu()
                else
                    exports.pNotify:SendNotification({text = "Kamu tidak memiliki akses", type = "error", timeout = 200, layout = "centerLeft", queue = "left"})
                end
            end
        end
    end
end)]]


RegisterNetEvent('suku:GetLicenses')
AddEventHandler('suku:GetLicenses', function (licenses)
    for i = 1, #licenses, 1 do
        Licenses[licenses[i].type] = true
    end
end)

function OpenBuyLicenseMenu()
    ESX.UI.Menu.CloseAll()
    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'shop_license',{
        title = 'Beli lisensi?', --Register a License
        elements = {
          { label = 'Ya' ..' (Rp.' .. Config.LicensePrice ..')', value = 'yes' }, --yes
          { label = 'Tidak', value = 'no' },
        }
      },
      function (data, menu)
        if data.current.value == 'yes' then
            TriggerServerEvent('suku:buyLicense')
        end
        menu.close()
    end,
    function (data, menu)
        menu.close()
    end)
end

--[[
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        player = GetPlayerPed(-1)
        coords = GetEntityCoords(player)

        for k, v in pairs(Config.Shops.RegularShop.Locations) do
            if GetDistanceBetweenCoords(coords, Config.Shops.RegularShop.Locations[k].x, Config.Shops.RegularShop.Locations[k].y, Config.Shops.RegularShop.Locations[k].z, true) < 12.0 then
                DrawText3D(Config.Shops.RegularShop.Locations[k].x, Config.Shops.RegularShop.Locations[k].y, Config.Shops.RegularShop.Locations[k].z, "Tekan [E] Untuk Membuka Menu")
                --rawMarker(27,Config.Shops.RegularShop.Locations[k].x, Config.Shops.RegularShop.Locations[k].y, Config.Shops.RegularShop.Locations[k].z-0.9, 0, 0, 0, 0, 0, 0, 1.0, 1.0 , 1.0 , 0, 55, 255, 55 ,0 ,0 , 2, 0 ,0, 0, 0)
            end
        end

        for k, v in pairs(Config.Shops.RobsLiquor.Locations) do
            if GetDistanceBetweenCoords(coords, Config.Shops.RobsLiquor.Locations[k].x, Config.Shops.RobsLiquor.Locations[k].y, Config.Shops.RobsLiquor.Locations[k].z, true) < 12.0 then
                DrawText3D(Config.Shops.RobsLiquor.Locations[k].x, Config.Shops.RobsLiquor.Locations[k].y, Config.Shops.RobsLiquor.Locations[k].z, "Tekan [E] Untuk Membuka Menu")
               -- DrawMarker(27,Config.Shops.RobsLiquor.Locations[k].x, Config.Shops.RobsLiquor.Locations[k].y, Config.Shops.RobsLiquor.Locations[k].z-0.7, 0, 0, 0, 0, 0, 0, 1.0, 1.0 , 1.0 , 0, 55, 255, 55 ,0 ,0 , 2, 0 ,0, 0, 0)
            end
        end

        for k, v in pairs(Config.Shops.Ems.Locations) do
            if GetDistanceBetweenCoords(coords, Config.Shops.Ems.Locations[k].x, Config.Shops.Ems.Locations[k].y, Config.Shops.Ems.Locations[k].z, true) < 12.0 then
                DrawText3D(Config.Shops.Ems.Locations[k].x, Config.Shops.Ems.Locations[k].y, Config.Shops.Ems.Locations[k].z, "Tekan [E] Untuk Membuka Menu")
                --DrawMarker(27,Config.Shops.Ems.Locations[k].x, Config.Shops.Ems.Locations[k].y, Config.Shops.Ems.Locations[k].z-0.7, 0, 0, 0, 0, 0, 0, 1.0, 1.0 , 1.0 , 0, 55, 255, 55 ,0 ,0 , 2, 0 ,0, 0, 0)
            end
        end

        for k, v in pairs(Config.Shops.Trai.Locations) do
            if GetDistanceBetweenCoords(coords, Config.Shops.Trai.Locations[k].x, Config.Shops.Trai.Locations[k].y, Config.Shops.Trai.Locations[k].z, true) < 12.0 then
                DrawText3D(Config.Shops.Trai.Locations[k].x, Config.Shops.Trai.Locations[k].y, Config.Shops.Trai.Locations[k].z, "Tekan [E] Untuk Membuka Menu")
                --DrawMarker(27,Config.Shops.Trai.Locations[k].x, Config.Shops.Trai.Locations[k].y, Config.Shops.Trai.Locations[k].z-0.7, 0, 0, 0, 0, 0, 0, 1.0, 1.0 , 1.0 , 0, 55, 255, 55 ,0 ,0 , 2, 0 ,0, 0, 0)
            end
        end

        for k, v in pairs(Config.Shops.Mafia.Locations) do
            if GetDistanceBetweenCoords(coords, Config.Shops.Mafia.Locations[k].x, Config.Shops.Mafia.Locations[k].y, Config.Shops.Mafia.Locations[k].z, true) < 12.0 then
                DrawText3D(Config.Shops.Mafia.Locations[k].x, Config.Shops.Mafia.Locations[k].y, Config.Shops.Mafia.Locations[k].z, "Tekan [E] Untuk Membuka Menu")
               -- DrawMarker(27,Config.Shops.Mafia.Locations[k].x, Config.Shops.Mafia.Locations[k].y, Config.Shops.Mafia.Locations[k].z-0.7, 0, 0, 0, 0, 0, 0, 1.0, 1.0 , 1.0 , 0, 55, 255, 55 ,0 ,0 , 2, 0 ,0, 0, 0)
            end
        end

        for k, v in pairs(Config.Shops.WeaponShop.Locations) do
            if GetDistanceBetweenCoords(coords, Config.Shops.WeaponShop.Locations[k].x, Config.Shops.WeaponShop.Locations[k].y, Config.Shops.WeaponShop.Locations[k].z, true) < 12.0 then
                DrawText3D(Config.Shops.WeaponShop.Locations[k].x, Config.Shops.WeaponShop.Locations[k].y, Config.Shops.WeaponShop.Locations[k].z, "Tekan [E] Untuk Membuka Menu")
               -- DrawMarker(27,Config.Shops.WeaponShop.Locations[k].x, Config.Shops.WeaponShop.Locations[k].y, Config.Shops.WeaponShop.Locations[k].z-0.7, 0, 0, 0, 0, 0, 0, 1.0, 1.0 , 1.0 , 0, 55, 255, 55 ,0 ,0 , 2, 0 ,0, 0, 0)
            end
        end

        for k, v in pairs(Config.Shops.WeaponShop2.Locations) do
            if GetDistanceBetweenCoords(coords, Config.Shops.WeaponShop2.Locations[k].x, Config.Shops.WeaponShop2.Locations[k].y, Config.Shops.WeaponShop2.Locations[k].z, true) < 12.0 then
                DrawText3D(Config.Shops.WeaponShop2.Locations[k].x, Config.Shops.WeaponShop2.Locations[k].y, Config.Shops.WeaponShop2.Locations[k].z, "Tekan [E] Untuk Membuka Menu")
               -- DrawMarker(27,Config.Shops.WeaponShop.Locations[k].x, Config.Shops.WeaponShop.Locations[k].y, Config.Shops.WeaponShop.Locations[k].z-0.7, 0, 0, 0, 0, 0, 0, 1.0, 1.0 , 1.0 , 0, 55, 255, 55 ,0 ,0 , 2, 0 ,0, 0, 0)
            end
        end
    end
end)]]

Citizen.CreateThread(function()
    while true do
        Player = nil
        Citizen.Wait(0)
        local playerCoords = GetEntityCoords(PlayerPedId())
        local isInMarker, letSleep, currentZone = false, false
        for k,v in pairs(Config.Shops) do
            for i = 1, #v.Locations, 1 do
                local distance = GetDistanceBetweenCoords(playerCoords, v.Locations[i].x, v.Locations[i].y, v.Locations[i].z, true)
                if distance <  1.5 then
                    letSleep = false
                    if distance < Config.MarkerSize.x then
                        isInMarker  = true
                        currentZone = k
                        lastZone    = k
                    end
                end
            end
        end
        if isInMarker and not hasAlreadyEnteredMarker then
            hasAlreadyEnteredMarker = true
            TriggerEvent('suku:hasEnteredMarker', currentZone)
        end
        if not isInMarker and hasAlreadyEnteredMarker then
            hasAlreadyEnteredMarker = false
            TriggerEvent('suku:hasExitedMarker', lastZone)
        end
        if letSleep then
            Citizen.Wait(500)
        end
    end
end)

AddEventHandler('suku:hasEnteredMarker', function(zone)
    currentAction     = 'shop_menu'
    currentActionMsg  = _U('shop_press_menu')
    currentActionData = {zone = zone}
end)

AddEventHandler('suku:hasExitedMarker', function(zone)
    SendNUIMessage({
        display = false,
        clear = true
    })
    currentAction = false
    SetNuiFocus(false, false)
end)


Citizen.CreateThread(function()


    for k, v in pairs(Config.Shops.WeaponShop.Locations) do

        CreateBlip(vector3(Config.Shops.WeaponShop.Locations[k].x, Config.Shops.WeaponShop.Locations[k].y, Config.Shops.WeaponShop.Locations[k].z ), "Toko Senjata", 3.0, 81, 110)

    end

end)

function CreateBlip(coords, text, radius, color, sprite)
    local blip = AddBlipForCoord(coords)
    SetBlipSprite(blip, sprite)
    SetBlipColour(blip, color)
    SetBlipScale(blip, 0.7)
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(text)
    EndTextCommandSetBlipName(blip)
end

function DrawText3D(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 370
    DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 41, 11, 41, 68)
end

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
  PlayerData.job = job
end)