RegisterNetEvent("esx_inventoryhud:openGudangInventory")
AddEventHandler(
    "esx_inventoryhud:openGudangInventory",
    function(data)
        setPropertyGudangData(data)
        openGudangInventory()
    end
)

function refreshPropertyGudangInventory()
    ESX.TriggerServerCallback("girp_vault:getPropertyInventory", function(inventory)
		setPropertyGudangData(inventory)
	end, ESX.GetPlayerData().identifier, currentGudang)
end

function setPropertyGudangData(data)

    items = {}
	currentGudang = data.stash_name
    SendNUIMessage(
                {
                    action = "setInfoText",
                    text = data.stash_name .." - Gudang"
                }
            )

    local blackMoney = data.blackMoney
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

function openGudangInventory()
    loadPlayerInventory()
    isInInventory = true

    SendNUIMessage(
        {
            action = "display",
            type = "gudang"
        }
    )

    SetNuiFocus(true, true)
end

RegisterNUICallback(
    "PutIntoGudang",
    function(data, cb)
        if IsPedSittingInAnyVehicle(playerPed) then
            return
        end

        if type(data.number) == "number" and math.floor(data.number) == data.number then
            local count = tonumber(data.number)

            if data.item.type == "item_weapon" then
                count = GetAmmoInPedWeapon(PlayerPedId(), GetHashKey(data.item.name))
            end

            TriggerServerEvent("girp_vault:putItem", ESX.GetPlayerData().identifier, data.item.type, data.item.name, count, currentGudang)
        end

        Wait(150)
        refreshPropertyGudangInventory()
        Wait(150)
        loadPlayerInventory()

        cb("ok")
    end
)

RegisterNUICallback(
    "TakeFromGudang",
    function(data, cb)
        if IsPedSittingInAnyVehicle(playerPed) then
            return
        end

        if type(data.number) == "number" and math.floor(data.number) == data.number then
            TriggerServerEvent("girp_vault:getItem", ESX.GetPlayerData().identifier, data.item.type, data.item.name, tonumber(data.number), currentGudang)
        end

        Wait(150)
        refreshPropertyGudangInventory()
        Wait(150)
        loadPlayerInventory()

        cb("ok")
    end
)
