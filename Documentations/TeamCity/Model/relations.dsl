# Relacje między kontenerami TeamCity
teamcity.appteamcity -> teamcity.dbteamcity "Zapisuje i odczytuje dane"
teamcity.appteamcity -> teamcity.agentteamcity "Zleca zadania CI/CD"
teamcity.agentteamcity -> teamcity.appteamcity "Wysyła wyniki zadań"

# Integracja z infrastrukturą (VIP)
teamcity.appteamcity -> teamcityvip.vipteamcity1 "Obsługuje ruch przez VIP 1"
teamcity.appteamcity -> teamcityvip.vipteamcity2 "Obsługuje ruch przez VIP 2"

# Przykładowa integracja z systemami zewnętrznymi
teamcity.appteamcity -> systemjira.jira "Integracja z Jira"
teamcity.appteamcity -> systemgrafana.grafana "Integracja z Grafana"
teamcity.appteamcity -> systemsplunk.splunk "Wysyła logi"
teamcity.appteamcity -> systemzabbix.globallzabbix "Wysyła metryki do Zabbix"
teamcity.appteamcity -> systemprometheus.prometheus "Wysyła metryki do Prometheus"
teamcity.appteamcity -> systemalerta.alerta "Wysyła alerty do Alerta"   