# Relacje między kontenerami Bitbucket
bitbucket.appbitbucket -> bitbucket.dbbitbucket "Zapisuje i odczytuje dane"
bitbucket.appbitbucket -> bitbucket.opsbitbucket "Wysyła ruch przez proxy"
bitbucket.opsbitbucket -> bitbucket.appbitbucket "Przekazuje żądania do aplikacji"

# Przykładowa integracja z systemami zewnętrznymi
bitbucket.appbitbucket -> systemjira.jira "Integracja z Jira"
bitbucket.appbitbucket -> systemgrafana.grafana "Integracja z Grafana"
bitbucket.appbitbucket -> systemsplunk.splunk "Wysyła logi"
bitbucket.appbitbucket -> systemzabbix.globallzabbix "Wysyła metryki do Zabbix"
bitbucket.appbitbucket -> systemprometheus.prometheus "Wysyła metryki do Prometheus"
bitbucket.appbitbucket -> systemalerta.alerta "Wysyła alerty do Alerta"
# Relacje między systemami F5
artifactoryvip.vipartifactory1 -> bitbucket.appbitbucket "Ruch do Bitbucket przez VIP 1"
artifactoryvip.vipartifactory2 -> bitbucket.appbitbucket "Ruch do Bitbucket przez VIP 2"
