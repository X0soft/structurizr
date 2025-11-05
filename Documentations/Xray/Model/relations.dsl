# Relacje między kontenerami Xray
xrayapp.appxray -> xrayapp.dbxray "Zapisuje i odczytuje dane"

# Integracja z infrastrukturą (VIP)
xrayapp.appxray -> xrayvip.vipxray1 "Obsługuje ruch przez VIP 1"
xrayapp.appxray -> xrayvip.vipxray2 "Obsługuje ruch przez VIP 2"
