RegisterNetEvent("YD_Local_Alerts:showAlert")
AddEventHandler("YD_Local_Alerts:showAlert", function(alertData)
    -- Ensure radius is converted to a number
    local playerCoords = GetEntityCoords(PlayerPedId())
    local alertCoords = vector3(alertData.x, alertData.y, alertData.z)
    local radius = tonumber(alertData.radius)

    if radius and #(playerCoords - alertCoords) <= radius then
        SendNUIMessage({
            type = "showAlert",
            message = alertData.message
        })
    end
end)
