AddEventHandler("ND:characterLoaded", function(character)
    TriggerServerEvent("ND_npwd:refresh", character.id)
    print(character.id)
end)
