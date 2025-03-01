# FIVEM-PEST-MENU-SCRIPT-
soon


--[
    add this to client.lua add pet folow the player 
    
    RegisterCommand("petstay", function()
    if pet then
        ClearPedTasks(pet)
        print("Pet is staying in place.")
    end
end, false)

RegisterCommand("petfollow", function()
    if pet then
        local playerPed = PlayerPedId()
        TaskFollowToOffsetOfEntity(pet, playerPed, 1.5, 1.5, 0.0, 5.0, -1, 2.0, true)
        print("Pet is following you.")
    end
end, false)

RegisterCommand("deletepet", function()
    if pet then
        DeleteEntity(pet)
        pet = nil
        print("Pet deleted.")
    end
end, false)





]

--[
    
    add this to client.lua adding pet commands (Sit, Stay, Follow, Delete)


RegisterCommand("petstay", function()
    if pet then
        ClearPedTasks(pet)
        print("Pet is staying in place.")
    end
end, false)

RegisterCommand("petfollow", function()
    if pet then
        local playerPed = PlayerPedId()
        TaskFollowToOffsetOfEntity(pet, playerPed, 1.5, 1.5, 0.0, 5.0, -1, 2.0, true)
        print("Pet is following you.")
    end
end, false)

RegisterCommand("deletepet", function()
    if pet then
        DeleteEntity(pet)
        pet = nil
        print("Pet deleted.")
    end
end, false)

]