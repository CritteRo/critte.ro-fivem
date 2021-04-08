RegisterNetEvent('client.event') --eventul 'client.event' este inregistrat, si poate fi chemat din client.

TriggerEvent('client.event') --apelam la 'client.event'. Acesta va activa toate handle-urile cu ID-ul respectiv.

AddEventHandler('client.event', function(arg1, arg2) -- 'client.event' este ID-ul eventului.
    --'args1' si 'args2' pot fi folosite ca input-uri pentru functie.
    print('Eventul a fost accesat.')
    --Aici poate intra orice cod.
end)

RegisterCommand('sevent', function()
    TriggerServerEvent('server.event') --apelam la 'server.event' server-side. Acesta va activa toate handle-urile cu ID-ul respectiv.
end)
