local serverCount = 0 --variabila server-side. Nu poate fi accesata de catre client.

AddEventHandler("playerConnecting", function(name, setKickReason, deferrals) --functia ruleaza de fiecare data cand un jucator vrea sa se conecteze.
    print(name .. " se conecteaza pe server...") -- "name" este numele jucatorului. Print-ul poate fi vazut doar din consola server-ului.
    
    serverCount = serverCount + 1 -- de fiecare data cand se conecteaza un jucator, "serverCount" creste cu 1
    
    print("S-au conectat " ..serverCount.. " jucatori de la ultimul restart.") --O sa arate "serverCount" pe consola serverului.
end)
