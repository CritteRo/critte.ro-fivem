RegisterNetEvent('server.event') --eventul 'server.event' este inregistrat, si poate fi chemat din client.

TriggerEvent('server.event') --apelam la 'server.event'. Acesta va activa toate handle-urile cu ID-ul respectiv.

AddEventHandler('server.event', function(arg1, arg2) -- 'server.event' este ID-ul eventului.
    local src = source --source este o variabila specifica serverului. Ea este egala cu ID-ul playerului care a apelat la event. 0 = Consola
    --'args1' si 'args2' pot fi folosite ca input-uri pentru functie.
    print('Eventul a fost accesat.')
    --Aici poate intra orice cod.
end)

RegisterCommand('cevent', function(source, args)
    local src = source --source este o variabila specifica serverului. Ea este egala cu ID-ul playerului care a apelat la event. 0 = Consola
    TriggerClientEvent('client.event', src) --apelam la 'client.event' client-side. Este necesar sa precizam ID-ul clientului; 'src' in cazul asta.
end)