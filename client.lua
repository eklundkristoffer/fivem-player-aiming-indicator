function drawIsAimingIndicator()
    local pedCoords = GetEntityCoords(PlayerPedId())
    local scale = {x = 1.0, y = 1.0, z = 1.0 }
    local color = {r = 255, g = 0, b = 0, alpha = 50}
    DrawMarker(27, pedCoords.x, pedCoords.y, pedCoords.z - 0.97, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, scale.x, scale.y, scale.z, color.r, color.g, color.b, color.alpha, false, true, 2, nil, nil, false)
end

CreateThread(function()
    while true do
        Wait(0)

        if (IsControlPressed(0, 68)) then
            drawIsAimingIndicator()
        end
    end
end)