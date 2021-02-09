local string = "Scriptul a fost executat cu succes!"
local pName = GetPlayerName(PlayerId())

--GetPlayerName(id) este o functie care merge atat server-side, cat si client-side.
--PlayerId() functioneaza doar client-side, si va returna mereu id-ul clientului.

RegisterCommand("test", function() --Sintaxa pentru a crea o comanda.
    print("Salut, " ..pName.. "! " ..string)
end)