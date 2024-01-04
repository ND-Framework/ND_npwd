local phone = exports.npwd

local function createPhoneNumber(player)
    local phoneNumber = phone:generatePhoneNumber()
    player.setMetadata("phonenumber", phoneNumber)
    return phoneNumber
end

AddEventHandler("ND:characterLoaded", function(character)
    local src = character.source
    phone:unloadPlayer(src)

    phone:newPlayer({
        source = src,
        identifier = character.id,
        firstname = player.firstname,
        lastname = player.lastname,
        phoneNumber = character.getMetadata("phonenumber") or createPhoneNumber(character)
    })
end)
