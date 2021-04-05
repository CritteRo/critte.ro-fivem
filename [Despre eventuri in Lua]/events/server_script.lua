RegisterNetEvent('test.event') --eventul "test.event" este inregistrat, si poate fi chemat din client.

TriggerEvent('test.event') --apelam la 'test.event'. Acesta va activa toate handle-urile cu ID-ul respectiv.

AddEventHandler('test.event', function(arg1, arg2) -- 'test.event' este ID-ul eventului.
    --'args1' si 'args2' pot fi folosite ca input-uri pentru functie.
    print('Eventul a fost accesat.')
    --Aici poate intra orice cod.
end)