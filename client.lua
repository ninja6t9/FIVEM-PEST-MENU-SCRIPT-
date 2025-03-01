local pet = nil

RegisterCommand("spawnpet", function(source, args)
    local model = args[1] or "a_c_retriever"
    local playerCoords = GetEntityCoords(playerPed)

    -- pet modle
    RequestModel(model)
    while not HasModelLoaded(model) do
        Wait(500)
    end

    -- pet spown
    pet = CreatePed(28, model, playerCoords.x + 1.5, playerCoords.y, playerCoords.z, 0.0, true, true)

    SetEntityAsMissionEntity(pet, true, true)
    TaskFollowToOffsetOfEntity(pet, playerPed, 1.5, 1.5, 0.0, 5.0, -1, 2.0, true)
    SetPedCanBeTargetted(pet, false)

    print("Pet spawned: " .. model)
end, false)
