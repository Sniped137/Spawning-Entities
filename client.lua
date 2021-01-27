RegisterCommand('vehicle', function(source, args) --/vehicle adder
    local car = args[1]
    local playerSrc = PlayerPedId()
    RequestModel(GetHashKey(car))
    While not HasModelLoaded(car) do
        Citizen.Wait(1)
        RequestModel(car)
    end
    local x, y, z = table.unpack(GetEntityCoords(playerSrc()))
    CreateVehicle(car, x, y + 2 , z + 0.25, GetEntityHeading(playerSrc), true, false)
end)
