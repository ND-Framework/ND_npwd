RegisterNetEvent("ND_npwd:refresh", function()
    local src = source
    local player = NDCore.getPlayer(source)
    exports["npwd"]:unloadPlayer(src)
    local license = player.identifiers.license
    local phoneNumber = player.phoneNumber
    if not phoneNumber then
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
