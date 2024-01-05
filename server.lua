local phone = exports.npwd

local function createPhoneNumber(player)
    local phoneNumber = phone:generatePhoneNumber()
    player.setMetadata("phonenumber", phoneNumber)
    return phoneNumber
end

AddEventHandler("ND:characterLoaded", function(character)
    local src = character.source
    MySQL.query.await("UPDATE nd_characters SET phone_number = ? WHERE identifier = ?", {character.getMetadata("phonenumber") or createPhoneNumber(character), character.identifier})
    phone:newPlayer({
        source = src,
        identifier = character.identifier,
        firstname = character.firstname,
        lastname = character.lastname,
        phoneNumber = character.getMetadata("phonenumber") or createPhoneNumber(character)
    })
end)
