RegisterNetEvent("esx_inventoryhud:openAmbulanceInventory")
AddEventHandler(
    "esx_inventoryhud:openAmbulanceInventory",
    function(data)
        setPropertyAmbulanceData(data)
        openAmbulanceInventory()
    end
)

function refreshPropertyAmbulanceInventory()
    ESX.TriggerServerCallback(
        "esx_inventoryhud:getAmbulanceInventory",
        function(inventory)
            setPropertyAmbulanceData(inventory)
        end
    )
end

function setPropertyAmbulanceData(data)
    items = {}

    SendNUIMessage(
                {
                    action = "setInfoText",
                    text = "Ambulance Inventory"
                }
            )

    local blackMoney = data.blackMoney
    local cashMoney = data.money
    local propertyItems = data.items
    local propertyWeapons = data.weapons

    if blackMoney > 0 then
        accountData = {
            label = _U("black_money"),
            count = blackMoney,
            type = "item_account",
            name = "black_money",
            usable = false,
            rare = false,
            weight = -1,
            canRemove = false
        }
        table.insert(items, accountData)
    end

    if cashMoney > 0 then
        accountData = {
            label = _U("cash"),
            count = cashMoney,
            type = "item_money",
            name = "cash",
            usable = false,
            rare = false,
            weight = -1,
            canRemove = false
        }
        table.insert(items, accountData)
    end

    for i = 1, #propertyItems, 1 do
        local item = propertyItems[i]

        if item.count > 0 then
            item.type = "item_standard"
            item.usable = false
            item.rare = false
            item.weight = -1
            item.canRemove = false

            table.insert(items, item)
        end
    end

    for i = 1, #propertyWeapons, 1 do
        local weapon = propertyWeapons[i]

        if propertyWeapons[i].name ~= "WEAPON_UNARMED" then
            table.insert(
                items,
                {
                    label = ESX.GetWeaponLabel(weapon.name),
                    count = weapon.ammo,
                    weight = -1,
                    type = "item_weapon",
                    name = weapon.name,
                    usable = false,
                    rare = false,
                    canRemove = false
                }
            )
        end
    end

    SendNUIMessage(
        {
            action = "setSecondInventoryItems",
            itemList = items
        }
    )
end

function openAmbulanceInventory()
    loadPlayerInventory()
    isInInventory = true

    SendNUIMessage(
        {
            action = "display",
            type = "ambulance"
        }
    )

    SetNuiFocus(true, true)
end

RegisterNUICallback(
    "PutIntoAmbulance",
    function(data, cb)
        if IsPedSittingInAnyVehicle(playerPed) then
            return
        end

        if type(data.number) == "number" and math.floor(data.number) == data.number then
            local count = tonumber(data.number)

            if data.item.type == "item_weapon" then
                count = GetAmmoInPedWeapon(PlayerPedId(), GetHashKey(data.item.name))
            end

            TriggerServerEvent("esx_ambulancejob:putItem", data.item.type, data.item.name, count)
        end

        Wait(150)
        refreshPropertyAmbulanceInventory()
        Wait(150)
        loadPlayerInventory()

        cb("ok")
    end
)

RegisterNUICallback(
    "TakeFromAmbulance",
    function(data, cb)
        if IsPedSittingInAnyVehicle(playerPed) then
            return
        end

        if type(data.number) == "number" and math.floor(data.number) == data.number then
            TriggerServerEvent("esx_ambulancejob:getItem", data.item.type, data.item.name, tonumber(data.number))
        end

        Wait(150)
        refreshPropertyMotelInventory()
        Wait(150)
        loadPlayerInventory()

        cb("ok")
    end
)
