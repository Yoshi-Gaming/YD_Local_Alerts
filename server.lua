RegisterCommand("alert", function(source, args)
    if IsPlayerAceAllowed(source, "YD_Local_Alerts.trigger") then
        local radius = tonumber(args[1])
        local message = table.concat(args, " ", 2)
        local playerCoords = GetEntityCoords(GetPlayerPed(source))

        if radius and message and radius > 0 then
            TriggerClientEvent("YD_Local_Alerts:showAlert", -1, {
                x = playerCoords.x,
                y = playerCoords.y,
                z = playerCoords.z,
                radius = radius,
                message = message
            })
            print(string.format("[ALERT] Player %s triggered an alert: Radius = %.2f, Message = %s", GetPlayerName(source), radius, message))
        else
            TriggerClientEvent("chat:addMessage", source, {
                args = {"Usage", "/alert [radius] [message]"}
            })
        end
    else
        TriggerClientEvent("chat:addMessage", source, {
            args = {"Error", "You do not have permission to use this command."}
        })
    end
end)
