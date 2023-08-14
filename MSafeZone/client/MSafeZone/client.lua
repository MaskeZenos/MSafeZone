ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	ESX.PlayerData = xPlayer
end)


RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
end)


Citizen.CreateThread(function()
    
    while true do
        Citizen.Wait(0)
        local playerPos = GetEntityCoords(GetPlayerPed(-1), true)
        local inSafeZone = false
        for _, safezone in pairs(SafeZoneList) do
            for _, zone in pairs(safezone) do
                if Debug == true then
                  DrawMarker(1, zone.x, zone.y, zone.z - 1.0, 0, 0, 0, 0, 0, 0, zone.radius * 2.0, zone.radius * 2.0, 0.5, 0, 255, 0, 100, false, true, 2, false, false, false, false)
                end 
                if GetDistanceBetweenCoords(playerPos.x, playerPos.y, playerPos.z, zone.x, zone.y, zone.z, true) < zone.radius then
                    inSafeZone = true
                end
            end
        end

        if inSafeZone then
            InSafeZone()
        else
            OutSafeZone()
        end
    end
end)

function InSafeZone()
    for _, job in pairs(ByPassJob) do
        if ESX.PlayerData.job.name == job then
            return
        end
    end
    if IsPedArmed(GetPlayerPed(-1), 7) then
        SetCurrentPedWeapon(GetPlayerPed(-1), GetHashKey("WEAPON_UNARMED"), true)        
    end

    DisableControlAction(0, 45, true)
    DisableControlAction(0, 140, true)
    DisableControlAction(0, 142, true)

    if IsDisabledControlJustPressed(0, 45) or IsDisabledControlJustPressed(0, 140) or IsDisabledControlJustPressed(0, 142) then
        ESX.ShowNotification("~r~Vous ne pouvez pas faire ça ici !")
    end
end 

function OutSafeZone()
    EnableControlAction(0, 45, true)
    EnableControlAction(0, 140, true)
    EnableControlAction(0, 142, true)
end