RegisterCommand("servertest", function(source, args)
    local src = source --rezulta id-ul jucatorului care a efectuat comanda.
    local _nume = GetPlayerName(src) --rezulta numele jucatorului care a efectuat comanda.
    local _mesaj = "Chat-ul a fost curat!"
    TriggerClientEvent("chat:clear", -1) --curata chat-ul tuturor jucatorilor online.
    TriggerClientEvent('chat:addMessage', -1, {
        color = { 255, 0, 0}, --culoarea autorului.
        multiline = true,
        args = {_nume, _mesaj}
      }) --trimite un mesaj tuturor jucatorilor.
end, false)