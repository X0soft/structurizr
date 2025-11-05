# kontenery
sonarqubeapp.appsonarqube -> sonarqubeapp.dbsonarqube "Zapytania"
sonarqubeapp.appsonarqube -> sonarqubeapp.elksonarqube "Search"
sonarqubescanner.scannersonarqube -> sonarqubeapp.appsonarqube "Wysyła wyniki analizy"
sonarqubeapp.appsonarqube -> sonarqubescanner.scannersonarqube "Zleca analizę kodu"

// # Integracja z systemami zewnętrznymi
// sonarqubeapp.appsonarqube -> systemjira.jira "Integracja z Jira"
// sonarqubeapp.appsonarqube -> systemgrafana.grafana "Integracja z Grafana"
// sonarqubeapp.appsonarqube -> systemsplunk.splunk "Wysyła logi"
// sonarqubeapp.appsonarqube -> systemzabbix.globallzabbix "Wysyła metryki do Zabbix"
// sonarqubeapp.appsonarqube -> systemprometheus.prometheus "Wysyła metryki do Prometheus"


// # Integracja z infrastrukturą
// sonarqubeapp.appsonarqube -> sonarqubevip.vipsonarqube1 "Obsługuje ruch przez VIP 1"
// sonarqubeapp.appsonarqube -> sonarqubevip.vipsonarqube2 "Obsługuje ruch przez VIP 2"