# Relacje między kontenerami Pact
pactapp.apppact -> pactapp.dbpact "Zapisuje i odczytuje dane"

# Integracja z infrastrukturą (VIP)
pactapp.apppact -> pactvip.vippact1 "Obsługuje ruch przez VIP 1"
pactapp.apppact -> pactvip.vippact2 "Obsługuje ruch przez VIP 2"
