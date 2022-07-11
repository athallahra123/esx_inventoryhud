RegisterNetEvent('lucky_inventory:openPedagangInventory')
AddEventHandler('lucky_inventory:openPedagangInventory', function(data)
    setPedagangInventoryDataInv(data)
    openPedagangInventoryInv()
end)

function refreshPedagangInventory()
    ESX.TriggerServerCallback('lucky_inventory:getPedagangInventory', function(inventory)
        setPedagangInventoryDataInv(inventory)
    end)
end

function setPedagangInventoryDataInv(data)
    items = {}

    local propertyItems = data.items

    for i = 1, #propertyItems, 1 do
        local item = propertyItems[i]

        if item.count > 0 then
            item.type = "item_standard"
            item.usable = true
            item.rare = true
            item.weight = -1
            item.canRemove = true

            table.insert(items, item)
        end
    end

    SendNUIMessage(
        {
            action = "setSecondInventoryItems",
            itemList = items
        }
    )
end

function openPedagangInventoryInv()
    loadPlayerInventory()
    isInInventory = true
    Citizen.Wait(500)
    SendNUIMessage(
        {
            action = "display",
            type = "pedagang"
        }
    )

    SetNuiFocus(true, true)
end

RegisterNUICallback("PutIntoPedagang", function(data, cb)
    if IsPedSittingInAnyVehicle(playerPed) then
        return
    end

    if type(data.number) == "number" and math.floor(data.number) == data.number then
        local count = tonumber(data.number)

        if data.item.type == "item_weapon" then
            count = GetAmmoInPedWeapon(PlayerPedId(), GetHashKey(data.item.name))
        end

        TriggerServerEvent('lucky_inventory:putItemPedagang', data.item.type, data.item.name, count)
    end

    Wait(150)
    refreshPedagangInventory()
    Wait(150)
    loadPlayerInventory()

    cb("ok")
end)

RegisterNUICallback("TakeFromPedagang", function(data, cb)
    if IsPedSittingInAnyVehicle(playerPed) then
        return
    end

    if type(data.number) == "number" and math.floor(data.number) == data.number then
        TriggerServerEvent('lucky_inventory:getItemPedagang', data.item.type, data.item.name, tonumber(data.number))
    end

    Wait(150)
    refreshPedagangInventory()
    Wait(150)
    loadPlayerInventory()

    cb("ok")
end)