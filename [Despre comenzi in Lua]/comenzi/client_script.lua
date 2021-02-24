function chatMessage(_autor, _mesaj, _r, _g, _b) --functie necesara pentru a trimite mesaje pe chat. Functioneaza doar cu chat-ul default al FiveM-ului.
    TriggerEvent('chat:addMessage', {
        color = { _r, _g, _b}, --culoarea autorului.
        multiline = true,
        args = {_autor, _mesaj}
      })
end


RegisterCommand("coords", function(source, args)
    coords = GetEntityCoords(PlayerPedId()) -- = {float x, float y, float z} -- o sa rezulte un tabel cu coordonatele X, Y si Z ale PlayerPedId(), adica a playerului.
    rotaion = GetEntityRotation(PlayerPedId()) -- = {float x, float y, float z} -- rezulta rotatia player-ului, in X, Y si Z.
    heading = GetEntityHeading(PlayerPedId()) -- = float -- rezulta heading-ul player-ului.
    chatMessage("COORONATE", string.format("x: %f | y: %f | z:%f | heading: %f", coords.x,coords.y,coords.z, heading), 255, 255, 255) -- transcrie coordonatele in chat.
    chatMessage("ROTATIE", string.format("x: %f | y: %f | z:%f", rotaion.x,rotaion.y,rotaion.z), 255, 255, 255) --transcrie rotatia in chat.
end, false)