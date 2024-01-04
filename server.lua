AddEventHandler("ND:characterLoaded", function(character)
    local src = source
    exports["npwd"]:unloadPlayer(src)
    local license = character.identifiers.license
    local phonenumber = player.getMetadata("phonenumber")
    if not phonenumber then
        phonenumber = exports.npwd:generatePhoneNumber()
        player.setMetadata("phonenumber", phonenumber)
    end
    exports["npwd"]:newPlayer({
        source = src,
        identifier = license,
        firstname = player.firstname,
        lastname = player.lastname,
        phoneNumber = phonenumber
    })
end)
