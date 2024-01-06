local phone = exports.npwd

exports("pay", function(source, response, amount)
    local player = NDCore.getPlayer(source)
    return player and player.deductMoney("bank", amount, "Phone pay")
end)

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
        firstname = character.firstname,
        lastname = character.lastname,
        phoneNumber = character.getMetadata("phonenumber") or createPhoneNumber(character)
    })
end)
