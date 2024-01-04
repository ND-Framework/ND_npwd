local phone = exports.npwd

local function createPhoneNumber(player)
    local phoneNumber = phone:generatePhoneNumber()
    player.setMetadata("phonenumber", phoneNumber)
    return phoneNumber
end

AddEventHandler("ND:characterLoaded", function(character)
    local src = character.source
    phone:unloadPlayer(src)
    MySQL.query.await("UPDATE nd_characters SET phone_number = ? WHERE character_id = ?", {character.getMetadata("phonenumber") or createPhoneNumber(character), character.id})
    phone:newPlayer({
        source = src,
        identifier = character.id,
        firstname = player.firstname,
        lastname = player.lastname,
        phoneNumber = character.getMetadata("phonenumber") or createPhoneNumber(character)
    })
end)
